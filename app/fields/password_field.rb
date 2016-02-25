require "administrate/fields/base"

class PasswordField < Administrate::Field::Base
  def to_s
    data
  end

  def truncate
    pretty_data.to_s[0...6]
  end

  def pretty_data
    data.gsub(/./, "•") unless data.nil?
  end

end
