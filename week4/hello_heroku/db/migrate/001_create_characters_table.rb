class CreateCharactersTable < ActiveRecord::Migration[5.0]
  def up
    create_table :characters do |t|
      t.string :name
    end
  end

  def down
    drop_table :characters
  end
end

def main
  action = (ARGV[0] || '').downcase.casecmp('down') == -1 ? :up : :down

  CreateCharactersTable.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
