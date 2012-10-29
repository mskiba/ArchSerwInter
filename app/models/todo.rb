class Todo < ActiveRecord::Base
  attr_accessible :deadline, :opis, :priorytet, :tytul
end
