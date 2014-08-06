class SessionsController < ApplicationController
	def new
		@user = User.new
		@is_login = true
	end

	def create
		#Find the user that is trying to log in
		u = User.where(email_address: params[:user][:email_address]).first
		if u && u.authenticate(params[:user][:password])
			#Store as a cooke in the user browser as the ID of them,
			#indicating they are logged in
			session[:user_id] = u.id.to_s
			redirect_to users_path
		else
			redirect_to new_session_path
		end
	end

	def destroy
		reset_session
		redirect_to inventories_path
	end
end