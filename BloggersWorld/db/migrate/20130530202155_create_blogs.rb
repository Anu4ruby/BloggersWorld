class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :Name
      t.string :Title
      t.string :Contents

      t.timestamps
    end
  end
end
