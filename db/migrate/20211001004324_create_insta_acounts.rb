class CreateInstaAcounts < ActiveRecord::Migration[6.0]
  def change
    create_table :insta_acounts do |t|
      t.string :username
      t.string :password
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
