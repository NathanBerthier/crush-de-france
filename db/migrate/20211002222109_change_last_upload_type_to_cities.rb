class ChangeLastUploadTypeToCities < ActiveRecord::Migration[6.0]
  def change
    change_column :cities, :lastupload_date, :datetime
  end
end
