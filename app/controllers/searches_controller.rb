class SearchesController < ApplicationController

    def show
        @search = Search.find(params[:id])
      
    end 

    def new 
        @search = Search.new
        @gender = User.distinct.pluck(:gender)
        @age = User.distinct.pluck(:age)
        @profession = User.distinct.pluck(:profession)
    end

    def create
        @search = Search.create(search_params)
        redirect_to @search
    end 

    private

    def search_params
        params.require(:search).permit(:age, :gender, :profession)
    end 
end
