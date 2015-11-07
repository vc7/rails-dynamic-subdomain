class PostsController < ApplicationController

  before_filter :find_blog

  def index
  end
  
  def find_blog
    case request.host
    when "www.#{Setting.host}", Setting.host, nil
    else     
      @subdomain = request.host.split('.').first
    end  
  end
end
