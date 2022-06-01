def fib(num)
    vet=[0,1]
    if num>1 then
	    for i in (2..num-1) do
	    	vet.push(vet[i-1]+vet[i-2])
	    end
	elsif num==0 then return [0]
	end
    return vet
end
saida=""
for i in fib(gets.to_i)
	saida<<i.to_s<<" "
end
puts saida[0,saida.length]
