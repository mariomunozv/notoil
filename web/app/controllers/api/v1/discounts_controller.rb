class Api::V1::DiscountsController < Api::V1::ApplicationController
  before_action :set_discount, only: [:show, :edit, :update, :destroy]

  # GET /discounts
  def index
    @discounts = Discount.all
  end

  # GET /discounts/1
  def show
  end

  # GET /discounts/1/edit
  def edit
  end

  # POST /discounts
  def create
    @discount = Discount.new(discount_params)

    if @discount.save
      redirect_to @discount
    else
      render :json => "201", status:201
    end
  end

  # PATCH/PUT /discounts/1
  def update
    if @discount.update(discount_params)
      redirect_to @discount
    else
      render :json => "201", status:201
    end
  end

  # DELETE /discounts/1
  def destroy
    @discount.destroy
    redirect_to discounts_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discount
      @discount = Discount.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def discount_params
      params.require(:discount).permit(:name, :quantity, :product_id, :user_id)
    end
end
