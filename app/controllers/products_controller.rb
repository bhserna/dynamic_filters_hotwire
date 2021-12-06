class ProductsController < ApplicationController
  def index
    @products = Product
      .search(params[:search])
      .by_category(params[:category])
  end
end
