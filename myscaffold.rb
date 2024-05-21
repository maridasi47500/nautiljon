require "nokogiri"
require "open-uri"

f=`ls pagehtml`
g=f.split("\n").select{|g|!g.include?("Identifier")}
g.each do |code|
  doc=Nokogiri::HTML(File.read("./pagehtml/"+code))

  champs=doc.css("form td [name]")
  model=doc.css("h1").text.camelize
  model=model.gsub("d'","").gsub("de","").split("Proposition")[1]
  listchamps={}
  champs.each_with_index do |champ,i|
    case champ.name
    when "input"

      case champ.attributes["type"]
      when "radio"
        somename=champ.attributes["name"].value
        if !listchamps[champ.attributes["name"].value]

          listchamps[champ.attributes["name"].value]={}
          p "rails g scaffold #{somename.camelize}"
        end
        listchamps[champ.attributes["name"].value][champ.attributes["value"].value]=doc.css("[for=#{champ.id}]")[0].text
        p "insert into #{somename.camelize} (name) values(#{doc.css("[for=#{champ.id}]")[0].text})"
      when "checkbox"
        if !listchamps[champ.attributes["name"].value]
          somename=champ.attributes["name"].value
          listchamps[champ.attributes["name"].value]={}
          p "rails g scaffold #{somename.camelize}"
        end
        listchamps[champ.attributes["name"].value][champ.attributes["value"].value]=doc.css("[for=#{champ.id}]")[0].text
        p "insert into #{somename.camelize} (name) values(#{doc.css("[for=#{champ.id}]")[0].text})"
      else
        listchamps[i]=champ.attributes["name"].value
      end
    when "textarea"
      listchamps[i]=champ.attributes["name"].value
    when "select"
      myname=champ.attributes["name"].value
      options={}
      champ.css("option").each do |haha|
        options[haha.attributes["value"].value]=haha.text
        p "insert into #{myname.camelize} (name) values(#{haha.text})"
      rescue
        p "wow"
      end
      listchamps[i]={"#{myname}": options}
      p "rails g scaffold #{myname.camelize}"
    end
  end
  p listchamps
end
