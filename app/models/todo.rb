class Todo < ActiveRecord::Base
  attr_accessible :deadline, :opis, :priorytet, :tytul, :screenshot
  has_attached_file :screenshot, :styles => { :medium => "800x600>" }
end
