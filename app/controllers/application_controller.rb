class ApplicationController < ActionController::Base
    before_action :basic_auth, if: :production?
    protect_from_forgery with: :exception
    # Payjp.api_key = Rails.application.credentials.payjp[:payjp_private_key]

  private

  def production?
    Rails.env.production?
  end


  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end
