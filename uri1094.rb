lista={"C"=>0,
	"R"=>0,
	"S"=>0
}
total=0
t=gets.to_i
until t==0 do
	ent=$stdin.readline.split
    lista[ent[1]]+=ent[0].to_i
    total+=ent[0].to_i
    t-=1
end
puts "Total: #{total} cobaias" 
puts "Total de coelhos: #{lista["C"]}"
puts "Total de ratos: #{lista["R"]}"
puts "Total de sapos: #{lista["S"]}"
puts "Percentual de coelhos: %.2f %" %((lista["C"].to_f/total)*100)
puts "Percentual de ratos: %.2f %" %((lista["R"].to_f/total)*100)
puts "Percentual de sapos: %.2f %" %((lista["S"].to_f/total)*100)
