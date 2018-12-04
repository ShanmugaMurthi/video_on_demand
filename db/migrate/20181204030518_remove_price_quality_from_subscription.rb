class RemovePriceQualityFromSubscription < ActiveRecord::Migration[5.2]
  def change
    remove_column :subscriptions, :quality, :string
    remove_column :subscriptions, :price, :float
  end
end
