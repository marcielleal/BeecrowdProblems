ent= gets.strip.split(/\s+/).map(&:to_f)
dif=ent[1]-ent[0]

if dif<=0 then dif+=24 end
puts "O JOGO DUROU %d HORA(S)" %(dif)
