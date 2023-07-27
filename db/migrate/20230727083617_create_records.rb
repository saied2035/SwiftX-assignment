class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.references :user, foreign_key: true
      t.string :time, null: false
      t.date :date, null: false
      t.float :distance, null: false
      t.float :speed, null: false
      t.timestamps
    end
  end
end
