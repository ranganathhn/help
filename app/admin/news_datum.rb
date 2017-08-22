ActiveAdmin.register NewsDatum do


  # Permitting everything as we are admin
  permit_params do
    NewsDatum.attribute_names
  end
	
end