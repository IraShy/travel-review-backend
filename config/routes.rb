Rails.application.routes.draw do
  resources :reviews
end

# Prefix Verb   URI Pattern            Controller#Action
# reviews GET    /reviews(.:format)     reviews#index
#         POST   /reviews(.:format)     reviews#create
#  review GET    /reviews/:id(.:format) reviews#show
#         PATCH  /reviews/:id(.:format) reviews#update
#         PUT    /reviews/:id(.:format) reviews#update
#         DELETE /reviews/:id(.:format) reviews#destroy