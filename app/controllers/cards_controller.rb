class CardsController < ApplicationController

  def new

  end

  def create
    MyPayjp.register_card(current_user.id,params[:payjpToken])
    redirect_to pay_method_profile_path(current_user.id)
  end

  def destroy
    MyPayjp.card_delete(current_user.id.to_s)
    render :new
  end

end
