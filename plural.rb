class String
  def plural
    tamanho = self.length

    if (self[tamanho - 1] == 'x' || self[tamanho - 1] == 's' || self[tamanho - 1] == 'z' || self[tamanho - 1] == 'h' || self[tamanho - 1] == 'r' || self[tamanho - 1] == 's')
      return self + "es"
    elsif (self[tamanho - 1] == 'm')
      return self.slice(0, tamanho - 1) + "ns"
    elsif (self[tamanho - 1] == 'l')
      return self.slice(0, tamanho - 1) + "is"
    elsif (self[tamanho - 1] == 'a' || self[tamanho - 1] == 'e' || self[tamanho - 1] == 'i' || (self[tamanho - 1] == 'o' && self[tamanho - 2] != 'ã') || self[tamanho - 1] == 'u' || self[tamanho - 1] == 'ú')
      return self + "s"
    elsif (self[tamanho - 2] == 'ã' && self[tamanho - 1] == 'o')
        puts self
      if self[tamanho - 3] == 'h'
        return self.slice(0, tamanho - 2) + "ões"
      elsif self[tamanho - 3] == 'm'
        return self.slice(0, tamanho - 2) + "ãos"
      elsif self[tamanho - 3] == 'p'
        return self.slice(0, tamanho - 2) + "ães"
      else
        return self.slice(0, tamanho - 2) + "ãos"
      end
    end
  end
end

puts "pão".plural