class AuthorsController < ApplicationController
    def index
        @authors = Author.all
    end

    def show
      @authors = Author.find(params[:id])   
    end

    def destroy
        @authors = Author.find(params[:id])
        @authors.destroy
        redirect_to authors_path 
    end
end
