#!/usr/bin/env ruby

require 'sidekiq/web'

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :movies
  resources :theatres
  resources :movie_shows
  resources :screens
  resources :seatings
  resources :bookings
  resources :payments
  resources :notifications
  resources :feedbacks
  resources :snack_orders
  resources :snacks
  resources :customers
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
