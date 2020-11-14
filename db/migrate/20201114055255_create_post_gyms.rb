class CreatePostGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :post_gyms do |t|
      t.text :gym_name
      t.string :image_id
      t.text :caption
      t.integer :user_id

      t.timestamps
    end
  end
end
