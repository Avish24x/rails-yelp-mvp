# Rails.application.routes.draw do
#   resources :restaurants do
#     resources :reviews
#   end
#   resources :reviews, except: [:new, :create] do
#     member do
#       delete :destroy
#     end
#   end
# end
Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews
  end
  resources :reviews, only: [:destroy]
end
