Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#users here?


get '/software/:id', to: 'software#show'

get '/software', to: 'software#list'

end
