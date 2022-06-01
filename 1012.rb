nums = gets.strip.split(/\s+/).map(&:to_f)
tri=(nums[0]*nums[2])/2
cir=3.14159*nums[2]**2
tra=((nums[0]+nums[1])*nums[2])/2
qua=nums[1]**2
ret=nums[0]*nums[1]

puts "TRIANGULO: %.3f" %tri
puts "CIRCULO: %.3f" %cir
puts "TRAPEZIO: %.3f" %tra
puts "QUADRADO: %.3f" %qua
puts "RETANGULO: %.3f" %ret
