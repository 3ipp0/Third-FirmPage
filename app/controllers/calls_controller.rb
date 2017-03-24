class CallsController < ApplicationController
  respond_to :html, :js

  def new
  	@call = Call.new
  end
  
  def create
  	@call = Call.create(call_params)

    respond_to do |format|
      if @call.save
        # Tell the UserMailer to send a welcome email after save
        UserMailer.request_call(@call).deliver_now
 
        format.html { redirect_to(root_path, notice: 'Call was successfully created.') }
        format.json { render json: @call, status: :created, location: @call }
      else
        format.html { render action: 'new' }
        format.json { render json: @call.errors, status: :unprocessable_entity }
      end
    end  

  end

  private

   def call_params
  	params.require(:call).permit(:full_name, :phone_number, :body )
   end

end
