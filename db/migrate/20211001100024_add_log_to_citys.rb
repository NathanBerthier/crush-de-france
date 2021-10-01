class AddLogToCitys < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :lastupload_log, :string
    add_column :cities, :lastupload_date, :date
  end
end
