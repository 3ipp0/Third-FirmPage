class EmailsController < ApplicationController
  

  def new
  	@email = Email.new
  end
  
  def create
  	@email = Email.create(email_params)

    respond_to do |format|
      format.html { redirect_to root_path, flash[:success] = "You succsesfully wrire us!" }
      format.js 
    end  
  end

   private

   def email_params
  	params.require(:email).permit(:name, :email, :subjet, :website, :comment)
   end

end
