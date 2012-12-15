Leeze::Application.routes.draw do
	resources :tours
	get '/:category_id', to: 'tours#index', as: 'category_tours'
	root to: 'tours#index'
end