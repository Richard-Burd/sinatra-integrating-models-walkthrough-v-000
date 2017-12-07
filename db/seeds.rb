require_relative "../app/models/pirate.rb"
require_relative "../app/models/ship.rb"

# to see both these connected in sqlite3, type in the following SQL query:
=begin
SELECT * FROM ships
INNER JOIN pirates
ON ships.pirate_id = pirates.id;
=end

Pirate.create(name: "Redbeard", height: "tall", weight: "heavy")
Pirate.create(name: "Blackbeard", height: "normal", weight: "normal")
Pirate.create(name: "CPT Morgan", height: "short", weight: "light")
Pirate.create(name: "CPT Sparrow", height: "short", weight: "light")


# note: for some weird reason, the column <<type:>> caused an error so
# it was renamed <<typos:>> instead and the error went away.
Ship.create(name: "HMS Victory", typos: "Man O' War", booty: "Silver", pirate_id: 1)
Ship.create(name: "HMS Beagle", typos: "Brig Sloop", booty: "Science", pirate_id: 1)
Ship.create(name: "USS Enterprise", typos: "Schooner", booty: "Powder", pirate_id: 2)
Ship.create(name: "USS Stennis", typos: "Friggate", booty: "Silver", pirate_id: 2)
Ship.create(name: "ARA San Juan", typos: "Submarine", booty: "water", pirate_id: 3)

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
