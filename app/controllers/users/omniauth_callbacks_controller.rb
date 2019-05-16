class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    info = User.from_omniauth(request.env["omniauth.auth"]) #リクエストを送ってきたユーザのヘッダー情報や環境変数を取得する
    @user = info[:user]
    sns_id = info[:sns_id]
    if  @user.persisted? #保存済みかどうかチェック
      sign_in_and_redirect @user #this will throw if @user is not activated
      # set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
      flash[:notice] = "Facebookアカウントからログインしました"
    else
      session["devise.sns_id"] = sns_id
      render template: "devise/registrations/new"
    end
  end

  def failure
    redirect_to new_user_registration_path, alert: 'Facebookにアカウントが存在しません。'
  end
end