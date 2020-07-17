class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.date :start_date
      t.integer :duration
      t.string :title
      t.text :description
      t.string :price
      t.string :string
      t.string :location
      t.string :string

      t.timestamps
    end
  end
end
