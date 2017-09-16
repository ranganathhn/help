ActiveAdmin.register Article do


  # Permitting everything as we are admin
  permit_params do
    Article.attribute_names
  end
	
end