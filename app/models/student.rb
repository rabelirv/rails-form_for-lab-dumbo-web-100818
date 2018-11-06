class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def concat_strings(str1,str2)
    a = str1
    a << str2
  end
end
