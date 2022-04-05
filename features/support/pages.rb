class CalcTest
    include Capybara::DSL


    def select_build(option)
        #@browser.select(id: "selectBuild").select option
        find('select[id=selectBuild]').select option
    end

    def calculate(num1, num2)
        find('#number1Field').set num1
        find('#number2Field').set num2
    end

    def select_operation(op)
        find('select[id=selectOperationDropdown]').select op
        find('#calculateButton').click
    end

    def valid_calc(num1, num2, op)
        answer = find('#numberAnswerField').value    

        case op
        when "Add"
            return (num1.to_i + num2.to_i) == answer.to_i
        when "Subtract"
            return (num1.to_i - num2.to_i) == answer.to_i
        when "Multiply"
            return (num1.to_i * num2.to_i) == answer.to_i
        when "Divide"
            return (num1.to_i / num2.to_i) == answer.to_i
        when "Concatenate"
            return (num1+num2) == answer
        else
            "You gave me #{op} -- input invalid"
        end    

    end

    def interger_only
        find('#integerSelect').click
        return find('#numberAnswerField').value.include? "."
             
    end
  
end