class UserSessionsController < ApplicationController
  before_action :require_login, only: [:show, :edit, :update, :destoy]

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to(user_path(@user), notice: 'ログインしました！')
    else
      flash.now[:alert] = '※メールアドレスもしくはパスワードが違います'
      render action: 'new'
  end
end

  def destroy
    logout
    redirect_to root_path
  end
end
