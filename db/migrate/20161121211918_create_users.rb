class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :full_name, :null => false
      t.string :email, :null => false
      t.string :password_digest, :null => false
      t.string :role, :default => 'employee'
      t.string :photo
      t.string :background
      t.datetime :confirmed_at
      t.string :confirmation_token
      t.datetime :last_access
      t.timestamps
    end
  end
end
