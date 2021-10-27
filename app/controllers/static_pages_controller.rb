class StaticPagesController < ApplicationController
  def home
    # デフォルトだと app/views/static_pages/home.html.erb
    # generateで一緒に作られる
  end

  def help
  end
  
  def about
  end
end
