class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	private

	def configure_permitted_parameters
		added_attrs = [:first_name, :last_name, :first_name_kana, 
			:last_name_kana, :postal_number, :address, :telephone_number,
			 :email, :password, :password_confirmation]
		devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
		devise_parameter_sanitizer.permit :account_update, keys: added_attrs
		 #デフォルトでメールアドレスとパスワードを受け取るようになっている。
	end
end