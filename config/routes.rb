Leeze::Application.routes.draw do
  devise_for :users

	resources :tours
	get '/:category_id', to: 'tours#index', as: 'category_tours'
	root to: 'tours#index'
end