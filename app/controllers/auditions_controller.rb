class AuditionsController < ApplicationController
  before_action :set_audition, only: [:show, :edit, :update, :destroy]
  include AgentSessionsHelper

  # GET /auditions
  # GET /auditions.json
  def index
    @auditions = Audition.all
    agent_current_user
    puts "!!!!"
    puts @current_agent.first_name
    puts @current_agent.last_name
  end

  # GET /auditions/1
  # GET /auditions/1.json
  def show
    @project_id = @audition.role.project_id
    @role_id = @audition.role.id
    @char_name = @audition.role.char_name
    agent_current_user
  end

  # GET /auditions/new
  def new
    @audition = Audition.new
    @actors = Actor.all
    @role_id = params[:role_id]##holds variable to pass to audition form
    @char_name = params[:char_name]##holds variable to pass to audition form
    @project_id = params[:format]##holds variable to pass to audition form
    agent_current_user

  end

  #get request to show all auditions for a role
  def role_auditions
    @role_id = params[:role_id]##holds variable to pass to audition form
    @char_name = params[:char_name]##holds variable to pass to audition form
    @project_id = params[:project_id]

    @role_aud = Audition.where(:role_id => @role_id)
    agent_current_user

  end

  # GET /auditions/1/edit
  def edit
    @actors = Actor.all
    @char_name = @audition.role.char_name
    @role_id = @audition.role_id
    @project_id = @audition.role.project_id
    puts "!!!!!!!!!!!"
    puts @project_id
    agent_current_user
  end

  # POST /auditions
  # POST /auditions.json
  def create
    @audition = Audition.new(audition_params)
    @role_id = @audition[:role_id]
    @char_name = @audition[:char_name]
    @project_id = @audition[:project_id]
    agent_current_user
    
    respond_to do |format|

      if @audition.save!
        format.html { redirect_to @audition, notice: 'Audition was successfully created.' }
        format.json { render :show, status: :created, location: @audition }

      else
        format.html { render :new }
        format.json { render json: @audition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auditions/1
  # PATCH/PUT /auditions/1.json
  def update
    agent_current_user

    respond_to do |format|
      if @audition.update(audition_params)
        format.html { redirect_to @audition, notice: 'Audition was successfully updated.' }
        format.json { render :show, status: :ok, location: @audition }
      else
        format.html { render :edit }
        format.json { render json: @audition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auditions/1
  # DELETE /auditions/1.json
  def destroy
    agent_current_user
    
    @audition.destroy
    session[:return_to] ||= request.referer # for redirecting back to the same page upon delete from project page.

    respond_to do |format|
      format.html { redirect_to session.delete(:return_to), notice: 'Audition was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audition
      @audition = Audition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def audition_params
      params.require(:audition).permit(:attended, :time, :first_name, :last_name, :role_id, :actor_id, :char_name, :project_id)
    end
end
