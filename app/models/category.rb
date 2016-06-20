class Category < ActiveRecord::Base

  has_many	:products
  has_many	:category_descriptions

  #----------------------------------------------------------------------------------------------------------------
  # description model
  #----------------------------------------------------------------------------------------------------------------
  def desc_model(lang_id)
    category_descriptions.find_by(:language_id => lang_id)
  end

  [:name, :description].each do |func|
    define_method func do |lang_id|
      (desc = desc_model(lang_id)) ? desc.__send__(func) : ""
    end
  end

end
