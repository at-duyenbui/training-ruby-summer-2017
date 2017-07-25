class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password_digest
      t.string :email
      t.string :name
      t.integer :gender
      t.datetime :birthday
      t.integer :role, default: 0
      t.string :avatar
      t.string :provider
      t.string :uid
      t.string :confirm_token
      t.datetime :confirm_send_at
      t.datetime :confirm_at
      t.string :reset_password_token
      t.datetime :reset_password_send_at

      t.timestamps
    end
  end
end
