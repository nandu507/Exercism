class Bob
  def hey(input)
    bob = {:yell => 'Whoa, chill out!',
           :question => 'Sure.',
           :address_him => 'Fine. Be that way!',
           :anything_else => 'Whatever.'  }
    talk = input.chomp
    case(talk)
    when talk =~ /\s/
      bob[:address_him]
    when talk[-1] == '?'
      bob[:question]
    when talk.upcase
      bob[:yell]
    else
      bob[:anything_else]
    end
  end
end
