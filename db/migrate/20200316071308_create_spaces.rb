class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :address
      t.integer :price_per_hour
      t.integer :outlets
      t.integer :capacity
      t.string :cozy
      t.string :quiet
      t.string :natural_lighting
      t.string :comfortable_seats
      t.string :good_coffee
      t.string :strong_aircon
      t.string :food_available
      t.string :drinks_available
      t.references :host, foreign_key: true

      t.timestamps
    end
  end
end
