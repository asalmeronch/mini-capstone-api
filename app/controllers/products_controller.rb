class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def create
    @product = Product.create(
      product_name: params[:product_name],
      product_price: params[:product_price],
      image_url: params[:image_url],
      product_description: params[:product_description],

    )
    render :show
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      product_name: params[:product_name] || @product.product_name,
      product_price: params[:product_price] || @product.product_price,
      image_url: params[:image_url] || @product.image_url,
      product_description: params[:product_description] || @product.product_description,
    )
    render :show
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "DESTROYED" }
  end
end
