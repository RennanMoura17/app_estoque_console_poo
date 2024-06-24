def listar_produtos
  mensagem(amarelo('Buscando produtos...'), true, true, 1.5)
  puts amarelo('====== Lista de Produtos ======')

  ProdutoServico.todos.each do |p|
    puts verde("#{p.id} - #{p.nome}, R$#{p.preco}\nQuantidade em estoque: #{p.quantidade}\n\n")
    sleep(0.5)
  end
  sleep(1)
end
