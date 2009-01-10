# Enable items.map(&:name) a la Rails
class Symbol
  def to_proc
    lambda {|*args| args.shift.__send__(self, *args)}
  end
end 

# Convenience method on Regexp so you can do
# /an/.show_match("banana")
# stolen from the pickaxe
class Regexp
  def show_regexp(a, re)
     if a =~ re
        "#{$`}<<#{$&}>>#{$'}"
     else
        "no match"
     end
  end
  def show_match(a)
    show_regexp(a, self)
  end
end
