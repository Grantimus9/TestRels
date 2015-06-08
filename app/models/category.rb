class Category < ActiveRecord::Base
  has_many :emailcategories 
  has_many :users, through: :emailcategories

  has_many :textcategories 
  has_many :users, through: :textcategories

end
