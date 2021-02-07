# frozen_string_literal: true

Rails.application.routes.draw do
  resource :repository, only: %i[index show]

  root to: 'repositories#index'
end
