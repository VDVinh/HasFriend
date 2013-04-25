class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :user_id
      t.integer :job_id
      t.string  :invited_uid
      t.text    :description
      t.string  :status
      t.timestamps
    end
  end
end
