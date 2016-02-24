require "administrate/fields/base"

class SelectField < Administrate::Field::Base
  def to_s
    data
  end
end
