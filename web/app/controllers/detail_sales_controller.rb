class DetailSalesController < ApplicationController
  before_action :set_detail_sale, only: [:show, :edit, :update, :destroy]

  # GET /detail_sales
  def index
    @detail_sales = DetailSale.paginate(:page => params[:page])
  end

  # GET /detail_sales/1
  def show
  end

  # GET /detail_sales/new
  def new
    @detail_sale = DetailSale.new
  end

  # GET /detail_sales/1/edit
  def edit
  end

  # POST /detail_sales
  def create
    @detail_sale = DetailSale.new(detail_sale_params)

    if @detail_sale.save
      redirect_to @detail_sale, notice: 'Detail sale was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /detail_sales/1
  def update
    if @detail_sale.update(detail_sale_params)
      redirect_to @detail_sale, notice: 'Detail sale was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /detail_sales/1
  def destroy
    @detail_sale.destroy
    redirect_to detail_sales_url, notice: 'Detail sale was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail_sale
      @detail_sale = DetailSale.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def detail_sale_params
      params.require(:detail_sale).permit(:name, :quantity, :valor, :sale_id, :product_id)
    end
end
