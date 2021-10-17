Rails.application.routes.draw do

  get('/',{to:'welcome#index' , as: 'root'})
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

  resources :users, only:[:new, :create]
  resource :session, only: [:new, :create, :destroy]
  # `resource` is singular instead of `resources`
  # Unlike `resources`, `resource` will create routes that do CRUD opreation
  # on only one thing. Also there will be no index reoutes, and no route will
  # have an `:id` wildcard. but the controller name is still plural
  #sessions also work
 
  resources :job_posts, only: [:new, :create, :show, :index, :destroy]
end
