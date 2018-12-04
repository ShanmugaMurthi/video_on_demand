class AddPriceQualityToSeason < ActiveRecord::Migration[5.2]
  def change
    add_column :seasons, :quality, :string
    add_column :seasons, :price, :float
  end
end
