class AddCoordinatesToWagoners < ActiveRecord::Migration[5.2]
  def change
    add_column :wagoners, :latitude, :float
    add_column :wagoners, :longitude, :float
  end
end
