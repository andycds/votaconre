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
		@vote = Vote.new
		#if current_user
		#else
		#	redirect_to '/login'
		#end
	end

	def create
		#@vote = Vote.new(vote_params)

		#v1 = Vote.create(person: p9, candidate: c1, election: e1)
		@vote = Vote.new(person: current_user, candidate: Candidate.first, election: Election.first)
		if @vote.save
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
