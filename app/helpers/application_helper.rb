module ApplicationHelper

  #--------------------------------------------------------------------------------------------------------------
  # Language Menu
  #--------------------------------------------------------------------------------------------------------------
  def lang_menu()
    
    uri = request.fullpath
    
    Language.all.inject("<ul id=\"lang-menu\">\n") { |result, language|
      if language.locale ==  @lang.locale
        result += "<li><span><img src=\"/images/shared/#{language.locale}.png\"></span><strong>#{language.name}</strong></li>\n"
      elsif controller.controller_name == "top" && language.isdefault 
        result += "<li><span><img src=\"/images/shared/#{language.locale}.png\"></span><a href=\"/\">#{language.name}</a></li>\n"
      else
        result += "<li><span><img src=\"/images/shared/#{language.locale}.png\"></span><a href=\"/#{language.locale}#{uri[3..-1]}\">#{language.name}</a></li>\n"
      end
    } + "</ul>\n"        
  end
    
  #--------------------------------------------------------------------------------------------------------------
  # Category Menu
  #--------------------------------------------------------------------------------------------------------------
  def category_menu(lang, parent_id, level)
    
    categories = Category.where(:status => 0, :parent_id => parent_id).order("ordering ASC")
    return "" if categories.size == 0
    
    categories.inject("<ul class=\"sidelist_#{ lang.locale }\">\n") { |result, category|
      result += "<li><a href=\"#\">" + category.name(lang) + "</a></li>\n"
      # result += "<li><a href=\"/#{ lang.locale }/categories/#{ category.id }/\">" + category.name(lang) + "</a></li>\n"
    } + "</ul>\n"
  end
    
  #--------------------------------------------------------------------------------------------------------------
  # Category Product Menu
  #--------------------------------------------------------------------------------------------------------------
  def category_product_menu(lang, category_id)
    
    products = Product.where(:category_id => category_id, :status => 0)
    return "" if products.size == 0
    
    products.inject("<ul class=\"sidelist_#{ lang.locale }\">\n") { |result, product|
      result += "<li><a href=\"/#{ lang.locale }/products/#{ product.product_code }.html\">" + product.name(lang) + "</a></li>\n"
    } + "</ul>\n"
  end
        
end
