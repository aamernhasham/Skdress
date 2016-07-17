class HomeController < ApplicationController
  
  def index

  @products=Product.where(displaymain: true)


  end

  
  private

# We don't really need these params in the home controller. The reason for this is probably because it's used for input and NOT output

  def product_params
    params.require(:product).permit(:description, :price, :image, :displaymain)
  end

end

