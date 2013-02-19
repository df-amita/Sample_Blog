class PostController < ApplicationController
	include AuthenticatedSystem
	before_filter :login_required
	layout 'index'
  def index
	  @post =  Post.all
	  #@uname=@post.user
	  end
  
  def new
	  @post=Post.new
  end

  def create
	  @post=Post.new(params[:post])
	  @post.user_id = current_user.id
	  if @post.save
	redirect_to :controller => "post", :action =>"index"
	else
		render "new"
	end
	end
def show
	p "============="
	puts params.inspect
	@post = Post.find_by_id(params[:id])
	
	p @post.id
	@comment = Comment.new
	p "777777777777777777777777777777777777"
	@c=@post.comments
	
	
	#@cuser=current_user.t_zone.description
	#~ @czone=TZone.find_by_(params[:zone])
	end
  
  def ccreate
	  @post = Post.find(params[:id])
    @comment = @post.comments.create(params[:comment])
    redirect_to :controller => "post", :action =>"show", :id=>@post.id
  end
end
