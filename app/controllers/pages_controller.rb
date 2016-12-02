#Pages controllers contain all the code for any page inside /pages
class PagesController < ApplicationController
#All the back-end code for pages/index	
  def index
  end
#All the back-end code for pages/home
  def home
  end
#All the back-end code for pages/profile
  def profile
  	#Grab the username from the URL as :id
  	# if (User.find_by_username(params[:id]))
  		@username = params[:id]
  	# else
  	# 	#Redirect to 404 (fot now)
  	# 	redirect_to root_path, :notice => "User not found!"
  	# end
  end
#All the back-end code for pages/explore
  def explore
  end
end
