class CreateSoftware < ActiveRecord::Migration[6.0]
    def change
        create_table :software do |t|
            t.integer :software_api_id
            t.string :image
            t.string :name

            t.timestamps
        end 
    end 
end