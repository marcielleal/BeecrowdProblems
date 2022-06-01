p1 = gets.strip.split(/\s+/).map(&:to_f) 
p2 = gets.strip.split(/\s+/).map(&:to_f)

puts "%.4f" %(Math.sqrt(((p2[0]-p1[0])**2)+((p2[1]-p1[1])**2)))
