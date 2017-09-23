ActiveAdmin.register Article do

  form do |f|
    inputs 'Article Details' do
     f.input :title
     f.input :title_kn
     f.input :description, :as => :ckeditor
     f.input :description_kn, :as => :ckeditor
    end
    actions
  end
  # Permitting everything as we are admin
  permit_params do
    Article.attribute_names
  end
	
end