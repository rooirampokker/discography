user = User.find_by_email(params[:user_email].presence)

if user && Devise.secure_compare(user.authentication_token, params[:user_token])
  sign_in user, store: false
end