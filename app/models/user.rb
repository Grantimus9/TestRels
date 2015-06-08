class User < ActiveRecord::Base

  has_many :emailcategories 
  has_many :categories, through: :emailcategories

  has_many :textcategories
  has_many :textcategories, through: :textcategories

end
