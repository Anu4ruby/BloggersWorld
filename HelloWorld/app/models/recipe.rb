class Recipe < ActiveRecord::Base
  attr_accessible :ingredients, :name
  
  belongs_to :user
end
