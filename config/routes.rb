Rails.application.routes.draw do

  resources :printers
  resources :barcodes
  resources :stock_masters
  resources :stock_trans do
    get :in, :on => :collection
    get :in_process, :on => :collection
    get :out, :on => :collection
  end

  resources :work_orders do
    get :receipt, :on => :collection
    get :confirm_box_label, :on => :member
    post :print_box_label, :on => :member
    get :stock_in_label, :on => :member
  end

  root to: 'visitors#index' #首頁

  devise_for :users

  resources :users do
    get :autocomplete_user_email, :on => :collection
  end

end
