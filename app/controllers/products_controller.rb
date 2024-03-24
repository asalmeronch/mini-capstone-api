class ProductsController < ApplicationController
  def index
   
    @products = Product.all
    render :index
  end

  def one_product
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
      supplier_id: params[:supplier_id],
    )
   

    if @product.valid?
      Image.create(product_id: @product.id, url: prams[:image_url])
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end 
  end



  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.name,
      price: params[:price] || @product.price,
      image_url: params[:image_url] || @product.image_url,
      description: params[:description] || @product.description,
    )
    if @product.valid?
      render :show 
    else 
      render json: { errors: @product.errors.full_messages }, status: 422
    end 
  end

  

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "Product destroyed successfully!" }
  end
end