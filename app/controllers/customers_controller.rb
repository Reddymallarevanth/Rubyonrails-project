class CustomersController < ApplicationController
    def index
        @customers = User.order(:created_at)
        render :index
    end

    def destroy
        @customer = User.find(params[:id])
        @customer.destroy
        flash[:success] = 'The customer was successfully destroyed.'
        redirect_to customer_url, status: :see_other

    end

    def edit
        @diary = Diary.find(params[:id])
        @user = current_user
        @price = @diary.price
        @time = Time.now.utc
        if @diary.creator.accounttype != 'government'
          @price = @diary.price + 50
        end
     
        if @diary.update(creator:@user,price:@price)
  
          flash[:success] = 'Bid was Successful.'
          redirect_to diary_url
    
      end
  
  end
end
