lanc=[4.0,4.5,5.0,2.0,1.5]
nums = gets.strip.split(/\s+/).map(&:to_i)

puts "Total: R$ %.2f" %(lanc[nums[0]-1]*nums[1])
