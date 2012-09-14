class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table "users", :force => true do |t|
	   # t.references  :t_zone
	    t.string :login
	    t.string :email
      t.string   :username,                     :limit => 40
	#t.string   :username,                      :unique => true
      t.string   :firstname,                      :limit => 100, :default => '', :null => true
      t.string   :lastname
      t.string   :crypted_password,          :limit => 40
      t.string   :salt,                      :limit => 40
     # t.string    :timestamp
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :remember_token,            :limit => 40
      t.datetime :remember_token_expires_at
      t.integer :t_zone_id

    end
  end

  def self.down
    drop_table "users"
  end
end
