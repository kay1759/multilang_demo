module Wzs
  module Model
    module Multilang

      #----------------------------------------------------------------------------------------------------------------
      # Hook Method for include
      #----------------------------------------------------------------------------------------------------------------
      def self.included(includee)
        includee.extend ClassMethods
      end
      
      module ClassMethods
        #----------------------------------------------------------------------------------------------------------------
        # attribute by lang
        #----------------------------------------------------------------------------------------------------------------
        def attr_by_lang(attr)
          define_method attr do |lang|
            desc_model(lang.id).try(attr)
          end
        end
      end
    end
  end
end
