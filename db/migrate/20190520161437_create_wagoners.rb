class CreateWagoners < ActiveRecord::Migration[5.2]
  def change
    create_table :wagoners do |t|
      t.text :description
      t.string :github_name
      t.integer :rating
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
