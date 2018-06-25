class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end
end

alumnos = []
data = []
File.open(read_file, 'r') { |file| data = file.readlines }
data.each do |alumno|
  alumnos << Alumno.new(*alumno.split(', '))

  def self.read_file(nombre_archivo)
    puts alumnos
  end
end
puts Alumno.new.read_file('notas.txt')
#puts alumnos

#Arreglas detalles.
