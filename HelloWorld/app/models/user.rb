class User < ActiveRecord::Base
  attr_accessible :address, :language, :name
  
  has_many :recipes
end
