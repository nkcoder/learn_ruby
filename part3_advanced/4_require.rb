### we use the method `require` to load libraries manually.
#
# Normally require statements should be placed at the very top of the file, so it is easy to see what libraries a
# particular piece of code (class) uses.
require 'digest'
class RequireDemo
  def encrypt(password)
    Digest::SHA2.hexdigest(password)
  end
end

puts RequireDemo.new.encrypt("my-password")

## output
# 6fa2288c361becce3e30ba4c41be7d8ba01e3580566f7acc76a7f99994474c46
