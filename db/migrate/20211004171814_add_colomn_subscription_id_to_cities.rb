class AddColomnSubscriptionIdToCities < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :subscription, :string
  end
end
