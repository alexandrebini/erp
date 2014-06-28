class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :edit, :update, :destroy]

  def index
    @sales = Sale.all
  end

  def show
  end

  def new
    @sale = Sale.new
  end

  def edit
  end

  def create
    @sale = Sale.new(sale_params)

    if @sale.save
      respond_with @sale
    else
      render :new
    end
  end

  def update
    if @sale.update(sale_params)
      respond_with @sale
    else
      render :edit
    end
  end

  def destroy
    @sale.destroy
    respond_with @sale, location: sales_url
  end

  private
    def set_sale
      @sale = Sale.find(params[:id])
    end

    def sale_params
      params.require(:sale).permit!
    end
end