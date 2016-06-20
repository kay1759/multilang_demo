class Product < ActiveRecord::Base

  belongs_to	:category
  belongs_to	:maker
  has_many	:product_descriptions

  #----------------------------------------------------------------------------------------------------------------
  # description model
  #----------------------------------------------------------------------------------------------------------------
  def desc_model(lang_id)
    product_descriptions.find_by(:language_id => lang_id)
  end

  def name(lang_id)
    (desc = desc_model(lang_id)) ? desc.name : ""
  end
  
  def meaning(lang_id)
    (desc = desc_model(lang_id)) ? desc.meaning : ""
  end
  
  def description(lang_id)
    (desc = desc_model(lang_id)) ? desc.description : ""
  end
  
  def color(lang_id)
    (desc = desc_model(lang_id)) ? desc.color : ""
  end
    
  def material(lang_id)
    (desc = desc_model(lang_id)) ? desc.material : ""
  end

end
