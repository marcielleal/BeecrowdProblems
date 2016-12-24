lista={ "vertebrado"=>{"ave"=>{"carnivoro"=>"aguia","onivoro"=>"pomba"},
						"mamifero"=>{"onivoro"=>"homem","herbivoro"=>"vaca"}
						},
	"invertebrado"=>{"inseto"=>{"hematofago"=>"pulga","herbivoro"=>"lagarta"},
						"anelideo"=>{"hematofago"=>"sanguessuga","onivoro"=>"minhoca"}
					}
}

sf=gets
classe=gets
tipo=gets
puts lista[sf[0,sf.length-1]][classe[0,classe.length-1]][tipo[0,tipo.length-1]]
