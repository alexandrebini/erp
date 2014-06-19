class ProductsController < ApplicationController
  decorates_assigned :products

  def index
    @products = Product.all
  end
end