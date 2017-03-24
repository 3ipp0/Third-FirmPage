class EmailsController < ApplicationController
  

  def new
  	@email = Email.new
  end
  
  def create
  	@email = Email.create(email_params)

    respond_to do |format|
      if @email.save
        # Tell the UserMailer to send a welcome email after save
        UserMailer.contact_email(@email).deliver_now
 
        format.html { redirect_to(root_path, notice: 'Email was successfully created.') }
        format.json { render json: @email, status: :created, location: @email }
      else
        format.html { render action: 'new' }
        format.json { render json: @email.errors, status: :unprocessable_entity }
      end
    end 
  end

   private

   def email_params
  	params.require(:email).permit(:name, :email, :subjet, :website, :comment)
   end

end
