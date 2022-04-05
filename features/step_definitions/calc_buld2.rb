Given('I access the home page') do
    visit 'https://testsheepnz.github.io/BasicCalculator.html'
  end
  
  When('I filled in the fields {string}, {string}') do |num1, num2|
    @num1 = num1
    @num2 = num2
    @calc = CalcTest.new
    @calc.select_build("2")
    @calc.calculate(@num1, @num2)
  end
  
  When('select operation {string}') do |operation|
    @operation = operation
    @calc.select_operation(@operation)
  end
  
  Then('I have to get the result') do
    raise "The Calculation #{@operation} -- not done correctly" unless result = @calc.valid_calc(@num1, @num2, @operation)
    #sleep 10
  end

  When('select integer only') do
    raise "The result was not an integer" if @calc.interger_only
  end
  
  Then('I see the message {string}') do |message|
    raise "The message was not displyed" unless expect(page).to have_content message
  end