ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :email, :password, :locked_at, :unlock_token
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :reset_password_token
    column :reset_password_sent_at
    column :last_sign_in_at
    column :current_sign_in_ip
    column :last_sign_in_ip
    column :failed_attempts
    column :locked_at
    column :unlock_token
    column :created_at
    column :updated_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  filter :locked_at

  form do |f|
    f.inputs "User Details" do
      f.input :email
      
      if f.object.new_record?
    	f.input :password
    	f.input :password_confirmation
  	  end
      f.input :locked_at
      f.input :unlock_token
    end
    f.actions
  end
end
