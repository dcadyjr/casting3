class AgentSessionsController < ApplicationController
	include AgentSessionsHelper

  def new
  end

  def create
  	@agent = Agent.find_by(email: params[:session][:email].downcase)
  	if @agent && @agent.authenticate(params[:session][:password])
      agent_log_in @agent
  		redirect_to projects_path
  	else
      flash.now[:danger] = 'Invalid email/password combination'
  		render '/agents/index.html.erb'
 	  end
  end

  def destroy
  	agent_log_out
  	redirect_to agents_login_path
  end
end
