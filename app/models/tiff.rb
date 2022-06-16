class Tiff < ApplicationRecord
 acts_as_votable
 include RailsSortable::Model
 set_sortable :sort

end
