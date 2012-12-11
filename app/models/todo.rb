class Todo < ActiveRecord::Base
  validates_format_of :deadline_time, :with => /\d{1,2}:\d{2}/

  attr_accessible :deadline, :opis, :priorytet, :tytul, :deadline_date, :deadline_time

  attr_accessor :deadline_date, :deadline_time

	
  after_initialize :get_datetimes # konwertujemy dla nas
  before_validation :set_datetimes # konwertujemy dla bazy

  def get_datetimes
    self.deadline ||= Time.now + (60*60) # defaultowa data, +1h w naszej strefie czasowej

    self.deadline_date ||= self.deadline.to_date.to_s(:db) # yyyy-mm-dd format
    self.deadline_time ||= "#{'%02d' % self.deadline.hour}:#{'%02d' % self.deadline.min}" # godzina
  end

  def set_datetimes
    self.deadline = "#{self.deadline_date} #{self.deadline_time}:00" # wrzucamy date i czas spowrotem do bazy
  end  
end
