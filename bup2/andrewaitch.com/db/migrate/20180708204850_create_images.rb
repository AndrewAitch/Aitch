class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :title
      t.string :date
      t.string :location
      t.references :portfolio,foreign_key: true
      t.string :urlv
      t.string :urll
      t.string :urlm
      t.string :urlh
      t.string :urlhh
      t.timestamps
    end
  end
end
