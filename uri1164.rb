def isPrimo(num)
	if num<2 then return false end
	for i in (2..Math.sqrt(num).to_i)
		if num%i==0
			return false
		end
	end
	return true
end

t=gets.to_i
until t==0 do
	x=gets.to_i
	if isPrimo(x) then puts "#{x} eh primo"
	else puts "#{x} nao eh primo"
	end
	t-=1
end
