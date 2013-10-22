RsgLinkedinGem::Application.routes.draw do

  resources :searches


  resources :linkedin
  match '/linkedin_profile' => "linkedin#linkedin_profile"
  match '/oauth_account' => "linkedin#oauth_account"
  match '/linkedin_oauth_url' => 'linkedin#generate_linkedin_oauth_url'

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  resources :users do
    match 'advanced_search' => 'users#advanced_search',
          on: :collection, via: [:get, :post], as: :advanced_search
  end

  root :to => 'linkedin#index'

end
