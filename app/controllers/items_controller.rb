class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.paginate(:page => params[:page], :per_page => 20)

  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit


    #Store all characters belonging to the current user into a variable
    myvar = Character.where(:user_id =>current_user).all
    #The "moo" variable is to test whether or not there are any characters belonging to the user
    #So by default, it's false
    moo = false
    #For every character in the variable, do some stuff with it.
    myvar.each do |char|
      #Check if the character owning the item you wish to edit is one of the characters
      #belonging to the user, then tell Ruby there's a match! (Huzzah!)
      if @item.character_id == char.id
        moo = true
      end
    end
    #If nothing is found, return a 404, to deny the user access to this page.
    if moo == false
      render file: 'public/denied', status: 404, formats: [:html]
    end
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update




    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy

    myvar = Character.where(:user_id =>current_user).all
    moo = false
    myvar.each do |char|
      if @item.character_id == char.id
        moo = true
      end
    end


    if moo == false
      render file: 'public/denied', status: 404, formats: [:html]
    end

    if moo == true


      @item.destroy
      respond_to do |format|
        format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :description, :quantity, :effect, :modifier, :character_id)
    end
end
