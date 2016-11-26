Rails.application.routes.draw do

#Define Root URL
root 'pages#index'

#Define routes for pages, get means I want this page to be access as a web page.

get '/profile' => 'pages#profile'#display clean URL's

get '/explore' => 'pages#explore'

get '/home' => 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
