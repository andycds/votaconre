# coding: UTF-8
e3 = Election.where('nome LIKE ?', "%CONRE-3%").first

# Candidatos CONRE-3

c31 = Candidate.create(nome: "ADRIANA MARIA MARQUES DA SILVA", election: e3)
c32 = Candidate.create(nome: "EDMAR WILSON ALVARENGA", election: e3) 
c33 = Candidate.create(nome: "JULIO ADOLFO ZUCON TRECENTI", election: e3)
c34 = Candidate.create(nome: "MARCELO PIRES FERNANDES", election: e3)
c35 = Candidate.create(nome: "MARCOS HENRIQUE DE CARVALHO", election: e3)
c36 = Candidate.create(nome: "NARA REGINA SPALL MARTINS", election: e3)
c37 = Candidate.create(nome: "NEWTON NOGUEIRA", election: e3)
c38 = Candidate.create(nome: "PAULA REGINA BONIFÁCIO DOS SANTOS", election: e3)
c39 = Candidate.create(nome: "REGINA ALBANESE POSE", election: e3)
c310 = Candidate.create(nome: "TATIANA VENTICINCO DE ALMEIDA", election: e3)
c311 = Candidate.create(nome: "ALEXANDRE JOSÉ SANTOS CARNEIRO", election: e3)

# Eleitores CONRE-3

pass = "$2a$10$VUV4fDA3cA.MqOMQsus1BejyOUJRR1VpjwhzaY79EBW5ehO74wu0."

textoEleitores = "#{Rails.root}/db/eleitores3.bin"
File.foreach(textoEleitores) { |x|
	pessoa = x.split("\t")
	Person.create(nome: pessoa[2].titleize, conselho: "CONRE3", documento: pessoa[0], election: e3, password_digest: BCrypt::Password.create(pessoa[1]))
}
