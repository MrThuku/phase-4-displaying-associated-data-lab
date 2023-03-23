class ItemsController < ApplicationController
  def index
    @items = Item.includes(:user).all # Eager loading user to avoid N+1 queries
    render json: @items.to_json(include: { user: { only: [:id, :username, :city] } })
  end
end
