class MicropostsController < ApplicationController
	def edit
		@playground = Playground.find(params[:id])
	end

	

	skip_before_action :verify_authenticity_token
	
	def create
		@aaa = params[:micropost]
		@playground = Playground.find(@aaa[:playground_id])
	   	@micropost = @playground.microposts.create(ad_params)

	    if @micropost.save
	      flash[:success] = "Новая запись добавлена успешно"
	      redirect_to edit_micropost_path(@playground)
	    else
	      flash[:error] = "Не получилось добавить запись"
	      redirect_to edit_micropost_path(@playground)
	    end
  	end

  def destroy
  	@aaa = Micropost.find(params[:id])
  	@bbb = @aaa.playground
    Micropost.find(params[:id]).destroy
    flash[:success] = "Successfuly Deleted"
    redirect_to edit_micropost_path(@bbb)
  end

  private
  def ad_params   
    	params.require(:micropost).permit(:playground_id, :header, :content)
 	end
end
