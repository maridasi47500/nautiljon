f=`ls app/views/**/index.html.erb`
f.split("\n").each do |z|
  h=File.readlines(z)
  h.map! do |w|
  
  if "Show this" in w
    w.gsub(", ",", _")
  else
    w
  end
  end
  File.write(z,h.join("\n"))
end
