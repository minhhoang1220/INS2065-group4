class SnackOrdersController < ApplicationController
  before_action :set_snack_order, only: %i[ show edit update destroy ]

  # GET /snack_orders or /snack_orders.json
  def index
    @snack_orders = SnackOrder.all
  end

  # GET /snack_orders/1 or /snack_orders/1.json
  def show
  end

  # GET /snack_orders/new
  def new
    @snack_order = SnackOrder.new
  end

  # GET /snack_orders/1/edit
  def edit
  end

  # POST /snack_orders or /snack_orders.json
  def create
    @snack_order = SnackOrder.new(snack_order_params)

    respond_to do |format|
      if @snack_order.save
        format.html { redirect_to snack_order_url(@snack_order), notice: "Snack order was successfully created." }
        format.json { render :show, status: :created, location: @snack_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @snack_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snack_orders/1 or /snack_orders/1.json
  def update
    respond_to do |format|
      if @snack_order.update(snack_order_params)
        format.html { redirect_to snack_order_url(@snack_order), notice: "Snack order was successfully updated." }
        format.json { render :show, status: :ok, location: @snack_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @snack_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snack_orders/1 or /snack_orders/1.json
  def destroy
    @snack_order.destroy

    respond_to do |format|
      format.html { redirect_to snack_orders_url, notice: "Snack order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snack_order
      @snack_order = SnackOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def snack_order_params
      params.require(:snack_order).permit(:snack_id, :customer_id, :quantity)
    end
end
