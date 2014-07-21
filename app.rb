require 'nokogiri'
require 'open-uri'
require_relative 'service/spider'
require_relative 'service/globo_spider'
require_relative 'service/globo_parsing'

links = GloboSpider.new("Neymar").search
links.each do |link|
  GloboParsing.visit_link(link)
end
