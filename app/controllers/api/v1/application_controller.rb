module Api
	module V1
		class ApplicationController < ::ApplicationController
			skip_before_action :verify_authenticity_token, raise: false
			include DeviseTokenAuth::Concerns::SetUserByToken
			before_action :authenticate_user!
		end
	end
end
