class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.integer :subscribable_id
      t.string :subscribable_type
      t.string :quality
      t.float :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
