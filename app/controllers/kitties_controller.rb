class KittiesController < ApplicationController

  def index
    @kitties = Kitty.all
  end

  def new
    @kitty = Kitty.new
  end

  def create
    @kitty = Kitty.new(kitty_params)
    if @kitty.save
      redirect_to root_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    kitty = Kitty.find(params[:id])
    kitty.destroy!
    redirect_to root_path
  end

  private

  def kitty_params
    params.require(:kitty).permit(:description, :species, :found_at, :address)
  end
end
