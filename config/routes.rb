RsgLinkedinGem::Application.routes.draw do

devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # devise_for :users, controllers: { :omniauth_callbacks => 'users/omniauth_callbacks' }
  resources :users

  resources :skills
  match '/browse' => 'skills#browse'


  match '/show_profile/:id' => 'linkedin#linkedin_profile_show', as: 'show_profile'
  resources :linkedin
  match '/linkedin_profile' => "linkedin#linkedin_profile"
  match '/oauth_account' => "linkedin#oauth_account"
  match '/linkedin_oauth_url' => 'linkedin#generate_linkedin_oauth_url'

  root :to => 'linkedin#index'

end
