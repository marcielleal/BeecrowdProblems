def isPerfect(num)
	div=[]
	if num<2 then return false end
	for i in (1..num-1)
		if num%i==0
			div.push(i)
		end
	end
	soma=0
	for i in div do
		soma+=i
	end
	return soma==num
end

t=gets.to_i
until t==0 do
	x=gets.to_i
	if isPerfect(x) then puts "#{x} eh perfeito"
	else puts "#{x} nao eh perfeito"
	end
	t-=1
end
