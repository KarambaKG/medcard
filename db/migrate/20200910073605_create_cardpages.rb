class CreateCardpages < ActiveRecord::Migration[5.2]
  def change
    create_table :cardpages do |t|
      t.string :title
      t.string :h1
      t.text :body

      t.timestamps
    end
  end
end
