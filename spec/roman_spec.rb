describe "Romanising" do
    it "gives a V when given a 5" do
        result = roman_numerals("5")

        expect(result).to eq("V")
    end

    it "gives a I when given a 1" do
        result = roman_numerals("1")

        expect(result).to eq("I")
    end

    it "gives a VI when given a 6" do
        result = roman_numerals("6")

        expect(result).to eq("VI")
    end

    it "gives a II when given a 2" do
        result = roman_numerals("2")

        expect(result).to eq("II")
    end

    it "gives a VII when given a 7" do
        result = roman_numerals("7")

        expect(result).to eq("VII")
    end

    it "gives a X when given a 10" do
        result = roman_numerals("10")

        expect(result).to eq("X")
    end

    it "gives a IX when given a 9" do
        result = roman_numerals("9")

        expect(result).to eq("IX")
    end


end

def roman_numerals(number)
    number = number.to_i

    roman_1 = "I"
    roman_5 = "V"
    roman_10 = "X"

    if number.between?(1,3)
        return roman_1 * number
    end

    if number.between?(5,8)
        return roman_5 + roman_1 * (number - 5)
    end

    if number == 9
        return roman_1 + roman_10
    end

    if number == 10
        return roman_10
    end


end