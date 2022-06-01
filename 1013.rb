def max (a, b) if a>b then a else b end end
nums = gets.strip.split(/\s+/).map(&:to_i) 
puts "%d eh o maior" %max(max(nums[0],nums[1]),max(nums[1],nums[2]))
