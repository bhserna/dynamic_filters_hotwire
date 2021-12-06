class ProductsController < ApplicationController
  def index
    scope = Product
      .search(params[:search])
      .by_category(params[:category])

    @pagy, @products = pagy(scope, items: 10)
  end
end
