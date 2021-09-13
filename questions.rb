class Questions
  attr_reader :answer
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end
  def add
    @answer = @num1 + @num2 
  end
  def subtract
    @answer = @num1 - @num2 
  end
  def multiply
    @answer = @num1 * @num2 
  end
  def divide
    @answer = @num1 / @num2 
  end
  def generate_question(operator)
    puts "#{@num1} #{operator} #{@num2}"
    if operator == 'add' 
      self.add
    end
    if operator == 'subtract' 
      self.subtract
    end
    if operator == 'multiply' 
      self.multiply
    end
    if operator == 'divide' 
      self.divide
    end
  end
end

