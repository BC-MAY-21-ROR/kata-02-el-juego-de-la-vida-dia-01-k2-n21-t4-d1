# frozen_string_literal: true

require_relative 'Matriz'

height = gets.chomp.to_i
width = gets.chomp.to_i

matriz = Matriz.new(height, width)
matriz.generate_matrix
matriz.print_matriz
