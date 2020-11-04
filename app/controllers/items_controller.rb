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
    @item = Item.new(item_params)
    if @item.save
    redirect_to items_path
    end
  end

  def update
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to items_path
    end
  end


  private

  def item_params
  params.permit(:title, :opinion)
  end


end
