class Rectangulo
  include Formula  ##????
  attr_accessor :base, :altura
  def initialize(base, altura)
    @base = base
    @altura = altura
  end
  def lados
    puts "#{base} y #{altura}"
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
  end
  def lados
    puts "#{base} y #{altura}"
  end
end

module Formula

  def perimetro(lados)
    (@base + @altura)  * 2
  end

  def area(lados)

    @base * @altura
  end
end

Rectangulo.new(base, altura)
Cuadrado.new(base, altura)
Rectangulo.perimetro
Rectangulo.area
Cuadrado.perimetro
Cuadrado.area
