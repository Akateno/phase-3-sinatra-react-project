class CreateApplicants < ActiveRecord::Migration[6.1]
  def change
    create_table :applicants do |t|
      t.string :name
      t.integer :dog_id
      t.string :job
      t.string :city
      t.integer :pets_owned  
    end 
  end
end
