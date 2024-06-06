#f=`ls app/views/**/index.html.erb`
#f.split("\n").each do |z|
#  h=File.readlines(z)
#  h.map! do |w|
#  
#  if "Show this" in w
#    w.gsub(", ",", _")
#  else
#    w
#  end
#  end
#  File.write(z,h.join("\n"))
#end
f=`ls app/views/`
f.split("\n").each do |z|
h="""
<h1>voir tous les #{z.titleize}</h1>
<%@_#{z}.each do |x|%>
<%=render x%>
<%end%>
<p>
<%=link_to \"nouveau  #{z.titleize}\", new_#{z[0..-2]}_path%>
</p>
"""
File.write("app/views/"+z+"/index.html.erb",h)
end
