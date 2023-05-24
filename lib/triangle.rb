class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    check_triangle
  end

  def kind
    if @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    elsif @side1 == @side2 && @side2 == @side3
      :equilateral
    else
      :scalene
    end
  end

  private

  def check_triangle
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError, "Sides must be greater than 0."
    elsif @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
      raise TriangleError, "Triangle inequality violation."
    end
  end

  class TriangleError < StandardError
  end
end