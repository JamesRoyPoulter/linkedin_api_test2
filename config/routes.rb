RsgLinkedinGem::Application.routes.draw do

  resources :skills

  resources :linkedin

  match '/linkedin_profile' => "linkedin#linkedin_profile"
  match '/oauth_account' => "linkedin#oauth_account"
  match '/linkedin_oauth_url' => 'linkedin#generate_linkedin_oauth_url'

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  root :to => 'linkedin#index'

end
