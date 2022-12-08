class PagesController < ApplicationController

    def home
      render :home
  end
    def about
        render :about
    end

    # def home
    #     @user = current_user
  
    #     if user_signed_in?
    #         if @user.accounttype == 'government'
    #             @items = Item.order(:created_at)
    #             render :government_home
    #         else 
    #           @items = Item.order(:created_at)
    #           @time = Time.now.utc
    #             render :customer_home
    #         end
    #     end
    # end
end
