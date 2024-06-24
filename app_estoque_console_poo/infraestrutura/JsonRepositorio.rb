require 'json'

class JsonRepositorio
  def self.ler(arquivo)
    unless File.exist?(arquivo)
      puts 'O arquivo não existe'
      nil
    end

    begin
      json_data = File.read(arquivo)
      JSON.parse(json_data)
    rescue JSON::ParserError => e
      puts "Erro ao analisar oa arquivo JSON: #{e}"
      nil
    end
  end

  def self.adicionar(_arquivo, _obj)
    data = ler(arquivo) || []

    data << obj

    File.open(arquivo, 'w') do |file|
      file.puts JSON.pretty_generate(data)
    end
  end
end
