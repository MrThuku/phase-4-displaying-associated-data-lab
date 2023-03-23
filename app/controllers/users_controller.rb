class UsersController < ApplicationController
  def show
    @user = User.includes(:items).find(params[:id]) 
    render json: @user.to_json(include: :items)
  end
end

