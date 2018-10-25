class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :message, foreign_key: true
      t.string :content
      t.string :author

      t.timestamps
    end
  end
end
