class NumberWord
  def initialize(numberInput)
    @numberInput = numberInput
    @numberInputArray = numberInput.to_s.split(//)
  end

  def number_2_word

    ones = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine" }

    teens = { 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen" }

    tens = { 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety" }

    hundos = { 100 => "hundred" }

    if (@numberInputArray.length === 1)
      numWord = ones.fetch(@numberInput)

    elsif (@numberInputArray.length === 2)
      if (@numberInputArray[0] === "1")
        numWord = teens.fetch(@numberInput)
      else
        numWord = tens.fetch((@numberInputArray[0]).to_i) + " " + ones.fetch((@numberInputArray[1]).to_i)
      end

    end
    numWord
  end
end
