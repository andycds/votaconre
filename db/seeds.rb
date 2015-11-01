# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#t1 = Tag.create(title: "Beaches", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/beach01.jpg")
#Destination.create(name: "Ipanema", description: "The beach of Ipanema is known for its elegant development and its social life.", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/beach02.jpg", tag_id: t1.id)

#e2 = Election.create(nome: "Elei&ccedil;&atilde;o Teste CONRE-2", dt_inicio: Date.today, dt_fim: Date.today + 10.days)
#e3 = Election.create(nome: "Elei&ccedil;&atilde;o Teste CONRE-3", dt_inicio: Date.today, dt_fim: Date.today + 10.days)
#e5 = Election.create(nome: "Elei&ccedil;&atilde;o Teste CONRE-5", dt_inicio: Date.today, dt_fim: Date.today + 10.days)
e2 = Election.create(nome: "Eleição Teste CONRE-2", dt_inicio: Date.today, dt_fim: Date.today + 10.days)
e3 = Election.create(nome: "Eleição Teste CONRE-3", dt_inicio: Date.today, dt_fim: Date.today + 10.days)
e5 = Election.create(nome: "Eleição Teste CONRE-5", dt_inicio: Date.today, dt_fim: Date.today + 10.days)

c21 = Candidate.create(nome: "Candidato 1", election: e2)
c22 = Candidate.create(nome: "Candidato 2", election: e2)

c31 = Candidate.create(nome: "Candidato 1", election: e3)
c32 = Candidate.create(nome: "Candidato 2", election: e3)
c33 = Candidate.create(nome: "Candidato 3", election: e3)

c51 = Candidate.create(nome: "Candidato 1", election: e5)
c52 = Candidate.create(nome: "Candidato 2", election: e5)
c53 = Candidate.create(nome: "Candidato 3", election: e5)

#123
pass = "$2a$10$VUV4fDA3cA.MqOMQsus1BejyOUJRR1VpjwhzaY79EBW5ehO74wu0."

1.upto(9) do |i|
	Person.create(nome: "Eleitor CONRE-2 #{i}", conselho: "CONRE2", documento: "20000#{i}", election: e2, password_digest: pass)
	Person.create(nome: "Eleitor CONRE-3 #{i}", conselho: "CONRE3", documento: "30000#{i}", election: e3, password_digest: pass)
	Person.create(nome: "Eleitor CONRE-5 #{i}", conselho: "CONRE5", documento: "50000#{i}", election: e5, password_digest: pass)
end

#10.upto(99) do |i|
#	Person.create(nome: "Eleitor CONRE-2 #{i}", conselho: "CONRE2", documento: "2000#{i}", election: e2, password_digest: pass)
#	Person.create(nome: "Eleitor CONRE-3 #{i}", conselho: "CONRE3", documento: "3000#{i}", election: e3, password_digest: pass)
#	Person.create(nome: "Eleitor CONRE-5 #{i}", conselho: "CONRE5", documento: "5000#{i}", election: e5, password_digest: pass)
#end


#v1 = Vote.create(person: p9, candidate: c1, election: e1)
#v2 = Vote.create(person: p9, candidate: c2, election: e1)