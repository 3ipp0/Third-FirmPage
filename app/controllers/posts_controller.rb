class PostsController < ApplicationController
	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new 
	end

	def create
		@post = Post.new(post_params)
		@post.category_id = params[:category][:category_id]

		if(@post.save)
			redirect_to @post
		else
			render 'new'
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		if(@post.update(post_params))
			@post.save
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@post = Post.find(params[:id])
		if @post.comments.exists?
			flash[:danger]="Firstly delete comments!"
			redirect_to post_path(@post)
		else
			@post.destroy
			redirect_to posts_path
		end
	end

	private

	def post_params
		params.require(:post).permit(:title, :body, :photo)
	end

end
