class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :value
      t.text :detail
      t.string :state
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
