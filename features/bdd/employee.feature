# language: pt

Funcionalidade: Pesquisar Funcionarios
    Para averiguar informacoes
    o usuario do sistema
    Deseja poder consultar informacoes dos Funcionarios

    Cenario: Buscar informacoes de Funcionarios
        Dado que o usuario consulte informacoes de Funcionario
        Quando ele realizar a pesquisa
        Entao uma lista de funcionarios deve retornar

    @cenario_dois #tag para forçar rodar apenas o segundo cenario
    Cenario: Cadastrar funcionarios
        Dado que o usuario cadastre um novo funcionarios
        Quando ele enviar as informacoes do funcionario
        Entao esse funcionario sera cadastrado