class PagesController < ApplicationController

  def index
  end

  def about
  end

  def portfolio
  end
  
  def contacts
  end

  def vacansy
  end

  def events
    @meetings = FewDaysMeeting.all
    @few_days_meetings = FewDaysMeeting.all
  end

  

  def blog
    @posts = Post.all
  end

end
