class SessionsController < ApplicationController
	include SessionsHelper
  def new
  end

  def create
  	@actor = Actor.find_by(email: params[:session][:email].downcase)
  	if @actor && @actor.authenticate(params[:session][:password])
      log_in @actor
  		render "actors/show"
  	else
      flash.now[:danger] = 'Invalid email/password combination'
  		render 'new'
 	end
  end

  def destroy
  	log_out
  	redirect_to login_path

  end

end
