class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :original_url

      t.timestamps
    end
    execute ("ALTER TABLE links AUTO_INCREMENT = 1000")
  end
end
