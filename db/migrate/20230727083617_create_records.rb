class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.references :member, index:true, foreign_key: {to_table: :users}, null: false
      t.string :time, null: false
      t.date :date, null: false
      t.float :distance, null: false
      t.float :speed, null: false
      t.timestamps
    end
  end
end
