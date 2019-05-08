class UsersController < ApplicationController

  def new

  end

  def card_register_page
  end

  def card_register
    MyPayjp.register_card(params[:id],params[:payjpToken])
  end

  def buy
    MyPayjp.payjp(params[:id],params[:payjpToken])
  end

private

end

# params.require(:product).permit(:name,:price,:detail,:parent_category_id,:status_id,:delivery_fee_id,:prefecture_id,:preparation_id,images: [])
