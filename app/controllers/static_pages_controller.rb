class StaticPagesController < ApplicationController
	def home
	end

	def sending_email
		@customer = params[:customer]
		UserMailer.welcome_email(@customer).deliver
  		redirect_to :back
  	end
end