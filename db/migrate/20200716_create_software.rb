class CreateSoftware < ActiveRecord::Migration[6.0]
    def change
        create_table :software do |t|
            t.string :image
            t.string :description

            t.timestamps
        end 
    end 
end