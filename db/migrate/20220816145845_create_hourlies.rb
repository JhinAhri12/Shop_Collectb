class CreateHourlies < ActiveRecord::Migration[7.0]
  def change
    create_table :hourlies do |t|
      t.references :shop, null: false, foreign_key: true
      t.string :monday
      t.string :tuesday
      t.string :wednesday
      t.string :thursday
      t.string :friday
      t.string :saturday
      t.string :sunday

      t.timestamps
    end
  end
end
