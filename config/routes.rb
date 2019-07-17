Rails.application.routes.draw do
  get 'rana/umer'
  get 'welcome/index'
  get 'welcome/contact'
  get 'welcome/about_us'

  root 'welcome#index'

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
