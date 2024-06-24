def cadastrar_produto
  mensagem('Iniciando cadastro de produtos...', true, true, 1)
  mensagem_amarelo('Digite o nome do produto:', false, false, 5)
  nome = gets.chomp.to_s
  limpar_tela

  mensagem_amarelo("Digite a  descrição do produto (#{verde(nome)})", false, false)
  descricao = gets.chomp.to_s
  limpar_tela

  mensagem_amarelo("Digite o preço do produto (#{verde(nome)})", false, false)
  preco = gets.to_f
  limpar_tela

  mensagem_amarelo("Digite a quantidade em estoque do produto (#{verde(nome)})", false, false)
  qtd_estoque = gets.to_i
  limpar_tela

  p = Produto.new({
                    "id" => Time.now.to_i,
                    "nome" => nome,
                    "descricao" => descricao,
                    "preco" => preco,
                    "qtd_estoque" => qtd_estoque
                  })

  ProdutoServico.adicionar(p)
end
