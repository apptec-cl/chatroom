Rails.application.routes.draw do


	devise_for :users,:controllers => { :sessions => "user/sessions", :registrations => "user/registrations" }
	root to: 'home#index'

	resources :rooms do
		collection do
		end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
