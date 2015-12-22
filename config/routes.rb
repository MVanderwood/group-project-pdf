Rails.application.routes.draw do
  get '/resumes/:id' => 'pdfs#show'
  get '/resumes/:id/edit' => 'pdfs#edit'
  patch '/resumes/:id' => 'pdfs#update'
end