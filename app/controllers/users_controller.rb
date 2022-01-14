class UsersController < ApplicationController
  # GET /users/:id
  def show
    @user = User.find(params[:id])
    #debugger
  end
  
  # GET /users/new
  def new
    @user = User.new
  end
  
  # POST /users (+ params)
  def create
    @user = User.new(user_params)
    if @user.save
      # Success (valid params)
    else
      # Failure (not valid params)
      render 'new'
    end
  end
  
  private
    # for create action
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
