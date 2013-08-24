class PostsController < ApplicationController
	def new	
	end
	def index
		@post = Post.all
	end
	def create 
		 post= params.require(:post).permit(:title, :text)
		 @post=Post.new(post)

   @post.save
  redirect_to @post
end
	def show
		@post = Post.find(params[:id])
	end
 def edit
 		@post = Post.find(params[:id])
 		 

 end
end
