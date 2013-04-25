class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.string :name
      t.text   :descriptions
      t.timestamps
    end
  end
end
