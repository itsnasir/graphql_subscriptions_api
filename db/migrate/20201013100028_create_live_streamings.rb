class CreateLiveStreamings < ActiveRecord::Migration[6.0]
  def change
    create_table :live_streamings do |t|
      t.string :url, null: false
      t.timestamps
    end
  end
end
