entD1= gets.strip.split(/\s+/).map(&:to_i)
entC1= gets.strip.split(/\s+/).map(&:to_i)
entD2= gets.strip.split(/\s+/).map(&:to_i)
entC2= gets.strip.split(/\s+/).map(&:to_i)

t1=entD1[1]*86400+entC1[0]*3600+entC1[2]*60+entC1[4]
t2=entD2[1]*86400+entC2[0]*3600+entC2[2]*60+entC2[4]

sec=t2-t1
min=0
hours=0
days=0
while sec>=60 do
	sec-=60
	min+=1
end
while min>=60 do
	min-=60
	hours+=1
end
while hours>=24
	hours-=24
	days+=1
end

puts "#{days} dia(s)"
puts "#{hours} hora(s)"
puts "#{min} minuto(s)"
puts "#{sec} segundo(s)"
