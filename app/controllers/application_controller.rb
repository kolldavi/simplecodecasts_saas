class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.



  private

  def set_contact
    @contact = Contact.new
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :stripe_card_token, :email, :password, :password_confirmation) }
  end

end
