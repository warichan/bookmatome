class UserSessionsController < ApplicationController
  before_action :require_login, only: [:show, :edit, :update, :destoy]

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      flash[:success] = "ログインしました！"
      redirect_back_or_to user_path(@user)
    else
      flash[:danger] = 'メールアドレスもしくはパスワードが違います'
      render action: 'new'
  end
end

  def destroy
    logout
    flash[:success] = "ログアウトしました！"
    redirect_to root_path
  end
end
