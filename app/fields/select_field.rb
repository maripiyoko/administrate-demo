require "administrate/fields/base"

class SelectField < Administrate::Field::Base
  def to_s
    data
  end

  def choices
    choices = options.fetch(:choices)
    if options[:with_blank]
      choices_with_blank = [ "" ] + choices
      choices_with_blank.zip(choices_with_blank)
    else
      choices.zip(choices)
    end
  end

  def selected_choice
    data
  end
end
