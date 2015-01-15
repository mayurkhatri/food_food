ActiveAdmin.register Picture do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
 # permit_params :name, :image

 # form(:html => { :multipart => true }) do |f|
 #   f.inputs "Recipe" do
 #     f.input :name
 #   end
 #   f.inputs "Picture", :for => [:picture, f.object.picture || Picture.new] do |picture_form|
 #     picture_form.input :name
 #     picture_form.input :image, :as => :file, :hint => picture_form.template.image_tag(picture_form.object.image.url)
 #   end
 #   f.actions
 # end
end
