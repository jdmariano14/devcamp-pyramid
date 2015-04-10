class AddReferencesToMembers < ActiveRecord::Migration
  def change
    change_table :members do |t|
   	  t.references :recruiter, index: true
    end
  end
end
