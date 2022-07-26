class AddCoordinatesToDogsittings < ActiveRecord::Migration[6.1]
  def change
    add_column :dogsittings, :latitude, :float
    add_column :dogsittings, :longitude, :float
  end
end
