Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resource :session, only: [:new,:create,:destroy]
  root to: redirect('/users')
end
# Prefix Verb   URI Pattern                                                                              Controller#Action
# users GET    /users(.:format)                                                                         users#index
#       POST   /users(.:format)                                                                         users#create
# new_user GET    /users/new(.:format)                                                                     users#new
# edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#  user GET    /users/:id(.:format)                                                                     users#show
#       PATCH  /users/:id(.:format)                                                                     users#update
#       PUT    /users/:id(.:format)                                                                     users#update
#       DELETE /users/:id(.:format)                                                                     users#destroy
# session_index POST   /session(.:format)                                                                       session#create
# new_session GET    /session/new(.:format)                                                                   session#new
# session DELETE /session/:id(.:format)                                                                   session#destroy
# rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
# rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
# rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)
# miker@QUICK-AND-DIRTY:.../music_app$ rails routes
# /home/miker/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/railties-5.2.8/lib/rails/app_loader.rb:53: warning: Insecure world writable dir /mnt/c in PATH, mode 040777
# Prefix Verb   URI Pattern                                                                              Controller#Action
# users GET    /users(.:format)                                                                         users#index
#       POST   /users(.:format)                                                                         users#create
# new_user GET    /users/new(.:format)                                                                     users#new
# edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#  user GET    /users/:id(.:format)                                                                     users#show
#       PATCH  /users/:id(.:format)                                                                     users#update
#       PUT    /users/:id(.:format)                                                                     users#update
#       DELETE /users/:id(.:format)                                                                     users#destroy
# session_index POST   /session(.:format)                                                                       session#create
# new_session GET    /session/new(.:format)                                                                   session#new
# session DELETE /session/:id(.:format)                                                                   session#destroy
# rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
# rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
# rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#cr