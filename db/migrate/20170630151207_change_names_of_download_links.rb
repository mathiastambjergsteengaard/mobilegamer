class ChangeNamesOfDownloadLinks < ActiveRecord::Migration
  def change
    rename_column :games, :ios_download_links, :ios_download_link
    rename_column :games, :android_download_links, :android_download_link
  end
end
