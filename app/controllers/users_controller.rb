class UsersController < ApplicationController

  # include NotFound

  before_action :find_user, only: [:edit, :update]

  #* 註冊
  def sign_up
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path, notice: "帳號建立成功"
    else
      render :index
    end
  end
  

  #* 登入
  def sign_in
  end

  def login
  end


  #* 登出
  def sign_out
  end


  #* 編輯
  def edit
  end

  def update
  end



  private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
  
end