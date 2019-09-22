class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :nickname
      t.string :password_digest
      t.references :partner

      t.timestamps
    end
  end
end
