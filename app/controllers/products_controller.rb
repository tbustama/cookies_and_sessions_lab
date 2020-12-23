class ProductsController < ApplicationController
    def index
    end

    def add
        self.cart << product_params
        redirect_to home_path
    end

    private
    def product_params
        params.require(:product)
    end
end
