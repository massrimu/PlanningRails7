class Tiff < ApplicationRecord
 #belongs_to :user
 acts_as_votable
 include RailsSortable::Model
 set_sortable :sort

end
