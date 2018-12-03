class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :title
      t.string :description
      t.string :string
      t.string :location
      t.decimal :rate

      t.timestamps
    end
  end
end
