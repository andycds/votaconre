class VotesController < ApplicationController
	def new
		if !current_user
			redirect_to '/login'
			return
		end
		if current_user.ja_votou?
			redirect_to '/votado'
			return
		end
		
		#@candidate = Candidate.order("id").find_all_by_eleicao_id(@eleicao.id)
		#@vote = Vote.new
		candidatos = current_user.election.candidates
		@votos = Array.new candidatos.size
		for i in 0...candidatos.size
			@votos[i] = Vote.new(person: current_user, candidate: candidatos[i], election: current_user.election)
		end
	end

	def create
		#@vote = Vote.new(vote_params)
		votado = false
		vv = params["votos"]
		vv.values.each do |cid|
			c = Candidate.find_by_id(cid)
			v = Vote.new(person: current_user, candidate: c, election: current_user.election)
			v.save
			votado = true
		end
		#@votos.each do |v|
		#	if v.vote_for_me
		#		v.save
		#		votado = true
		#	end
		#end
		#@p = @vote.params
		#@voto = Vote.new(person: current_user, candidate: Candidate.first, election: current_user.election)
		if votado
			redirect_to '/votado'
			return
		else
			render 'new'
		end
		#respond_to do |format|
		#	@votacao.each {|v| v.save}
		#format.html { redirect_to( 'pages#votado', notice: 'Votação realizada.') }

	end

	def votado
		if !current_user
			redirect_to '/login'
			return
		end
		if !current_user.ja_votou?
			redirect_to '/'
			return
		end
		@person = current_user
		@voto = Vote.find_by_person_id(current_user.id) 


		agora = Rails.env == 'production' ? (Time.now + 6.hour).to_s : Time.now.to_s
		html = ""
#		html = html + '<p> <img src="http://conre3.heroku.com/images/conre3logo.png" /> </p>'
		html = html + "<p><b>" + current_user.election.nome + "</b></p>"
		html = html + "<p> Comprovante de vota&ccedil;&atilde;o</p> <p>Gerado &agrave;s: " + agora + "</p>"# + params
		html = html + "<p>Profissional: " + current_user.nome + "</p>"
		html = html + "<p>Login: " + current_user.documento + "</p>"
		pdfkit_instance = PDFKit.new(html)
		send_data(pdfkit_instance.to_pdf, {filename: "comprovante.pdf"})

	end

	private
	def vote_params
		params.require("votos").permit(:content)
	end

	#def redirecionar_sem_acesso?
	#	redirect_to '/login' unless current_user != nil
	#	return current_user != nil
	#end
end
