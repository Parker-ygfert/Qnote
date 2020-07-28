class UsersController < ApplicationController

  include NotFound

  def index
    # @notes = Note.all
    @user = User.new
  end
  
  def new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:alert] = "帳號建立成功"
      redirect_to user_notes_path(@user)
    else
      render :index
    end
  end


  def edit
  end

  def update
  end


  def destroy
  end



  private
  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
  
end