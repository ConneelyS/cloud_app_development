class StaticPagesController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def home
  end
end
