Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'welcome/index'
  get 'articles/new'
  get 'articles/index'
  
  resources :articles
  
  root 'welcome#index'
  
end
