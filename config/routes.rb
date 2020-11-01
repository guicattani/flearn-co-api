# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  mount Coverband::Reporters::Web.new, at: 'prod_coverage' if Rails.env == 'production'
end
