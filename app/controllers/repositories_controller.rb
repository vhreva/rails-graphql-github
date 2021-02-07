# frozen_string_literal: true

class RepositoriesController < ApplicationController
  def index; end

  def show
    @result = Repository.new.execute(params[:username])

    respond_to do |format|
      format.js
    end
  end
end
