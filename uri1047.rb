ent= gets.strip.split(/\s+/).map(&:to_i)
t1=ent[0]*60+ent[1]
t2=ent[2]*60+ent[3]
dur=t2-t1
if dur<=0 then dur+=1440 end
puts "O JOGO DUROU #{(dur/60).to_i} HORA(S) E #{(dur%60).to_i} MINUTO(S)"
