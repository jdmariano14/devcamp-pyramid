class CreateRecruitments < ActiveRecord::Migration
  def change
    create_table :recruitments do |t|
      t.integer :recruiter_id
      t.integer :recruit_id
      t.timestamps null: false
    end
  end
end
