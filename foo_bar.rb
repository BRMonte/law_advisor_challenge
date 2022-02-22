# def foo_bar_rule(number)
#   begin
#   number = Integer(number)
#   rescue ArgumentError
#   puts 'Input must be an number'
#   end

#   if number % 3 == 0 && number % 5 == 0
#     'FooBar'
#   elsif number % 5 == 0
#     'Bar'
#   elsif number % 3 == 0
#     'Foo'
#   else
#     number
#   end
# end


def foo_bar_rule(n)
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

def foo_bar(n)
  number = Integer(n)
  rescue
  puts 'Invalid input, not an integer!'

  return 0 if number.zero?

  if number.positive?
    return (1..number).map {|i| p foo_bar_rule(i)}
  else
    return (number..1).map {|i| p foo_bar_rule(i)}
  end
end
