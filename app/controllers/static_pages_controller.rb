class StaticPagesController < ApplicationController
	def home

	end

	def sending_email
		textIn = (params[:customer])[:phone_number]
		if textIn.present? and textIn.count('-') == 0 then
			@customer = params[:customer]
			UserMailer.welcome_email(@customer).deliver
	  		flash[:success] = "Заявка отправлена. Мы перезвоним Вам в ближайшее время."
  		else
  			flash[:error] = "Поле Телефон заполнено некорректно, JavaScript не работает, поэтому сообщение в таком виде."+(params[:customer])[:phone_number].count('-').to_s
  		end
  		redirect_to :back
  	end
end