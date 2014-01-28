class Attachment < ActiveRecord::Base
  belongs_to :attachable, :polymorphic => true
  attr_accessible :description, :image
  
  mount_uploader :image, ImageUploader
end
