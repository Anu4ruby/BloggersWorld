class RemoveColumns < ActiveRecord::Migration
  def up
      remove_column :users, :blog_id
  end

  def down
      add_column :users, :blog_id, :integar
  end
end
