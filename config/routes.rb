Rails.application.routes.draw do
  namespace :api do

    get "/activities" => 'activities#index'
    get "/activities/:id" => 'activities#show'
    post "/activities" => 'activities#create'
    patch "/activities/:id" => 'activities#update'
    delete "/activities/:id" => 'activities#destroy'


    get "/children" => 'children#index'
    get "/children/:id" => 'children#show'
    post "/children" => 'children#create'
    patch "/children/:id" => 'children#update'
    delete "/children/:id" => 'children#destroy'


    get "/job_activities" => 'job_activities#index'
    get "/job_activities/:id" => 'job_activities#show'
    post "/job_activities" => 'job_activities#create'
    patch "/job_activities/:id" => 'job_activities#update'
    delete "/job_activities/:id" => 'job_activities#destroy'



    get "/jobs" => 'jobs#index'
    get "/jobs/:id" => 'jobs#show'
    post "/jobs" => 'jobs#create'
    patch "/jobs/:id" => 'jobs#update'
    delete "/jobs/:id" => 'jobs#destroy'

    post "/sessions" => 'sessions#create'

    post "/users" => "users#create" 
  end
end
