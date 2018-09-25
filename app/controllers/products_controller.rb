class ProductsController < ApplicationController
  before_action :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.js { render layout: false }
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully created"
      redirect_to '/'
    else
      flash[:alert] = "Product not saved"
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated"
      redirect_to products_path
    else
      flash[:alert] = "Product not updated"
      redirect_to edit_product_path(@product)
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:notice] = "Product successfully deleted"
      redirect_to products_path
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
