class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.integer :year
      t.string :country

      t.timestamps
    end
  end
end
