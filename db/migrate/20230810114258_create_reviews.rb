class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.float :rating
      t.references :hospital, null: false, foreign_key: true

      t.timestamps
    end
  end
end