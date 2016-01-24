class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      
      t.string :person
      t.string :sport

      t.timestamps
    end
  end
end
