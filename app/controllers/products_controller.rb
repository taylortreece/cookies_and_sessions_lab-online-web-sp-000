class ProductsController < ApplicationController

    def index
        @product = Product.new
        session[:cart] || session[:cart] = []
        @cart = session[:cart]
    end

    def create
        product = Product.create(name: params[:product][:name])
        session[:cart] << product.id

        redirect_to '/'
    end

end
