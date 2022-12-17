class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name])
    end

  private

    def after_sign_in_path_for(resource)
      root_path unless customer_signed_in?# ログイン後に遷移するpathを設定
    end

    def after_sign_out_path_for(resource)
      new_customer_session_path # ログアウト後に遷移するpathを設定
    end


end
