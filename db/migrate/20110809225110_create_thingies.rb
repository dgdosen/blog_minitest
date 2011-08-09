class CreateThingies < ActiveRecord::Migration
  def change
    create_table :thingies do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
