require 'wzs/model/multilang'

class Category < ApplicationRecord

  include ::Wzs::Model::Multilang

  has_many	:products
  has_many	:category_descriptions

  #----------------------------------------------------------------------------------------------------------------
  # description model
  #----------------------------------------------------------------------------------------------------------------
  def desc_model(lang_id)
    category_descriptions.find_by(:language_id => lang_id)
  end

  attr_by_lang :name
  attr_by_lang :description

end
