class CommentsController < ApplicationController
    before_action :logged_in?, only: [:create, :destroy]
    before_action :correct_user,   only: :destroy

    def new
      @comment = Comment.new
    end
    def index
      @comments = Comment.all.page(params[:page]).per 5
    end

    def create
      @comment = current_user.comments.build(comment_params)
      if @comment.save
        flash[:success] = "Bạn comment win"
        redirect_to news_url
      else
        render 'static_pages/news'
      end
    end
  
    def destroy
      @comment.destroy
      redirect_to news_url
    end

    private

    def comment_params
      params.require(:comment).permit :content, :user_id, :post_id 
    end

    def correct_user
      @comment = current_user.comments.find_by(id: params[:id])
    end
  end
