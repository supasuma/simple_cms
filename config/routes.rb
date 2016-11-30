Rails.application.routes.draw do


  # root route...where to go if nothing to match...i.e just localhost:3000
  root "demo#index"

  # simple match route, long version - match "demo/index", :to => "demo#index", :via => :get
  get 'demo/index'

  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/google'

  get 'test_controller/index'

  get 'test_controller/new'



  # Default Route Structure :controller/:action/:id...this may go away in future rails versions
  # :action defaults to index
# get ":controller/(/:action(/:id))"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
