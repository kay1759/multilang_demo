require 'wzs/model/multilang'

class Maker < ApplicationRecord

  include ::Wzs::Model::Multilang

  has_many	:products
  has_many	:maker_descriptions

  #----------------------------------------------------------------------------------------------------------------
  # description model
  #----------------------------------------------------------------------------------------------------------------
  def desc_model(lang_id)
    maker_descriptions.find_by(:language_id => lang_id)
  end

  attr_by_lang :name

end
