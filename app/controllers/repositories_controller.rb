class RepositoriesController < ApplicationController
	def show
		@result = Repository.new.execute(params[:username])
	end
end