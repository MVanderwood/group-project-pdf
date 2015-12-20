Rails.application.routes.draw do
  get '/resumes/:id' => 'pdfs#show'
end