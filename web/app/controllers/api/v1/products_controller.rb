class Api::V1::ProductsController < Api::V1::ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]


  # GET /products
  def index

    @products = Product.all
  end

  # GET /products/1
  def show
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else
      render :json => "201", status:201
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      redirect_to @product
    else
      render :json => "201", status:201
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
    redirect_to products_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.require(:product).permit(:barcode, :brand, :name, :description, :price, :price_net, :family_id)
    end
end
