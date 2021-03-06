Rails.application.routes.draw do
  scope "(:locale)", :locale => MATCH_LOCALE do
    resources :tickets, :except => :edit
    resources :users do
      resources :tickets, :except => :edit
    end
  end
end
