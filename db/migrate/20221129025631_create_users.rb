class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.column :user_name , :string
      t.column :password_digest , :string
      t.column :admin ,:boolean , default: false 

      t.timestamps
    end
  end
end
