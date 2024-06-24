def iniciar_menu
  loop do
    mensagem_amarelo('======== Escolha uma das opções abaixo: ========', false, false)
    puts "1 - Cadastro de produtos\n
          2 - Lista de produtos\n
          3 - Retirada do estoque\n
          4 - Sair"

    opcao = gets.to_i

    case opcao
    when 1
      mensagem('Cadastro de produtos', false, false, 5)
      cadastrar_produto
    when 2
      mensagem('Lista de produtos', false, false)
      listar_produtos
    when 3
      mensagem('Retirada de produtos', false, false)
      retirar_produto
    when 4
      puts 'Finalizando programa...'
      exit
    else
      mensagem_vermelho('Opção inválida')
    end
  end
end
