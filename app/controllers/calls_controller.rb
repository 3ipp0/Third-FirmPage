class CallsController < ApplicationController
  respond_to :html, :js

  def new
  	@call = Call.new
  end
  
  def create
  	@call = Call.create(params[:call])

    respond_to do |format|
      format.html { redirect_to root_path, flash[:success] = "You succsesfully update your account!" }
      format.js 
    end  
  end

  private

   def call_params
  	params.require(:call).permit(:full_name, :phone_number, :body )
   end

end
