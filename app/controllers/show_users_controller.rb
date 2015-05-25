class ShowUsersController < ApplicationController
  def show
    @users = User.paginate(:page => params[:page], :per_page => 20)
  end
end
