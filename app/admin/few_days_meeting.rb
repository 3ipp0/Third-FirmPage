ActiveAdmin.register FewDaysMeeting do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :description, :start_time, :end_time, :photo, :photo_file_name, :photo_content_type
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
  	column :name
  	column :description
    column 'Image', sortable: :photo_file_name do |event| link_to event.photo_file_name, event.photo.url end
  	column :start_time
  	column :end_time
  	actions
  end

  form do |f|
    f.inputs "Event Details" do
      f.input :name
      f.input :description
      f.input :start_time
      f.input :end_time
  	    end
  	  f.inputs "Upload photo for event" do
        f.input :photo, required: true, as: :file
   	  end
    f.actions
  end

end
