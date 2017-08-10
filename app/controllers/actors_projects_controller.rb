class ActorsProjectsController < ApplicationController
  before_action :set_actors_project, only: [:show, :edit, :update, :destroy]

  # GET /actors_projects
  # GET /actors_projects.json
  def index
    @actors_projects = ActorsProject.all
  end

  # GET /actors_projects/1
  # GET /actors_projects/1.json
  def show
  end

  # GET /actors_projects/new
  def new
    @actors_project = ActorsProject.new
  end

  # GET /actors_projects/1/edit
  def edit
  end

  # POST /actors_projects
  # POST /actors_projects.json
  def create
    @actors_project = ActorsProject.new(actors_project_params)

    respond_to do |format|
      if @actors_project.save
        format.html { redirect_to @actors_project, notice: 'Actors project was successfully created.' }
        format.json { render :show, status: :created, location: @actors_project }
      else
        format.html { render :new }
        format.json { render json: @actors_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actors_projects/1
  # PATCH/PUT /actors_projects/1.json
  def update
    respond_to do |format|
      if @actors_project.update(actors_project_params)
        format.html { redirect_to @actors_project, notice: 'Actors project was successfully updated.' }
        format.json { render :show, status: :ok, location: @actors_project }
      else
        format.html { render :edit }
        format.json { render json: @actors_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actors_projects/1
  # DELETE /actors_projects/1.json
  def destroy
    @actors_project.destroy
    respond_to do |format|
      format.html { redirect_to actors_projects_url, notice: 'Actors project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actors_project
      @actors_project = ActorsProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actors_project_params
      params.require(:actors_project).permit(:actor_id, :project_id)
    end
end
