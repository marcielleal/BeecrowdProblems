num=0
soma=0.0
for i in (0..5) do
	a=gets.to_f
	if a>0 then 
		num+=1 
		soma+=a 
	end
end
puts "%d valores positivos" %(num)
puts "%.1f" %(soma/num)
