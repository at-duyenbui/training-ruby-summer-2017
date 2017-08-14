class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :image
      t.string :isn
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
