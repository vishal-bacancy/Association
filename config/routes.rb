Rails.application.routes.draw do
  resources :employees, :doctors, :patients, :appointments

  get 'appointments/index'

  get 'patients/index'

  get 'doctors/index'

  get 'employees/index'

  get '/appointments_dr/:id', to: 'appointments#appos', as: 'appointment_of_doctor'

  



  root 'employees#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
