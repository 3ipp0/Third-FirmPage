class PagesController < ApplicationController

  def index
    @call = Call.new(params[:id])
  end

  def about
  end

  def portfolio
    @call = Call.new(params[:id])
  end
  
  def contacts
    @call = Call.new(params[:id])
  end

  def vacansy
    @call = Call.new(params[:id])
  end

  def events
    @few_days_meetings = FewDaysMeeting.all
  end

  def blog
    @posts = Post.all
  end

end
