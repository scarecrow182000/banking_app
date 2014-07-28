Rails.application.routes.draw do
  root 'transaction#index'

  post 'transaction/new'

  # get 'account/balance' => "account#show", as: :balance
  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

end
