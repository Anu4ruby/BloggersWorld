class AddUserIdTorecipes < ActiveRecord::Migration
  def change
      add_column :recipes, :User_id, :string
  end

end
