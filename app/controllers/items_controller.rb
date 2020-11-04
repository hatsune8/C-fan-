class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
  end

  def create
    @user = current_user
    @item = Item.new(item_params)
    if @item.save
    redirect_to items_path
    end
  end

  def update
  end

  def destroy
  end


  private

  def item_params
  params.permit(:title, :opinion)
  end


end
