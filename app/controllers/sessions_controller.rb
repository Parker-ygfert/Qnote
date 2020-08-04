class SessionsController < ApplicationController

  before_action :find_user, only: [:new, :create, :destroy]

  def new
  end

  def create
    byebug
    if @user and @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "登入成功"
    else
      flash[:notice] = "密碼錯誤"
      render file: "/users/index.html.erb"
    end
  end

  def destroy
  end



  private
  def find_user
    @user = User.find_by(name: params[:name])
  end
end
