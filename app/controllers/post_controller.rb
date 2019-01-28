# coding: utf-8
class PostController < ApplicationController
  def index
  @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id:params[:id])
    @message = Message.where(postid: @post.id)
  end

  def new
    
  end
  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/post/index")
  end
  def save
    @post = Post.find_by(id:params[:id])
    @message = Post.new(postid: @post.id, content: params[:content])
    @message.save
    redirect_to("/post/#{@post.id}")
  end
  
end
