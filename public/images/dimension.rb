dir="/Users/marike/Desktop/joan_images/"  

f1 = "img"
f2 = ".jpg"
i = -1

Dir.foreach('.').each do |file|  
   while i < 17
     i+=1
  `ruby size.rb "#{f1}#{i+=1}#{f2}"`   
   end
end
