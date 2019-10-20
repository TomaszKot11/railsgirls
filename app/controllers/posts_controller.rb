class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
        @comment = Comment.new
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to '/posts'
    end

    # TWORZENIE
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.save!
        redirect_to '/posts' # redirect_to przenosi na inna strone (robi przekierowanie)
    end


    # Edytowanie
    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.update!(post_params)
        redirect_to '/posts'
    end

    def post_params
        params.require(:post).permit(:name, :description, :user_id)
    end
end
