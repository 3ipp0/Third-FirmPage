ActiveAdmin.register Post do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :body, :photo, :photo_file_name, :photo_content_type

# or

# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
  	column :title
  	column :body
	  column 'Image', sortable: :photo_file_name do |post| link_to post.photo_file_name, post.photo.url end
  	# column :photo_file_name
  	column :created_at
  	column :updated_at
  	actions
  end
	
  form do |f|
  	f.inputs "Project Details" do
	  f.input :title
	  f.input :body
	end
   	  f.inputs "Upload photo for post" do
        f.input :photo, required: true, as: :file
   	  end
    f.actions
  end
  

end
