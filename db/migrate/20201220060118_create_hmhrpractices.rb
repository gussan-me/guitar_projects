class CreateHmhrpractices < ActiveRecord::Migration[5.2]
  def change
    create_table :hmhrpractices do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
