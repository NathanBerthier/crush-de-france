class ChangeDateTypeToCities < ActiveRecord::Migration[6.0]
  def change
    change_column :cities, :upload_time, :string
  end
end
