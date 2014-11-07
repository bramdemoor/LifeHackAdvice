$dictionary = { :number => [5,8,10,12,15,20,50],
                :otherstart => ["Barry's", 'The most useful', 'Secret', 'Revolutionary'],
                :bleh => ['ways to improve', 'hints for enhancing', 'techniques for supercharging'],
                :what => ['the love of your lifetime', 'your home', 'your dishwashing', 'personal relationships', 'broken furniture', 'your cooking skills'],
                :bleh2 => ['by using', 'with the help of', 'with the guidance of'],
                :tech => ["Steve Jobs' way of working", 'dark voodoo secrets', 'ancient asian meditation techniques', 'your inner powers', 'power tools', 'the power of your body']
}

$patterns = [
    [:number, :bleh, :what, :bleh2, :tech],
    [:otherstart, :bleh, :what, :bleh2, :tech]
]

def generate_single
  $patterns.sample.collect{|p| $dictionary[p].sample.to_s }.join(' ')
end

puts generate_single