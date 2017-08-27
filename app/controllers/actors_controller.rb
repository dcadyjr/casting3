class ActorsController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user, only: [:edit, :update, :show]

  # GET /actors
  # GET /actors.json
  def index
    @actors = Actor.all
  end

  # GET /actors/1
  # GET /actors/1.json
  def show
    @actor = Actor.find(params[:id])
  end

  # GET /actors/new
  def new
    @actor = Actor.new
  end

  # GET /actors/1/edit
  def edit
    @actor = Actor.find(params[:id])
  end

  # POST /actors
  # POST /actors.json
  def create
    @actor = Actor.new(actor_params)
    log_in @actor##logs in actor after registration
    respond_to do |format|
      if @actor.save
        format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
        format.json { render :show, status: :created, location: @actor }
      else
        format.html { render :new }
        format.json { render json: @actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actors/1
  # PATCH/PUT /actors/1.json
  def update
    respond_to do |format|
      if @actor.update(actor_params)
        
        format.html { redirect_to @actor, notice: 'Actor was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor }
      else
        format.html { render :edit }
        format.json { render json: @actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actors/1
  # DELETE /actors/1.json
  def destroy
    @actor.destroy
    respond_to do |format|
      format.html { redirect_to actors_url, notice: 'Actor was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor
      @actor = Actor.find(params[:id])
    end

    #confirms a logged-in actor
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_path
      end

    end

    #confirms the correct actor
    def correct_user
      @actor = Actor.find(params[:id])
      redirect_to(login_path) unless @actor == current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_params
      params.require(:actor).permit(:first_name, :last_name, :email, :password, :image_url, :tel_no, :street_address, :city, :state, :zip_code, :agent, :union, :ht_feet, :ht_inches, :weight, :eye_color, :hair_color, :shoe_size, :gender, :ethnicity, :dob, :suit_size, :dress_size, :shirt_size, :waist, :inseam)
    end
end
