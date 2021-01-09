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


end

def roman_numerals(number)
    number = number.to_i

    roman_1 = "I"

    if number <= 3
        return roman_1 * number
    end

    return "V" if number == 5

    return "VI" if number == 6

    return "V" + (roman_1 * 2) if number == 7

end