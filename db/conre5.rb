# coding: UTF-8
e5 = Election.where('nome LIKE ?', "%CONRE-5%").first

# Candidatos CONRE-5

c51 = Candidate.create(nome: "DANILIO SILVA SANTOS".titleize, election: e5)
c52 = Candidate.create(nome: "DENIVALDO DA Conceição FERNANDES DE OLIVEIRA".titleize, election: e5)
c53 = Candidate.create(nome: "EULINA SILVA SANTOS".titleize, election: e5)
c54 = Candidate.create(nome: "HILDETE ALVES DA COSTA".titleize, election: e5)
c55 = Candidate.create(nome: "JACKSON SANTOS DA Conceição".titleize, election: e5)
c56 = Candidate.create(nome: "LILIA CAROLINA CARNEIRO DA COSTA".titleize, election: e5)
c57 = Candidate.create(nome: "PAULO ROBERTO PINHEIRO LEAL".titleize, election: e5)
c58 = Candidate.create(nome: "RAIMUNDO DIAS DOS SANTOS".titleize, election: e5)
c59 = Candidate.create(nome: "VALDIR OLIVEIRA DE SOUZA".titleize, election: e5)



# Eleitores CONRE-5

pass = "$2a$10$VUV4fDA3cA.MqOMQsus1BejyOUJRR1VpjwhzaY79EBW5ehO74wu0."

textoEleitores = "#{Rails.root}/db/eleitores5.bin"
File.foreach(textoEleitores) { |x|
	pessoa = x.split("\t")
	Person.create(nome: pessoa[2].titleize, conselho: "CONRE5", documento: pessoa[0], election: e5, password_digest: BCrypt::Password.create(pessoa[1]))
}


