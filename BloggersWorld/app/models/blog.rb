class Blog < ActiveRecord::Base
  attr_accessible :Contents, :Name, :Title, :attachments_attributes
  
  has_many :comments, :dependent => :destroy
  has_many :attachments, :as => :attachable, :dependent => :destroy
  has_one :visit, :as => :visitable
  belongs_to :user
  
  accepts_nested_attributes_for :attachments
  # mount_uploader :image, ImageUploader
  
         
   
    def self.search(criteria='')
      criteria = "%#{criteria}%"         
          
      Blog.joins(:comments).where(["blogs.Name LIKE ? OR blogs.Contents LIKE ? OR comments.name LIKE ? OR comments.body LIKE ?", criteria, criteria,criteria, criteria])
      # Blog.joins("OUTER JOIN comments on coments.blog_id = blog.id").where(["blogs.Name LIKE ? OR blogs.Contents LIKE ? OR comments.name LIKE ? OR comments.body LIKE ?", criteria, criteria,criteria, criteria])
      
      # Blog.where(["Name LIKE ? OR Contents LIKE ?",criteria,criteria])  
      # UNION ALL 
      # Comment.where(["name LIKE ? OR body LIKE ?",criteria,criteria]))
      
       
      
      
      
      
   end
  validates :Name,  :presence => true
  validates :Title, :presence => true,
                    :length => { :minimum => 5 }

end
