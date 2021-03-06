# frozen_string_literal: true

class MenusController < ProtectedController
  before_action :set_menu, only: %i[show update destroy]

  # GET /menus
  def index
    @menus = current_user.menus.all

    render json: @menus
  end

  # GET /menus/1
  def show
    render json: @menu
  end

  # POST /menus
  def create
    @menu = current_user.menus.build(menu_params)

    if @menu.save
      render json: @menu, status: :created
    else
      render json: @menu.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /menus/1
  def update
    if @menu.update(menu_params)
      head :no_content
    else
      render json: @menu.errors, status: :unprocessable_entity
    end
  end

  # DELETE /menus/1
  def destroy
    @menu.destroy

    head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_menu
    @menu = current_user.menus.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def menu_params
    params.require(:menu).permit(:title, :notes, :user_id)
  end

  private :set_menu, :menu_params
end
