class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.references :blog

      t.timestamps
    end
    add_index :comments, :blog_id
  end
end
