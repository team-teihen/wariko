class CreateDiscussions < ActiveRecord::Migration[6.0]
  def change
    create_table :discussions do |t|
      t.text :content
      t.references :payment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
