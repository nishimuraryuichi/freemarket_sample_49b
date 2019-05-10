class CardsController < ApplicationController

  def new

  end

  def create
    MyPayjp.register_card(params[:user_id],params[:payjpToken])
    redirect_to root_path
  end

end
