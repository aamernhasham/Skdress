class Product < ActiveRecord::Base

belongs_to :user

has_attached_file :image, :styles => {:medium => "500x500", :thumb => "300x300"}
validates_attachment_content_type :image, :content_type=> /\Aimage\/.*\Z/
validates :product_code, numericality: {greater_than: 0}

end
