class Category < ActiveRecord::Base

  has_many	:products
  has_many	:category_descriptions

  #----------------------------------------------------------------------------------------------------------------
  # description model
  #----------------------------------------------------------------------------------------------------------------
  def desc_model(lang_id)
    category_descriptions.find_by(:language_id => lang_id)
  end
  def name(lang_id)
    (desc = desc_model(lang_id)) ? desc.name : ""
  end
  
  def description(lang_id)
    (desc = desc_model(lang_id)) ? desc.description : ""
  end

end
