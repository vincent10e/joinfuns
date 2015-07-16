class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.string :location
      t.string :organizer
      t.string :related_link

      t.timestamps null: false
    end
  end
end
