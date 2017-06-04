class ApplicationController < ActionController::API

  before_filter :authenticate_user_from_token!
  # This is Devise's authentication
  before_filter :authenticate_user!

  def default_serializer_options
    { root: false }
  end

  private
  def authenticate_user_from_token!
    email = params[:email].presence
    user       = email && User.find_by_email(email)

    # Notice how we use Devise.secure_compare to compare the token
    # in the database with the token given in the params, mitigating
    # timing attacks.
    if user && Devise.secure_compare(user.authentication_token, params[:authentication_token])
      sign_in user, store: false
    end
  end
end
