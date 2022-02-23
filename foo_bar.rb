def foo_bar_rule(number)
  n = Integer(number)
rescue
  'Not a number ERROR'
else
  if n % 3 == 0 && n % 5 == 0
    'FooBar'
  elsif n % 5 == 0
    'Bar'
  elsif n % 3 == 0
    'Foo'
  else
    n
  end
end

def foo_bar(number)
  n = Integer(number)
rescue
  'Not a number ERROR!'
else

  return 0 if n.zero?

  if n.positive?
    return (1..n).map {|i| p foo_bar_rule(i)}
  else
    return (n..-1).map {|i| p foo_bar_rule(i)}
  end
end
