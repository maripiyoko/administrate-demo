require "administrate/fields/base"

class PaperclipField < Administrate::Field::Base
  def to_s
    data
  end
end
