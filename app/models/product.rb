require 'wzs/model/multilang'

class Product < ApplicationRecord

  include ::Wzs::Model::Multilang

  belongs_to	:category
  belongs_to	:maker
  has_many	:product_descriptions

  #----------------------------------------------------------------------------------------------------------------
  # description model
  #----------------------------------------------------------------------------------------------------------------
  def desc_model(lang_id)
    product_descriptions.find_by(:language_id => lang_id)
  end

  attr_by_lang :name
  attr_by_lang :meaning
  attr_by_lang :description
  attr_by_lang :color
  attr_by_lang :material
 
end
