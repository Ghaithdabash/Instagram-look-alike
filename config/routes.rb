Rails.application.routes.draw do
  devise_for :users
  resources :pics do
    member do
      #get :action
      put :like, to: "pics#upvote"
      #post :action
      #delete :action
    end
  end
  root "pics#index"
end
