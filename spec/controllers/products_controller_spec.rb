require 'rails_helper'

describe ProductsController do
  describe 'GET #edit_index' do
    it "renders the :update templete" do
      products = create_list(:products, 3)
      get :edit_index
      expect(assigns(:products)).to match(products.sort{|a,b|a.create_at <=> a.create_at})
    end
  end
end
