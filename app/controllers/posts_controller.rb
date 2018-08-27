class PostsController < ApplicationController
    before_action :logged_in?, only: [:create, :destroy]
    before_action :correct_user,   only: :destroy

    def index
      @posts = Post.all.page(params[:page]).per 7
    end

    def create
      @post = current_user.posts.build(post_params)
      if @post.save
        flash[:success] = "Bạn đã đăng bài thành công!"
        redirect_to news_url
      else
        render 'static_pages/news'
      end
    end
  
    def destroy
      @post.destroy
      flash[:success] = "Bạn đã xóa bài thành công!"
      redirect_to news_url
    end

    private

    def post_params
      params.require(:post).permit(:content)
    end

    def correct_user
      @post = current_user.posts.find_by(id: params[:id])
    end

  end
