# The following was typed into the command line in
# order to create this file:
# rake db:create_migration NAME=create_ships

# if you needed to *CHANGE* a column name on one of these you'd go into bash and type:
# rake db:create_migration NAME=change_type_on_ships
# ...after that go to the new migration and make it say the following:
=begin
            class ChangeTypeOnShips < ActiveRecord::Migration
              def change
                 rename_column :ships, :type, :typos
              end
            end
=end

# note: unlike the video, I didn't need to add ".rb" like:
# rake db:create_migration NAME=create_pirates.rb
class CreateShips < ActiveRecord::Migration[5.1]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :typos # you can't use "type" cause that's reserved for something inside Active Record.
      t.string :booty
      t.integer :pirate_id
    end
  end
end
