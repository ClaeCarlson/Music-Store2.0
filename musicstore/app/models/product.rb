class Product < ActiveRecord::Base
  has_many :order_items
  
  

def self.search(search)
	where("product_id LIKE ? OR product_type LIKE ? OR brand LIKE ? OR price LIKE ? OR stock LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
