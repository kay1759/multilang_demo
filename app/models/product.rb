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

  [:name, :meaning, :description, :color, :material].each do |func|
    define_method func do |lang_id|
      (desc = desc_model(lang_id)) ? desc.__send__(func) : ""
    end
  end
 
end
