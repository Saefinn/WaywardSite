class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update]

  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.paginate(:page => params[:page], :per_page => 20)
  end

  # GET /characters/1
  # GET /characters/1.json
    def show
      @items = @character.items.paginate(:page => params[:page], :per_page => 8)
  end

  # GET /characters/new
  def new

    @character = Character.new
  end

  # GET /characters/1/edit
  def edit
    #If the current user is not the match user ID for this character
    #bring up a 404 to deny access
    if @character.user_id != current_user.id
      render file: 'public/denied', status: 404, formats: [:html]
    end
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(character_params)

    #Match this character's user ID to the current user's ID.
    @character.user_id = current_user.id
    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Character was successfully created.' }
        format.json { render :show, status: :created, location: @character }
      else
        format.html { render :new }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update

    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url, notice: 'Character was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params
      params.require(:character).permit(:first_name, :last_name, :nick_name, :title, :description, :traits, :skills, :history, :strength, :vitality, :agility, :dexterity, :intelligence, :mind)
    end
end


