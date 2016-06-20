class Maker < ActiveRecord::Base

  has_many	:products
  has_many	:maker_descriptions

  #----------------------------------------------------------------------------------------------------------------
  # description model
  #----------------------------------------------------------------------------------------------------------------
  def desc_model(lang_id)
    maker_descriptions.find_by(:language_id => lang_id)
  end

  def name(lang_id)
    (desc = desc_model(lang_id)) ? desc.name : ""
  end

end
