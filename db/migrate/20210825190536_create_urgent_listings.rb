class CreateUrgentListings < ActiveRecord::Migration[6.1]
  def change
    create_table :urgent_listings do |t|
      t.string :title
      t.time :time
      t.date :date
      t.text :details
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
