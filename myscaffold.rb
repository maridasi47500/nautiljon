require "nokogiri"
require "open-uri"

f=`ls pagehtml`
g=f.split("\n").select{|g|!g.include?("Identifier")}
g.each do |code|
  doc=Nokogiri::HTML(File.read("./pagehtml/"+code))

  champs=doc.css("form td [name]")
  model=doc.css("h1").text.camelize
  model=model.gsub("Proposition d'","").gsub("Proposition de","").delete("'").camelize.gsub("é","e").tr(" ","_").tableize
  @scaffold="rails g scaffold "+model

  listchamps={}
  champs.each_with_index do |champ,i|
    case champ.name
    when "input"

      case champ.attributes["type"]
      when "radio"
        somename=champ.attributes["name"].value
        myname1=model+somename.camelize.gsub("[]","").underscore
        myname1=myname1.underscore
        awesomevalue=myname1+"_id"
        if !listchamps[awesomevalue]

          listchamps[awesomevalue]={}
          open('wow.sh', 'a') do |f|
            f.puts "rails g scaffold #{myname1} name"
          end

          @scaffold+=" "+awesomevalue+":integer" if !awesomevalue.include?("[]")

        end
        listchamps[myawesomevalue][champ.attributes["value"].value]=doc.css("[for=#{champ.id}]")[0].text
        somevalue=doc.css("[for=#{champ.id}]")[0].text
        if !["----","Entrez un critère de recherche"].any?{|g|somevalue.include?(g)}
          open('db/seeds1.rb', 'a') do |f|
            f.puts "#{somename.camelize}.find_or_create_by(name: \"#{somevalue}\")\n"
          end
        end
      when "checkbox"
        somename=champ.attributes["name"].value
        myname1=model+somename.camelize.gsub("[]","")
        myname1=myname1.underscore
        awesomevalue=myname1+"_id"
        if !listchamps[awesomevalue]
          listchamps[awesomevalue]={}
          open('wow.sh', 'a') do |f|
            f.puts "rails g scaffold #{myname1} name"
          end
          @scaffold+=" "+awesomevalue+":integer" if !awesomevalue.include?("[]")
        end
        listchamps[myawesomevalue][champ.attributes["value"].value]=doc.css("[for=#{champ.id}]")[0].text
        somevalue=doc.css("[for=#{champ.id}]")[0].text
        if !["----","Entrez un critère de recherche"].any?{|g|somevalue.include?(g)}
          open('db/seeds1.rb', 'a') do |f|
            f.puts "#{myname1.camelize}.find_or_create_by(name: \"#{somevalue}\")\n"
          end
        end
      when "file"
        listchamps[i]=champ.attributes["name"].value
        awesomevalue=champ.attributes["name"].value
        @scaffold+=" "+champ.attributes["name"].value+":file" if !awesomevalue.include?("[]")
      when "time"
        listchamps[i]=champ.attributes["name"].value
        awesomevalue=champ.attributes["name"].value
        @scaffold+=" "+champ.attributes["name"].value+":time" if !awesomevalue.include?("[]")
      when "date"
        listchamps[i]=champ.attributes["name"].value
        awesomevalue=champ.attributes["name"].value
        @scaffold+=" "+champ.attributes["name"].value+":date" if !awesomevalue.include?("[]")
      else
        listchamps[i]=champ.attributes["name"].value
        awesomevalue=champ.attributes["name"].value
        @scaffold+=" "+champ.attributes["name"].value+":string" if !awesomevalue.include?("[]")
      end
    when "textarea"
      listchamps[i]=champ.attributes["name"].value
      awesomevalue=champ.attributes["name"].value
      @scaffold+=" "+champ.attributes["name"].value+":text" if !awesomevalue.include?("[]")
    when "select"
      myname=champ.attributes["name"].value
      myname1=(model+myname.camelize.gsub("[]","")).underscore
      awesomevalue=myname1+"_id"
      @scaffold+=" "+awesomevalue+":integer" if !awesomevalue.include?("[]")
      options={}
      champ.css("option").each do |haha|
        options[haha.attributes["value"].value]=haha.text
        somevalue=haha.text
        if !["----","Entrez un critère de recherche"].any?{|g|somevalue.include?(g)}
          open('db/seeds1.rb', 'a') do |f|
            f.puts "#{myname1.camelize}.find_or_create_by(name: \"#{haha.text}\")\n"
          end
        end
      rescue
        p "wow"
      end
      listchamps[i]={"#{awesomevalue}": options}
      open('wow.sh', 'a') do |f|
        f.puts "rails g scaffold #{myname1} name"
      end
    end
  end
  #p listchamps
  open('wow.sh', 'a') do |f|
    f.puts(@scaffold+"\n")
  end
end
