class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :short_name
      t.string :description
      t.date :upload_time
      t.date :subscription_end
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
