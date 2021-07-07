class PostsController < ApplicationController
    def index
        @posts=Post.all
    end
    def show
        @post=Post.find(params[:id])
    end
    validates :title, presence: true 
    validates :content, length: {minimum: 100}
end
