class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.column :date, :date
      t.column :name, :string
      t.column :user_id, :integer
      t.column :description, :string
    end
  end
end
