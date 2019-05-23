class AddAvatarToWagoners < ActiveRecord::Migration[5.2]
  def change
    add_column :wagoners, :avatar, :string
  end
end
