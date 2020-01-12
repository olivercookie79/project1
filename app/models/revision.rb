class Revision < ApplicationRecord

  belongs_to :project, optional:true

end
