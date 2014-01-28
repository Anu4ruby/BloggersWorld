class Comment < ActiveRecord::Base
  belongs_to :blog
  attr_accessible :body, :name
  
  # def self.search(criteria='')
  #     criteria = "%#{criteria}%"
            
  #     Comment.where(["name LIKE ? OR body LIKE ?", criteria, criteria])
      
      
      
  #     # Blog.joins(:comments).where(["Name LIKE ? OR Contents LIKE ? OR name LIKE ? OR body LIKE ?", criteria, criteria,criteria, criteria])
  # end
  
  validates :name,  :presence => true
 
end
