class PagesController < ApplicationController
  def home
  end

  def inventory
  if params[:search]
    @product= Product.search(params[:search])
  else
    @product = Product.all
	
  end
  end

  def orders
  end

  def reports
  end
  
  def cart
  end
  
  def self.search(search)
	where("product_id LIKE ? OR product_type LIKE ? OR brand LIKE ? OR price LIKE ? OR stock LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
  
end
