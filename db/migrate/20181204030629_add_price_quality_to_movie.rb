class AddPriceQualityToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :quality, :string
    add_column :movies, :price, :float
  end
end
