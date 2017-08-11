class AgentSessionsController < ApplicationController
	include SessionsHelper
  def new
  end

  def create
  	@agent = Agent.find_by(email: params[:session][:email].downcase)
  	if @agent && @agent.authenticate(params[:session][:password])
  		render "agents/show"
  	else
  		render '/agents/index.html.erb'
 	end
  end

  def destroy
  	log_out
  	redirect_to agents_login_path
  	puts "DEAD"
  end
end
