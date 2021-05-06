class CreateServers < ActiveRecord::Migration[6.1]
  def change
    create_table :servers do |t|
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end
