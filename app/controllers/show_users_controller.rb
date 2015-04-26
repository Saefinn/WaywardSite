class ShowUsersController < ApplicationController
  def show
    @users = User.all    
  end
end
