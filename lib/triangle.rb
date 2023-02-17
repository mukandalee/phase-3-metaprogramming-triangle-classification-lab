class Triangle
  # write code here
   def initialize(length1, length2, length3)
      @length1 = length1
      @length2 = length2
      @length3 = length3
  end

  def kind
      if valid_triangle?
          uniq_length_count = [@length1, @length2, @length3].uniq.length

          if(uniq_length_count == 1)
              :equilateral
          elsif (uniq_length_count == 2)
              :isosceles
          else
              :scalene
          end
      else
          raise TriangleError
      end
  end

  def valid_triangle?
      greater_than_0 = @length1 > 0 && @length2 > 0 && @length3 > 0
      
      valid_triangle_inequality = (@length1 < @length2 + @length3) && (@length2 < @length1 + @length3) && (@length3 < @length1 + @length2)

      greater_than_0 && valid_triangle_inequality
  end

  class TriangleError < StandardError

  end
  
end