class ShortController < ApplicationController
  def index
  	
  end

  def shorten
		@link = Link.new(link_params)
		unless @link.original_url.include? "http"
		   @link.original_url = @link.original_url.prepend("http://")
		end

  	if @link.save
  		@user_link = @link.id.to_s(36)
  		render :success
  	end
  end

  def success
  	
  end

  def redirect
  	id = params[:hash].to_i(36)
		link = Link.find(id)
		redirect_to link.original_url
  end

  private
  def link_params
  	params.require(:link).permit(:original_url)
  end
end
