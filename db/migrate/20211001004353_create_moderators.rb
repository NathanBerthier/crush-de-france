class CreateModerators < ActiveRecord::Migration[6.0]
  def change
    create_table :moderators do |t|
      t.references :city, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
