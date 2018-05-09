class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    enable_extension "hstore"
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.hstore :location
      t.string :hours, array: true, default: []
      t.references :user, foreign_key: true
      t.boolean :have_visited
      t.boolean :want_to_visit

      t.timestamps
    end
  end
end
