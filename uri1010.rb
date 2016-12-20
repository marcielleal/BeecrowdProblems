lanc=[4.0,4.5,5.0,2.0,1.5]
p1 = gets.strip.split(/\s+/).map(&:to_f)
p2 = gets.strip.split(/\s+/).map(&:to_f)

puts "VALOR A PAGAR: R$ %.2f" %(p1[1]*p1[2]+p2[1]*p2[2])
