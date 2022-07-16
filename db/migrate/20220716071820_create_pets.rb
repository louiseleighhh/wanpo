class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.integer :age
      t.string :breed
      t.string :size
      t.text :comments

      t.timestamps
    end
  end
end
