class PagesController < ApplicationController

  def index
    @call = Call.new(params[:id])
    @email = Email.new(params[:id])
    @few_days_meetings = FewDaysMeeting.all
    @posts = Post.last(3).reverse
  end

  def about
    @email = Email.new(params[:id])
  end

  def portfolio
    @call = Call.new(params[:id])

  end
  
  def contacts
    @call = Call.new(params[:id])
    @email = Email.new(params[:id])
  end

  def vacansy
    @call = Call.new(params[:id])
    @email = Email.new(params[:id])
  end

  def events
    @few_days_meetings = FewDaysMeeting.all
  end

  def blog
    @posts = Post.all
  end

end
