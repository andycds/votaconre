class SessionsController < ApplicationController
	def new
		@title = 'versão 0.0.9'
	end
	def create
		@person = Person.find_by_documento(params[:session][:documento])
		if @person && @person.authenticate(params[:session][:password])
			session[:person_id] = @person.id
			redirect_to '/'
		else
			#redirect_to 'login'
			flash[:notice] = "Erro no documento/senha."
   			render 'new'
		end
	end
  
	def destroy
		session[:person_id] = nil
		flash[:notice] = "Logout efetuado."
		redirect_to '/login'
	end
end
