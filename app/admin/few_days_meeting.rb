ActiveAdmin.register FewDaysMeeting do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :description, :start_time, :end_time
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  form do |f|
    f.inputs "Event Details" do
      f.input :name
      f.input :description
      f.input :start_time
      f.input :end_time
    end
    f.actions
  end

end
