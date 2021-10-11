Rails.application.routes.draw do

  get('/',{to:'welcome#index'})
  get('/goodbye',{to:'welcome#goodbye', as: :goodbye})
  get('/form_example',{to:'welcome#form_example'})
  post('/form_example',{to:'welcome#thankyou'})

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # RESTful routes
  #get('/questions', {to: 'questions#index'})
  #get('/questions/new',{to: 'questions#new'})
  #get('/questions/:id',{to: 'questions#show', as: :question })
  #delete('/questions/:id',{to: 'questions#destroy'})

  #post('/questions',{to: 'questions#create'})
 
  #get('/questions/:id/edit',{to: 'questions#edit', as: :edit_question })

  #patch('/questions/:id',{to: 'questions#update'})

  resources :questions do
    resources :answers, only:[:create, :destroy]
    
  end

end
