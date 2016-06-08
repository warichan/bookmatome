class HomeController < ApplicationController
  def index
    if current_user
      render :template => 'users/show'
    end
  end
end
