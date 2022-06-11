ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
 permit_params :category_id, :brand_id, :title, :bytitle, :content, :price, :old_price, :status, :keywords, :description, :img, :hit
  #
  # or
  #
  # permit_params do
  #   permitted = [:category_id, :brand_id, :title, :bytitle, :content, :price, :old_price, :status, :keywords, :description, :img, :hit]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  filter :price
end
