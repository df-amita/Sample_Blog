class CreateTZones < ActiveRecord::Migration
  def self.up
    create_table :t_zones do |t|
      t.string :zone
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :t_zones
  end
end
