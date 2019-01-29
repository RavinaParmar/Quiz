class Question
  attr_accessor :prompt, :answer
  def initialize (prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

p1= "Which of Henry VIII 3 wives gave birth to Elizabeth I?\n (a)Anne Boleyn\n (b)Katherine of Aragon\n (c)Anne of Cleves"
p2= "How are Elizabeth I and Mary Queen of Scots related?\n (a)Elizabeth is her mother\n (b)Sister\n (c)first cousin once removed"
p3= "How old was Anne Boleyn when she died?\n (a)20-23\n (b)15-18\n (c)28-35"

questions= [
  Question.new(p1, "a"),
  Question.new(p2, "c"),
  Question.new(p3, "c")
]

def run_test(questions)
  answer = ""
  score = 0
  for question in questions
    puts question.prompt
    answer = gets.chomp()
    if answer == question.answer
      score +=1
    end
  end
  puts ("You got " + score.to_s + "/" + questions.length().to_s)
end
run_test(questions)
