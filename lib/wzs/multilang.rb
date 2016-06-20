module Wzs
  module Multilang

    #-------------------------------------
    # get Language model from locale
    #-------------------------------------
    def self.get_language(locale)
      Language.find_by(:locale => locale)
    end

  end
    
  #********************************
  # include method
  #********************************
  #-------------------------------------
  # setting language 
  #-------------------------------------
  def set_language
    I18n.locale = params[:locale] || I18n.default_locale
    @lang = Wzs::Multilang::get_language(I18n.locale)
  end

end
