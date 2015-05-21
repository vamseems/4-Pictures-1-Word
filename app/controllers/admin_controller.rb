class AdminController < ApplicationController
  	def index
  		if current_user.email == "admin@xyz.com"
  			@users = User.all
	  		@pics = Pictures.all
	  	else
	  		redirect_to '/'
	  	end
  	end

  	def serve
		@photo = Pictures.find(params[:id])
		send_data(@photo.data, :type => @photo.mime_type, :filename => "#{@photo.filename}.jpg", :disposition => "inline")
	end

end
