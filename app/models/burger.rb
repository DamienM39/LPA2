class Burger < ApplicationRecord
 def nutriments
    # @burger = Burger.find(burger_params.id)
    # require 'openfoodfacts'
    # product = Openfoodfacts::Product.get(@burger.code, locale: 'fr')
    # product
    # format.html { redirect_to @burger }
    require 'openfoodfacts'

    product = Openfoodfacts::Product.get(self.code, locale: 'fr')

    if product == nil
      product = [["No Data"], [""]]
    else
      product = product.nutriments
    end

    return product
  end
end
