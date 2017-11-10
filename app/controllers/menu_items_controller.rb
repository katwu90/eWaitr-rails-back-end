# frozen_string_literal: true

class MenuItemsController < OpenReadController
  before_action :set_menu_item, only: %i[update destroy]
  before_action :set_menu, only: %i[create update]
  # GET /menu_items
  def index
    @menu_items = MenuItem.all

    render json: @menu_items
  end

  # GET /menu_items/1
  def show
    render json: MenuItem.find(params[:id])
  end

  # POST /menu_items
  def create
    @menu_item = current_user.menu_items.build(menu_item_params)
    if @menu_item.save
      render json: @menu_item, status: :created
    else
      render json: @menu_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /menu_items/1
  def update
    if @menu_item.update(menu_item_params)
      head :no_content
    else
      render json: @menu_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /menu_items/1
  def destroy
    @menu_item.destroy
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_menu_item
    @menu_item = current_user.menu_items.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def menu_item_params
    params.require(:menu_item).permit(:name, :description, :price, :food_category, :menu_id)
  end

  def set_menu
    menu_id = menu_item_params[:menu_id]
    @menu = current_user.menus.find(menu_id)
  end

  private :set_menu_item, :menu_item_params, :set_menu
end
