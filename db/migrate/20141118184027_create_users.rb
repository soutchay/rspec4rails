class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	#define attributes(columsn), and give them a type, a string
    	t.string :email
    	t.string :password
    	#add created_at and updated_at fields
    	t.timestamps null: false
    end
  end
end
