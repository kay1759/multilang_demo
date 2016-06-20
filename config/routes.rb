Rails.application.routes.draw do
  scope "/:locale" do
    get '/products/:product_code.:format' => 'products#show'
  end
end
