class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def create
    binding.pry
  end

end
