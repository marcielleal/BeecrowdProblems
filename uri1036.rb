nums = gets.strip.split(/\s+/).map(&:to_f) 
result1=0.0
result2=0.0
error_message="Impossivel calcular"

if nums[0]>0
	delta= (nums[1]**2)-(4*nums[0]*nums[2])
	if delta>0
		result1=(-nums[1]+Math.sqrt(delta))/(2*nums[0])
		result2=(-nums[1]-Math.sqrt(delta))/(2*nums[0])
		puts "R1 = %.5f" %result1
		puts "R2 = %.5f" %result2
	else
		puts error_message
	end
else puts error_message
end
