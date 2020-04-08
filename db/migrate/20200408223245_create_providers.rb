class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :title
      t.string :user_id
      t.string :phone
      t.string :email
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :about

      t.timestamps
    end
  end
end
