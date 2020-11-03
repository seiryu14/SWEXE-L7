class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(name: params[:product][:name], price: params[:product][:price])
    if @product.save
      flash[:info] = "商品を登録しました"
      redirect_to products_path
    else
      render :new 
    end
  end
  
  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:info] = "商品を削除しました"
    redirect_to products_path
  end
end
