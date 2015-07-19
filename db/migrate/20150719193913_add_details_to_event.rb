class AddDetailsToEvent < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.column :details, :json, null: false
    end
  end
end
