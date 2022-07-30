class AddDayToDogsittings < ActiveRecord::Migration[6.1]
  def change
    add_column :dogsittings, :day, :string
  end
end
