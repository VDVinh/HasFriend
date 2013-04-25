class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.text  :description
      t.string :position
      t.string :status
      t.integer :industry_id
      t.integer :company_id
      t.timestamps
    end
  end
end
