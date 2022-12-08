class DiariesController < ApplicationController
    before_action :authenticate_user!, except: [:index]

    # before_action :require_permission, except: [:index, :show, :new, :create]

    # def require_permission
    #     if Diary.find(params[:id]).creator != current_user
    #       flash[:error] = 'You do not have permission to do that.'
    #       redirect_to diaries_path
    #     end
    #   end

    def upload
        @uploads = Diary.find_by(user_id: current_user.id)
        render :upload
    end
    def index
        @diaries = Diary.all
        if params[:search]
            @search_term = params[:search]
            @diaries = @diaries.search_by(@search_term)
        end
        render :index
    end

    def winner
        @diaries = Diary.all
        @time = Time.now.utc
        render :winner
      end


    def show
        @diary = Diary.find(params[:id])
        render :show
      end
    def new
        @diary = Diary.new
        render :new
    end

    def edit
        @diary = Diary.find(params[:id])
        render :edit
    end

    def destroy
        @diary = Diary.find(params[:id])
        @diary.destroy
        flash[:success] = "The diary was successfully destroyed."
        redirect_to diaries_url
      end
    


    def update
        @diary = Diary.find(params[:id])
        if @diary.update(params.require(:diary).permit(:name, :figure_image, :description, :price, :deadline))
          flash[:success] = "Diary was successfully updated!"
          redirect_to diaries_url
        else
          flash.now[:error] = "Diary update failed"
          render :edit
        end
      end


    def create
        @diary = current_user.diaries.new(params.require(:diary).permit(:name, :figure_image, :description, :price, :deadline))
        if @diary.save
          flash[:success] = 'Diary uploaded successfully!'
          redirect_to diaries_url
        else
          flash.now[:error] = 'Diary upload failed'
          render :new, status: :unprocessable_entity
        end
      end

     
end
