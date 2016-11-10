class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]


  before_filter :authenticate_user!, only: [:edit, :update]
  # GET /statuses
  # GET /statuses.json
  
  # GET /statuses/1
  # GET /statuses/1.json
  def show
  end

  

  # GET /statuses/1/edit
  def edit
            if current_user.profile_name == "admin"
      @news = News.new
    else
      render file: 'public/denied', status: 404, formats: [:html]
    end
  end


  # PATCH/PUT /statuses/1
  # PATCH/PUT /statuses/1.json
  def update

      
        respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, user: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, user: :unprocessable_entity }
      end
    end
      
  
    
    
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:rank)
    end
    
    
end
