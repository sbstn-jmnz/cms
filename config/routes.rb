Rails.application.routes.draw do
 mount Ckeditor::Engine => '/ckeditor'
 
  resources :categories, only: [:show]
  resources :pages, only: [:show]
 
  namespace :admin do
    resources :types, except: [:show]
    resources :menus, except: [:show]
    resources :pages # /admin/pages
    resources :categories
 end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

   Page.where.not(slug: nil).all.each do |page|
     get "/#{page.slug}", controller: "pages", action: "show", id: page.id
   end

  root 'admin/pages#index'
 
end
