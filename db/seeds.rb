# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#t1 = Tag.create(title: "Beaches", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/beach01.jpg")
#Destination.create(name: "Ipanema", description: "The beach of Ipanema is known for its elegant development and its social life.", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/beach02.jpg", tag_id: t1.id)
e1 = Election.create(nome: "Eleição Teste", dt_inicio: Date.today, dt_fim: Date.today + 10.days)

#123
pass = "$2a$10$VUV4fDA3cA.MqOMQsus1BejyOUJRR1VpjwhzaY79EBW5ehO74wu0."

p1 = Person.create(nome: "Eleitor 1", conselho: "CONRE3", documento: "000001", election: e1, password_digest: pass)
p2 = Person.create(nome: "Eleitor 2", conselho: "CONRE3", documento: "000002", election: e1, password_digest: pass)
p3 = Person.create(nome: "Eleitor 3", conselho: "CONRE3", documento: "000003", election: e1, password_digest: pass)
p4 = Person.create(nome: "Eleitor 4", conselho: "CONRE3", documento: "000004", election: e1, password_digest: pass)
p5 = Person.create(nome: "Eleitor 5", conselho: "CONRE3", documento: "000005", election: e1, password_digest: pass)
p6 = Person.create(nome: "Eleitor 6", conselho: "CONRE3", documento: "000006", election: e1, password_digest: pass)
p7 = Person.create(nome: "Eleitor 7", conselho: "CONRE3", documento: "000007", election: e1, password_digest: pass)
p8 = Person.create(nome: "Eleitor 8", conselho: "CONRE3", documento: "000008", election: e1, password_digest: pass)
p9 = Person.create(nome: "Eleitor 9", conselho: "CONRE3", documento: "000009", election: e1, password_digest: pass)

10.upto(99) do |i|
  Person.create(nome: "Eleitor #{i}", conselho: "CONRE3", documento: "0000#{i}", election: e1, password_digest: pass)
end

c1 = Candidate.create(nome: "Candidato 1", election: e1)
c2 = Candidate.create(nome: "Candidato 2", election: e1)
c3 = Candidate.create(nome: "Candidato 3", election: e1)

v1 = Vote.create(person: p9, candidate: c1, election: e1)
v2 = Vote.create(person: p9, candidate: c2, election: e1)