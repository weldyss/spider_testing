class GloboParsing
  def self.visit_link(link)
    doc = Nokogiri::HTML(open(link))
    title = doc.css('.materia-titulo h1.entry-title')
    body = doc.css('.materia-conteudo p')
    puts title.text
    puts body.text
  end
end
