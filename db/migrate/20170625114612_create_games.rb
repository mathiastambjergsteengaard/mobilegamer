class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :url_name
      t.text :review
      t.string :youtube_url
      t.string :meta_title
      t.string :meta_description
      t.boolean :online, default: :true
      t.string :android_download_links
      t.string :ios_download_links
    end
  end
end
