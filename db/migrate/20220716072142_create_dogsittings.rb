class CreateDogsittings < ActiveRecord::Migration[6.1]
  def change
    create_table :dogsittings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :location
      t.string :availability
      t.integer :rate

      t.timestamps
    end
  end
end
