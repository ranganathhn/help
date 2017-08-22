ActiveAdmin.register Category do


  # Permitting everything as we are admin
  permit_params do
    Category.attribute_names
  end
	
end