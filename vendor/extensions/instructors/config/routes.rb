Refinery::Core::Engine.routes.draw do

  get 'members', to: 'instructors/instructors#index'
  get 'members/:id', to: 'instructors/instructors#show', as: :member

  # Frontend routes
  namespace :instructors do
    resources :instructors, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :instructors, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :instructors, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
