Shoes.app :title => "rollin dice" do
  @img1 = nil
  @img2 = nil
  flow() do
    style(:margin_left => '25%', :margin_top => '25%')
    @img1 = image "one.gif"
    @img2 = image "one.gif"
  end

  flow() do
    style(:margin_left => '40%', :margin_top => '25%')
    button "roll dice!" do
        num1 = rand(6) + 1
        num2 = rand(6) + 1

        case num1
          when 1
            @img1.path = "side1.gif"
          when 2
            @img1.path = "side2.gif"
         when 3
            @img1.path = "side3.gif"
          when 4
            @img1.path = "side4.gif"
          when 5
            @img1.path = "side5.gif"
          when 6
            @img1.path = "side6.gif"
        end

        case num2
          when 1
            @img2.path = "side1.gif"
          when 2
            @img2.path = "side2.gif"
          when 3
            @img2.path = "side3.gif"
          when 4
            @img2.path = "side4.gif"
          when 5
            @img2.path = "side5.gif"
          when 6
            @img2.path = "side6.gif"
        end

        if (num1 == num2)
          alert "you rolled a #{num1}'s!"
        else
           alert "you rolled a #{num1} and #{num2}!"
    end
    end
  end
end

