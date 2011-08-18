class CreateOccupants < ActiveRecord::Migration
  def self.up
    create_table :occupants do |t|
      t.integer :id
      t.string :alias
      t.integer :current_location

      t.timestamps
    end
  end

  def self.down
    drop_table :occupants
  end
end
