#imposto de renda
salario=gets.to_f

if salario<=2000 then puts "Isento"
else
	salario-=2000
	if salario<=1000 then puts "R$ %.2f" %(salario*0.08)
	else
		salario-=1000
		if salario<=1500 then puts "R$ %.2f" %(1000*0.08+salario*0.18)
		else
			salario-=1500
			puts "R$ %.2f" %(1000*0.08+1500*0.18+salario*0.28)
		end
	end
end
