class OptionsController < ApplicationController
	def edit
		@playground = Playground.find(params[:id])
	end

	

	skip_before_action :verify_authenticity_token
	
	def create
		@aaa = params[:option]
		@playground = Playground.find(@aaa[:playground_id])
	   	@option = @playground.options.create(ad_params)

	    if @option.save
	      flash[:success] = "Новая запись добавлена успешно"
	      redirect_to edit_option_path(@playground)
	    else
	      flash[:error] = "Не получилось добавить запись"
	      redirect_to edit_option_path(@playground)
	    end
  	end


	def update
		@option = Option.find(params[:id])
	    if @option.update_attributes(ad_params) 
	      flash[:success] = "Successfuly updated" 
	    else 
	      flash[:error] = "Not updated"
	    end
	    redirect_to :back
	end


  def destroy
  	@aaa = Option.find(params[:id])
  	@bbb = @aaa.playground
    Option.find(params[:id]).destroy
    flash[:success] = "Successfuly Deleted"
    redirect_to edit_option_path(@bbb)
  end

  private
  def ad_params   
    	params.require(:option).permit(:playground_id, :header, :content, :header2, :content2)
  end
end
