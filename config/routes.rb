Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "catalogs/all"
  post "catalogs/create"

  get "info_markets/result"
  post "info_markets/create"
  post "info_markets/find_by_token"
end
