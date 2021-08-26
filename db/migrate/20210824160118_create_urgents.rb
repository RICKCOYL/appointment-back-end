class CreateUrgents < ActiveRecord::Migration[6.1]
  def change
    create_table :urgents do |t|
      t.string :title
      t.date :date
      t.time :time
      t.text :details

      t.timestamps
    end
  end
end
