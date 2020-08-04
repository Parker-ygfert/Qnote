Rails.application.routes.draw do
  root "pages#index"
  
  resource :users, only: [:create, :edit, :update] do
    collection do
      get :sign_up
      get :sign_in
      post :login
      delete :sign_out
    end
  end

end
