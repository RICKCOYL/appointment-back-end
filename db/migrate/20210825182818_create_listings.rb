class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.date :date
      t.time :time
      t.text :details
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
