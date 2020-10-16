class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :live_streaming, foreign_key: true, null: false
      t.text       :content,                           null: false

      t.timestamps
    end
  end
end
