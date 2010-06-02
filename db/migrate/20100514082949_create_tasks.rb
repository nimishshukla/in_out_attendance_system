class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :estimated_time
      t.integer :actual_time
      t.string :time_taken
      t.integer :status_id
      t.string :priority
      t.datetime :started_at
      t.datetime :completed_at

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
