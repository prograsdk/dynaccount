module Dynaccount
  class ProductSupplier < DynaccountObject
    def self.ignore_put
      [:id, :module_id]
    end

    def self.api_path
      'product_supplier'
    end
  end
end
