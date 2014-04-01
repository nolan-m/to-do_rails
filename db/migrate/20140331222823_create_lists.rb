class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
    end

    add_column :tasks, :list_id, :integer
  end
end
