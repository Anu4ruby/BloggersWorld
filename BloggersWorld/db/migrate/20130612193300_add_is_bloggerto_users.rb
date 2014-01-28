class AddIsBloggertoUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_blogger, :boolean
  end
end
