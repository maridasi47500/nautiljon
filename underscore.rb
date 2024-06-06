#h=`ls app/controllers/*`
#h.split("\n").each do |az|
#  k=az.split("/").last
#  l=k[1..]
#  p "mv 'app/controllers/#{k}' 'app/controllers/#{l}"
#  m=`mv 'app/controllers/#{k}' 'app/controllers/#{l}'`
#end
#h=`ls app/views`
#h.split("\n").each do |az|
#  k=az.split("/").last
#  if k and k[0] == "_"
#    l=k[1..]
#    p "mv 'app/views/#{k}' 'app/views/#{l}"
#    m=`mv 'app/views/#{k}' 'app/views/#{l}'`
#  end
#end
h=`ls app/views/breves/*.html.erb`
h.split("\n").each do |az|
  k=File.readlines(az)
  if k and k[0] == "_"
    l=k[1..]
    p "mv 'app/views/#{k}' 'app/views/#{l}"
    m=`mv 'app/views/#{k}' 'app/views/#{l}'`
  end
end
