class CreateAttendences < ActiveRecord::Migration
  def self.up
    create_table :attendences do |t|
      t.datetime :timein
      t.datetime :timeout
      t.date :today

      t.timestamps
    end
  end

  def self.down
    drop_table :attendences
  end
end
