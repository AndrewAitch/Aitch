class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.text :dpname
      t.text :pname
      t.text :text
      t.integer :catID
      t.timestamps
    end
  end
end
