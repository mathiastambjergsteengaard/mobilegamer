class Game < ActiveRecord::Base
  has_and_belongs_to_many :tags

  def ios_download_link?
    ios_download_link != "" && ios_download_link != nil
  end


end