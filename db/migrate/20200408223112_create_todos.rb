class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.integer :user_id
      t.integer :provider_id, null: true
      t.string :category
      t.string :task
      t.datetime :time_start
      t.datetime :time_end

      t.timestamps
    end
  end
end
