class CreateGamesTags < ActiveRecord::Migration
  def change
    create_table :games_tags do |t|
      t.belongs_to :game, index:true
      t.belongs_to :tag, index:true
    end
  end
end
