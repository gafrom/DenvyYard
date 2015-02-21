class StaticPagesController < ApplicationController
	def home
		
	end

	def mulch

	end

	def about
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

  	def create
		@aaa = params[:option]
		@playground = Playground.find(@aaa[:playground_id])
	   	@option = @playground.options.create(ad_params)

	    if @option.save
	      flash[:success] = "Новая запись добавлена успешно"
	      redirect_to 'optionsediting/2'
	    else
	      flash[:error] = "Не получилось добавить запись"
	      redirect_to 'optionsediting/2'
	    end
  	end
  	def ad_params   
    	params.require(:option).permit(:playground_id, :header, :content, :header2, :content2)
	end
end