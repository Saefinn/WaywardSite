class ProfilesController < ApplicationController
  
  
  
  def show
    #Find the user by using their profile name.
    @user = User.find_by_profile_name(params[:id])

    #if the user is found. Get all of the 'statuses' (journals) and the 'characters'
    if @user
      @statuses = @user.statuses.all
      @characters = @user.characters.all

      #The render the view
      render action: :show
        #code
    else
      #If not, throw a 404
       render file: 'public/404', status: 404, formats: [:html]
    end
    
    
  end
end
