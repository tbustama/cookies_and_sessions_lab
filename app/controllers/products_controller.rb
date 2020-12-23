class ProductsController < ApplicationController
    def index
    end

    def add
        self.cart << product_params[:product]
        redirect_to home_path
    end

    private
    def product_params
        params.require(:product).permit(:product)
    end
end
