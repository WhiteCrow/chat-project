class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_login
    unless current_account.present?
      return respond_to do |format|
        format.js { render 'shared/login', layout: false}
      end
    end
    false
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:account]
  end

  def resource
    @resource ||= Account.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:account]
  end

  def after_sign_out_path_for(account)
    request.referrer
  end

end
