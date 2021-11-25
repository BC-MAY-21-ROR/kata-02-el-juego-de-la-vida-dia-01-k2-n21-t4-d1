# frozen_string_literal: true

require_relative 'celulas'

# Class to generate a Matriz full of Celulas
class Matriz
  def initialize(height, width)
    @height = height
    @width = width
    @matrix = []
    @alive_celulas = []
    generate_alive_celulas
    
  end

  def generate_matrix
    (0..@height - 1).each do |i|
      @matrix[i] = []
      (0..@width - 1).each do |j|
        celula = Celula.new('dead')
        @matrix[i][j] = celula
      end
    end
    (0..@alive_celulas.length - 1).each do |i|
      @matrix[@alive_celulas[i][0]][@alive_celulas[i][1]].revive_celula
    end
  end

  def generate_alive_celulas
    random_numbers = rand(@height * @width)
    (0..random_numbers - 1).each do |_i|
      @alive_celulas.push([rand(@width - 1), rand(@height - 1)])
    end
  end

  def print_matriz
    (0..@height - 1).each do |i|
      (0..@width - 1).each do |j|
        print @matrix[i][j].celula_status
      end
      puts "\n"
    end
  end
end
