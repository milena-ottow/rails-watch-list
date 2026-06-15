Rails.application.routes.draw do

  root to: "lists#index" #quand je lance l'app, redirection auto sur l'index

  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create] #je neste car j'ai besoin de l'id de la liste pour créer un bookmark
  end
  resources :bookmarks, only: :destroy #je ne neste pas car id de list inutile pour destroy le bookmark
end
