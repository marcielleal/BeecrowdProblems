#encoding: utf-8
require "axlsx"
nomeEnt= ARGV[0]

if nomeEnt
	arqEnt=File.new(nomeEnt,"r")
	linhasBrutas=arqEnt.readlines
	linhasTrat=[]
	for linha in linhasBrutas do
		trato=linha.split("|")
		trato=trato[1,trato.length-3]
		linhasTrat<<trato if linha[0]=="|" and linha[1]!=" "
	end

	arq=Axlsx::Package.new 
	arq.workbook.add_worksheet(:name => "Planilha") 
	for i in (0...1000) do
		p linhasTrat[i]
		arq.workbook.worksheets[0].add_row (linhasTrat[i])
	end
	arq.serialize('simple.xlsx')
else
	puts "NAO ACHEI ESSE ARQUIVO, TIA!"
end
