class RepositoriesController < ApplicationController
	def index
	end

	def show
		@result = Repository.new.execute(params[:username])

		respond_to do |f| 
			f.html {redirect_to :index}
			f.js
		end
	end
end