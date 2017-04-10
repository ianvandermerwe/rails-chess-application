Rails.application.routes.draw do
  # get 'welcome/index'
  # match ':controller(/:action(/:id))', :via => :get

  get '/chess', controller: 'chess_board', action: 'load_chess_board'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
end
