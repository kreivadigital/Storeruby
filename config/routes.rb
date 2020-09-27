Rails.application.routes.draw do
  devise_for :users
  #resources :sales
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #root to: "sales#index"

  get 'sales/index'
  get 'sales/import' => 'sales#my_import'
  get 'statistics/statistics'
  root to: 'statistics#statistics'

  resources :sales  do
     collection {post :import}
   end

     namespace :api, defaults: {format: :json} do
       namespace :v1 do
         devise_scope :user do
           post "sign_up", to: "registrations#create"
           post "sign_in", to: "sessions#create"
         end
       end
     end
end
