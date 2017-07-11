class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
    	t.string :bookname
    	t.string :author
    	t.float :price
    	t.string :image

      t.timestamps
    end
  end
end
