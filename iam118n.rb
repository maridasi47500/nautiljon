require 'csv'
require 'yaml'

@tables=ActiveRecord::Base.connection.tables
  
@tables.each do |x|
  ActiveRecord::Base.connection.columns(x).map(&:name).each do |y|
    if y[-3..-1] == "_id" and @tables.include?(y[0..-3]+"s")
      k=`ls app/views/**/_form.html.erb`
      k.split("\n").each do |l|
        myFile=File.read(l)
        myFile.gsub!("<%= form.number_field #{y} %>","<%= form.select #{y}, #{y[0..-3]}.all.collect{[x.id, x.name]} %>")
        File.write(l, myFile)
      end

    end
  end
end

