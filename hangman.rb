# HANGMAN
# [x] create arrays of words
# [x]randomly select a word
# [x]Display blanks = to number of letters
# [x]Player-guess logic
# [x]If letter is right move on. If not add a body part

words = ["dog", "doggies", "dogs", "dial"]

$word = words.sample
$array = Array.new
$good = Array.new
$empty = Array.new

$word.each_char do |j|
  $array.push(j)
  j = "__ "
  $empty.push(j)
end

$blanks = $word.length.to_i

def hang
  puts
  puts " ______ "
  puts "|      |"
  puts "|       "
  puts "|       "
  puts "|       "
  puts "|       "
  puts "----    "
  puts
  puts "The word has #{$blanks} letters"
  puts

  $word.each_char do |i|
    i = "__ "
    print i
  end

  wrong_count = 0
  correct = 0

  loop do

    if correct == $word.length
      puts
      puts "You Win! The Word is #{$word}"
      puts
      puts
      break
    end

    puts
    puts
    print "Please guess a letter: "
    puts
    puts
    letter = gets.chomp
    puts

    case $array.include?(letter)
    when true
      if letter == $array[0]
        $empty[0] = letter
        $array[0] = ""
      elsif letter == $array[1]
        $empty[1] = letter
        $array[1] = ""
      elsif letter == $array[2]
        $empty[2] = letter
        $array[2] = ""
      elsif letter == $array[3]
        $empty[3] = letter
        $array[3] = ""
      elsif letter == $array[4]
        $empty[4] = letter
        $array[4] = ""
      elsif letter == $array[5]
        $empty[5] = letter
        $array[5] = ""
      elsif letter == $array[6]
        $empty[6] = letter
        $array[6] = ""
      end

      puts
      puts "Correct!"
      puts
      $good.push(letter)
      puts
      print "You have correctly guessed: "
      $empty.each do |q|
        print "#{q} "
      end
      puts
      puts
      correct += 1

    when false
      puts
      puts "Guess Again!"
      puts
      wrong_count += 1
      case wrong_count
      when 1
        puts
        puts " ______ "
        puts "|      |"
        puts "|      0"
        puts "|       "
        puts "|       "
        puts "|       "
        puts "----    "
        puts
      when 2
        puts
        puts " ______ "
        puts "|      |"
        puts "|      0"
        puts "|     [ ] "
        puts "|       "
        puts "|       "
        puts "----    "
        puts
      when 3
        puts
        puts " ______ "
        puts "|      |"
        puts "|      0"
        puts "|    /{ } "
        puts "|       "
        puts "|       "
        puts "----    "
        puts
      when 4
        puts
        puts " ______ "
        puts "|      |"
        puts "|      0"
        puts "|    /{ }| "
        puts "|       "
        puts "|       "
        puts "----    "
        puts
      when 5
        puts
        puts " ______ "
        puts "|      |"
        puts "|      0"
        puts "|    /{ }| "
        puts "|     [   "
        puts "|       "
        puts "----    "
        puts
      when 6
        puts
        puts " ______ "
        puts "|      |"
        puts "|      0"
        puts "|    /{ }| "
        puts "|     [ ] "
        puts "|       "
        puts "----    "
        puts
        puts "You Lose!"
        puts
        puts
        break
      end
    end
  end
end

puts
puts
puts "Let's Play Hangman!"
puts
puts
print "What is your name?: "

name = gets.chomp

puts
puts
puts "Hello #{name}!"
puts
hang
