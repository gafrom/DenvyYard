class PlaygroundsController < ApplicationController
	def show
	  @playground = Playground.find(params[:id])
	  @picturesNumber = @playground.year
	end

	def update
		@playground = Playground.find(params[:id])
	    if @playground.update_attributes(pg_params) 
	      flash[:success] = "Successfuly updated" 
	    else 
	      flash[:error] = "Not updated"
	    end
	    redirect_to :back
	end

	private

  def pg_params
    params.require(:playground).permit(:name_RU, :text1, :text2, :text3, :text4, :price, :min_price)
  end
end
