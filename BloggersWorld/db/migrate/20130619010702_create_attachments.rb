class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.text :description
      t.string :image
      t.references :attachable

      t.timestamps
    end
    add_index :attachments, :attachable_id
  end
end
