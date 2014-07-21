require 'nokogiri'
require 'open-uri'

class Spider
  def initialize(term)
    @term = term
  end

  def globo_search
    @links = []
    doc = Nokogiri::HTML(open("http://g1.globo.com/busca/?q=#{@term}"))
    doc.css('li.species-materia a.cor-produto').each do |link|
      @links << link.attributes["href"]
    end
    visit_link
  end

  def visit_link
    @links.each do |page|
      doc = Nokogiri::HTML(open(page))
      title = doc.css('.materia-titulo h1.entry-title')
      body = doc.css('.materia-conteudo p')
      puts title.text
      puts body.text
      puts "============="
    end 
  end
end

Spider.new("Neymar").globo_search
