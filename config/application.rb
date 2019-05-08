require_relative 'boot'
require 'rails/all'
require 'payjp'
Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']


class MyPayjp
  def self.create_token(number, cvc, exp_month, exp_year)
    token = Payjp::Token.create({
      card: {
        number:    number,
        cvc:       cvc,
        exp_month: exp_month,
        exp_year:  exp_year,
      }},
      {
        'X-Payjp-Direct-Token-Generate': 'true'
      }
    )
    return token.id
  end

  def self.payjp(amount,id)
    Payjp::Charge.create(
      amount:amount,
      customer:id,
      currency:'jpy',
      )
  end

  def self.register_card(id,token,name)
    Payjp::Customer.create(
    id:id,
    card:token,
    description: name,
    )
  end

  def self.customer_inf(id)
    Payjp::Customer.retrieve(id)
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
