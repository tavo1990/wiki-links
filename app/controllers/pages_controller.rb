#Pages controllers contain all the code for any page inside /pages
class PagesController < ApplicationController
#All the back-end code for pages/index	
  def index
  end
#All the back-end code for pages/home
  def home
    @posts = Post.all
  end
#All the back-end code for pages/profile
  def profile
  	# Grab the username from the URL as :id
  	# if (User.find_by_username(params[:id]))
  		@username = params[:id]
      @posts = Post.all
      @newPost = Post.new
  	# else
  	# 	#Redirect to 404 (for now)
  	# 	redirect_to root_path, :notice=> "User not found!"
  	# end
  end
end

