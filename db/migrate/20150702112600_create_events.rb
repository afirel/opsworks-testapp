class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, limit: 120, null: false
      t.text :description

      t.timestamps null: false
    end
  end
end
