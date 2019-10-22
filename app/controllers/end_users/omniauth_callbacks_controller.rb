class EndUsers::OmniauthCallbacksController < ApplicationController
  def google_oauth2
    callback_from :google_oauth2
  end

  private

  def callback_from(provider)
    provider = provider.to_s

    @user = EndUser.find_for_oauth(request.env['omniauth.auth'])

    if @user.persisted?
      flash[:success] = "ログインが完了しました。"
      sign_in_and_redirect @user, event: :authentication
    else
      session["devise.#{provider}_data"] = request.env['omniauth.auth']
      redirect_to new_end_user_registration_url
    end
  end
end
