ActiveAdmin.register Show do


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
  permit_params :name, :day_of_telecast, :time_of_telecast, :description, picture_attributes: [:id, :name, :image, :image_cache]
  
  form(:html => { :multipart => true }) do |f|
    f.inputs "Recipe" do
      f.input :name
    end
    f.inputs "Picture", :for => [:picture, f.object.picture || Picture.new] do |picture_form|
      picture_form.input :name
      picture_form.input :image, :as => :file, :hint => picture_form.object.image.present? ? picture_form.template.image_tag(picture_form.object.image.url(:thumb)) : picture_form.template.content_tag(:span, "no image yet")
      picture_form.input :image_cache, :as => :hidden, :value => picture_form.object.image_cache
    end
    f.actions
  end

  form(html: {multipart: true}) do |f|
    f.inputs "Show" do
      f.input :name
    end
    f.inputs "Picture", :for => [:picture, f.object.picture || Picture.new] do |picture_form|
      picture_form.input :name
      picture_form.input :image, :as => :file, :hint => picture_form.object.image.present? ? picture_form.template.image_tag(picture_form.object.image.url(:thumb)) : picture_form.template.content_tag(:span, "no image yet")
      picture_form.input :image_cache, :as => :hidden, :value => picture_form.object.image_cache
    end
    f.actions
  end
end
