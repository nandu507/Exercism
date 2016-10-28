class Bob
  def hey(input)
    bob = {:yell => 'Whoa, chill out!',
           :question => 'Sure.',
           :address_him => 'Fine. Be that way!',
           :anything_else => 'Whatever.'  }
    talk = input.chomp
    return bob[:yell] if talk == talk.upcase && talk.match(/[A-Z]+/)
    return bob[:question] if talk[-1] == '?'
    return bob[:address_him] if talk.empty? || talk.match(/^\s+$/)
    bob[:anything_else]


  end
end
