# language: pt

Funcionalidade: Pesquisar Funcionarios
    Para averiguar informacoes
    o usuario do sistema
    Deseja poder consultar informacoes dos Funcionarios

    Cenario: Buscar informacoes de Funcionarios
        Dado que o usuario consulte informacoes de Funcionario
        Quando ele realizar a pesquisa
        Entao uma lista de funcionarios deve retornar

    @post #tag para forçar rodar apenas o segundo cenario
    Cenario: Cadastrar funcionarios
        Dado que o usuario cadastre um novo funcionarios
        Quando ele enviar as informacoes do funcionario
        Entao esse funcionario sera cadastrado

    @put
    Cenario: Alterar informacoes cadastrais
    Dado que o usuario altere uma informacao de funcionario
    Quando ele enviar as novas informacoes
    Entao as informacoes serao alterados