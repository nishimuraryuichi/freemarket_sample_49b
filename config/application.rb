require_relative 'boot'
require 'rails/all'
require 'payjp'
Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
# 西口キー消さないで

class MyPayjp
  def self.payjp(amount,id)
    Payjp::Charge.create(
      amount:amount,
      customer:id,
      currency:'jpy',
      )
  end

  def self.register_card(id,token)
    Payjp::Customer.create(
    id:id,
    card:token,
    )
  end

  def self.default_card_num?(id)
    begin
      card_id = Payjp::Customer.retrieve(id).default_card
    rescue
      return false
    end
  end

  def self.card_delete(id)
    if MyPayjp.default_card_num?(id)
      customer = Payjp::Customer.retrieve(id)
      customer.delete
    end
  end
end

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
module FreemarketSample49b
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
