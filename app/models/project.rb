class Project < ApplicationRecord


  belongs_to :user, optional:true

  has_many :revisions

end
