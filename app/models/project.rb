class Project < ApplicationRecord


  belongs_to :user, optional:true

  has_many :revisions




 #Tell geocoader where to look for human readable address
geocoded_by :address
#Tell geocoder to actually turn the above address into latitude and longitdue GPS cooridinates by doing a llokuo in a remote api andy time yiu create or update a project

after_validation :geocode

end
