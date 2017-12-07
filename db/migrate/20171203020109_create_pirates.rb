# The following was typed into the command line in
# order to create this file:
# rake db:create_migration NAME=create_pirates

# note: unlike the video, I didn't need to add ".rb" like:
# rake db:create_migration NAME=create_pirates.rb
class CreatePirates < ActiveRecord::Migration[5.1]
  def change
    create_table :pirates do |t|
      t.string :name
      t.string :height
      t.string :weight
    end
  end
end
