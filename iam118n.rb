require 'csv'
require 'yaml'

@tables=ActiveRecord::Base.connection.tables
  
@tables.each do |x|
  ActiveRecord::Base.connection.columns(x).map(&:name).each do |y|
    #if y[-3..-1] == "_id" and @tables.include?(y[0..-4])
    #  k=`ls app/views/**/_form.html.erb`
    #  k.split("\n").each do |l|
    #    myFile=File.read(l)
    #    #stringa="<%= form.number_field :#{y} %>"
    #    stringa="<%= form.select :#{y}, #{y[0..-3].camelize}.all.collect{[x.id, x.name]} %>"
    #    myotherstring=y[0..-3].camelize
    #    if myotherstring[-6..-1] == "People"
    #      #myotherstring
    #      myotherstring=myotherstring[0..-7].camelize+"Person"
    #    end
    #    if myotherstring[-1] == "s"
    #      #myotherstring
    #      myotherstring=myotherstring[0..-2].camelize
    #    end
    #    stringb="<%= form.select :#{y}, #{myotherstring}.all.collect{|x|[x.name, x.id]} %>"
    #    if myFile.include?(stringa)
    #      p stringa+stringb
    #      myFile.gsub!(stringa,stringb)
    #      File.write(l, myFile)
    #    end
    #  end
    #end
    if y[-3..-1] == "_id" and @tables.include?(y[0..-4]+"s")
      k=`ls app/views/**/_form.html.erb`
      k.split("\n").each do |l|
        myFile=File.read(l)
        #stringa="<%= form.number_field :#{y} %>"
        stringa="<%= form.number_field :#{y} %>"
        myotherstring=y[0..-3].camelize
        if myotherstring[-6..-1] == "People"
          #myotherstring
          myotherstring=myotherstring[0..-7].camelize+"Person"
        end
        if myotherstring[-1] == "s"
          #myotherstring
          myotherstring=myotherstring[0..-2].camelize
        end
        stringb="<%= form.select :#{y}, #{myotherstring}.all.collect{|x|[x.name, x.id]} %>"
        if myFile.include?(stringa)
          p stringa+stringb
          myFile.gsub!(stringa,stringb)
          File.write(l, myFile)
        end
      end
    end
  end
end
