# _plugins/fix_tainted.rb
# Restore tainted? for Ruby ≥3.4 so Liquid’s taint_check won’t blow up.
class Object
  def tainted?
    false
  end
end