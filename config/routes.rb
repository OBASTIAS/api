Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'ufs/:date', to: 'uf#respuesta'
  
  post 'client/:user_name', to: 'uf#requestq'
end
