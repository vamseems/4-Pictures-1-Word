class DashboardController < ApplicationController
	before_filter :authenticate_user!
	def index
		if current_user.email == 'admin@xyz.com'
			redirect_to :controller=>'admin', :action => 'index'
		end
	end	
end
