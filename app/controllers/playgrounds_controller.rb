class PlaygroundsController < ApplicationController
	def show
	  @playground = Playground.find(params[:id])
	end

	
end
