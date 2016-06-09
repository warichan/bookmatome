class CategoriesController < ApplicationController
  before_action :require_login

  def new
    @user = User.find(params[:user_id])
    @category = @user.categories.new
  end

  def create
    @user = User.find(params[:user_id])
    @category = @user.categories.create(create_params)

    if @category.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show
  end

  private

  def create_params
    params.require(:category).permit(:title)
  end
end
