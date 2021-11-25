# frozen_string_literal: true

# Class to generate celulas and use their status.
class Celula
  def initialize(cell_status)
    @cell_status = cell_status
  end

  def kill_celula
    @cell_status = 'dead'
  end

  def revive_celula
    @cell_status = 'alive'
  end

  def celula_status
    case @cell_status
    when 'dead'
      '.'
    when 'alive'
      '*'
    end
  end
end
