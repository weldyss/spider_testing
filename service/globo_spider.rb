class GloboSpider < Spider
  def search
    @links = []
    doc = Nokogiri::HTML(open("http://g1.globo.com/busca/?q=#{@term}"))
    doc.css('li.species-materia a.cor-produto').each do |link|
      @links << link.attributes["href"]
    end
    @links
  end
end
