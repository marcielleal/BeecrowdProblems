ent= gets.strip.split(/\s+/).map(&:to_f)

media=2*ent[0]+3*ent[1]+4*ent[2]+ent[3]
media/=10

if(media>=5 and media<7)
    puts "Media: %.1f\nAluno em exame." %(media)
    nota=gets.to_f
    media=(media+nota)/2
    puts "Nota do exame: %.1f" %(nota)
    if media<5 then puts "Aluno reprovado.\nMedia final: %.1f" %(media) 
    else puts "Aluno aprovado.\nMedia final: %.1f" %(media)
    end
else
    if media>=7  then puts "Media: %.1f\nAluno aprovado." %(media)
    elsif media<5 then puts "Media: %.1f\nAluno reprovado." %(media)
    end
end