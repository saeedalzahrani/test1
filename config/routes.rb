Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get "/patients", to: "patients#index", as: "patients"
  get "/patients/new", to: "patients#new", as: "new_patient"
  get "/patients/:id/edit", to: "patients#edit", as: "edit_patient"

  # resources :patients

  get "/patients/:id", to: "patients#show", as: "patient"
  delete  "/patients/:id",  to: "patients#destroy" 
  
  post "/patients", to: "patients#create"
  patch "/patients/:id", to: "patients#update"

  get "/authors",   to: "authors#index", as: "authors"
  get "/authors/:id", to: "authors#show", as: "author"
  delete  "/authors/:id",  to: "authors#destroy" 

  get "/books",     to: "books#index", as: "books" #books_path = /books
  get "/books/new", to: "books#new", as: "new_book" #new_book_path = /books/new
  get "/books/:id/edit", to: "books#edit", as: "edit_book" #edit_book_path(@book)
  
                        #controller#method
  get "/books/:id", to: "books#show", as: "book" #book_path(book) = /books/:id
  delete  "/books/:id",  to: "books#destroy"
  post "/books", to: "books#create"
  patch "/books/:id", to: "books#update"


  

end
