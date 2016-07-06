ActiveAdmin.register Device do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params do
    params = [:device_type, :model_name, :network, :size, :image, :price_cents]
  end

  # controller do
  #   def update
  #     device = Device.new(permitted_params[:device])
  #     if device.update(device_params)
  #       render json: device, status: 200, location: [:api, device]
  #     else
  #       render json: { errors: device.errors }, status: 422
  #     end
  #   end
  # end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
