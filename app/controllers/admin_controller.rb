class AdminController < ApplicationController

	def view_all
		@list = Welcomes.all
	end	

  	def create 
  	  if params[:welcome]
		  @blog_create = Welcomes.new(params[:welcome])
		  if @blog_create.save
		     flash[:notice] = "Blog Posted"
		  else
		     flash[:alert] = "Blog not Posted"           
		  end  
		  redirect_to  admin_create_path
  	  end
  	end

end
