def retirar_produto
  puts amarelo('Para remover um produto selecione o item pelo seu id e informe a quantidade que quer remover')

  listar_produtos

  puts 'Informe o id do produto: '
  id = gets.chomp.to_i

  puts 'Informe a quantidade em estoque que quer retirar'
  qtd_retirada = gets.chomp.to_i

  atualizar_estoque(id, qtd_retirada)
end

def atualizar_estoque(id, qtd_retirada)
  produto = ProdutoServico.todos.find { |p| p.id == id }
  if !produto
    puts vermelho('Produto não existe')
    puts amarelo('Tente novamente')
    sleep(2)
    retirar_produto
  elsif qtd_retirada > produto.quantidade
    puts vermelho('Quantidade inválida')
    puts amarelo('Tente novamente')
    sleep(2)
    retirar_produto
  else
    produto.quantidade -= qtd_retirada
    puts 'Retirada realizada com sucesso!'
  end
  # produtos.each do |p|
  #   p[:qtd_estoque] -= qtd_retirada if p[:id] == id && p[:qtd_estoque] >= qtd_retirada
  # end

  sleep(3)
  listar_produtos
end
