class Maker < ActiveRecord::Base

  has_many	:products
  has_many	:maker_descriptions

  #----------------------------------------------------------------------------------------------------------------
  # description model
  #----------------------------------------------------------------------------------------------------------------
  def desc_model(lang_id)
    maker_descriptions.find_by(:language_id => lang_id)
  end

  [:name].each do |func|
    define_method func do |lang_id|
      (desc = desc_model(lang_id)) ? desc.__send__(func) : ""
    end
  end

end
