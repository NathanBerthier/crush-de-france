class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :message
      t.string :username
      t.string :status
      t.integer :validated_by
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
