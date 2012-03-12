class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])

    if @post.save
      redirect_to posts_path, :notice => "Your Post was saved!"
      #goes to named route for our index action
    else
      render "new"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
      redirect_to posts_path, :notice => "Your Post has been updated"
    else
      render "edit", :notice => "An Error occured, please try again!"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, :notice => "Your Post has been deleted"
  end
  #show, new, create, edit, update, destroy
end
