require 'bundler'
require_relative './novo_coffee.rb'

Bundler.require

class NovoCoffeeApp < Sinatra::Base
  set :method_override, true
  set :root, 'lib/app'
  set :public_folder, 'public'

  not_found do
    erb :error
  end

  get '/' do
  	erb :index
  end

  get '/cart' do
  	"test" #this may or may not be its own page
  end

  get '/my-account' do
  	erb :myaccount
  end

  post '/my-account' do
  	'test'
  end

  get '/products/:product_id' do
  	"test"
  end

  get '/shop' do
  	erb :shop
  end

  get '/wholesale' do
    erb :wholesale
  end

  get '/news-events' do
  	erb :news_events
  end

  get '/news-events/2' do
  	erb :news_events_page_two
  end

  get '/about' do
  	erb :about
  end

  get '/contact-locations' do
  	erb :contact_locations
  end

  get '/subscriptions' do
  	erb :subscriptions
  end

end
