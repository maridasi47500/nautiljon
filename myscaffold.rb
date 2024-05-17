require "nokogiri"
require "open-uri"
@doc=Nokogiri::HTML(URI.open("https://www.nautiljon.com/watashi/prop_amv.php"))

@doc.css("#prop_fiche li a").each do |hey|
  doc=Nokogiri::HTML(open(hey.attributes["href"].value))
  champs=doc.css("form td [name]")
  model=hey.text.camelize
  listchamps=[]
  champs.each do |champ|
    case champ.name
    when "input"
      listchamps<<champ.attributes["name"].value
    when "textarea"
      listchamps<<champ.attributes["name"].value
    when "select"
      listchamps<<champ.attributes["name"].value
    end
  end
  p listchamps
end
