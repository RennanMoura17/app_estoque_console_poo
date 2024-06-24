class ProdutoServico
  @arquivo = 'db/produtos.json'
  def self.todos
    dados = JsonRepositorio.ler(@arquivo)
    produtos = []
    dados.each do |dado|
      produtos << Produto.new(dado)
    end
    produtos
  end

  def self.adicionar(produto)
    p_hash = transformar_para_hash(produto)
    JsonRepositorio.adicionar(p_hash)
  end

  private

  def transformar_para_hash(produto)
    produto.instance_variable.each_with_object({}) do |var, hash|
      hash[var.to_s.delete('@')] = instance_variable_get(var)
    end
  end
end
