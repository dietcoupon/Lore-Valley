class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :id
      t.string  :username
      t.string  :password
      t.string  :email
      t.string  :alias
      t.integer :race
      t.integer :class
      t.boolean :sex
      t.boolean :preference
      t.integer :alignment

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
