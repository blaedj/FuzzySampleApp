class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :author
      t.datetime :date
      t.text :entry

      t.timestamps
    end
  end
end
