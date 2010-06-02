class AddFlagToAttendence < ActiveRecord::Migration
  def self.up
    add_column :attendences, :flag, :boolean
  end

  def self.down
    remove_column :attendences, :flag
  end
end
