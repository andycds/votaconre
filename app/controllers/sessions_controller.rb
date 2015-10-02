class SessionsController < ApplicationController
	#def new
	#end
	def create
		@person = Person.find_by_documento(params[:session][:documento])
		if @person && @person.authenticate(params[:session][:password])
			session[:person_id] = @person.id
			redirect_to '/'
		else
			redirect_to 'login'
		end
	end
  
	def destroy
		session[:person_id] = nil
		redirect_to '/'
	end
end
