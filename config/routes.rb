Rails.application.routes.draw do
	root to: 'pages#index'

	devise_for :admins
	
	mount_devise_token_auth_for 'User', at: 'api/v1/auth'
end
