class AddAddressToWagoners < ActiveRecord::Migration[5.2]
  def change
    add_column :wagoners, :address, :string
  end
end
