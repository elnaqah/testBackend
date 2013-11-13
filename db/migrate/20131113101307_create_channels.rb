class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :name
      t.string :url
      t.text :desc

      t.timestamps
    end
  end
end
