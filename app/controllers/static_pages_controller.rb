class StaticPagesController < ApplicationController
	def home
	end

	def sending_email
		@customer = params[:customer]
		UserMailer.welcome_email(@customer).deliver
  		flash[:success]="Заявка отправлена. Мы перезвоним Вам в ближайшее время."
  		redirect_to :back
  	end
end