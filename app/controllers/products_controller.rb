class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products=Product.all.order("created_at DESC").paginate(:page=>params[:page], :per_page=>3)
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  # Replacing the syntax here with current_user from Devise

  def new
    @product=current_user.products.build

  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = current_user.products.build(product_params)

    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'

    else
      render action: 'new'
    end

  end


  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
   if @product.update(product_params)
    redirect_to @product, notice: 'Product was successfully updated'

  else
    render action: 'edit'
  end


  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy

    @product.destroy
    redirect_to products_url

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:description, :price, :image)
    end

    def correct_user

      @product=current_user.products.find_by(id: params[:id])
      redirect_to products_path, notice: "Not authorized to edit this product" if@product.nil?

    end
end
