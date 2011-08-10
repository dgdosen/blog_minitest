class CreateFoos < ActiveRecord::Migration
  def change
    create_table :foos do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
