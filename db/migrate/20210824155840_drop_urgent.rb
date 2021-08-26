class DropUrgent < ActiveRecord::Migration[6.1]
  def change
    drop_table :urgents
  end
end
