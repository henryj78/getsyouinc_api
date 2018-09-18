Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :members
      resources :payments
      resources :playdates
    end
  end
end
