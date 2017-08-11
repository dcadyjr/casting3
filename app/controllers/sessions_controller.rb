class SessionsController < ApplicationController
	include SessionsHelper
  def new
  end

  def create
  	@actor = Actor.find_by(email: params[:session][:email].downcase)
  	if @actor && @actor.authenticate(params[:session][:password])
  		render "actors/show"
  	else
  		render 'new'
 	end
  end

  def create
  	@agent = Agent.find_by(email: params[:session][:email].downcase)
  	if @agent && @agent.authenticate(params[:session][:password])
  		render "agent/show"
  	else
  		render 'new'
 	end
  end

  def destroy
  	log_out
  	redirect_to login_path
  end

end
