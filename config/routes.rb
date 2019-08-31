Rails.application.routes.draw do
  get 'pages/tweet'
  get 'pages/candidate'
  root "pages#tweet"
end
