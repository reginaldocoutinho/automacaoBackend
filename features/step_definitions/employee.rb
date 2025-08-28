# GET retorno da lista completa dos funcionarios

Dado('que o usuario consulte informacoes de Funcionario') do
  @get_url = 'http://dummy.restapiexample.com/api/v1/employees'
end

Quando('ele realizar a pesquisa') do
  @list_employee = HTTParty.get(@get_url)  
  puts @list_employee.body #para exibir no console o jsongit
end

Entao('uma lista de funcionarios deve retornar') do        
  expect(@list_employee.code).to eql 200
  expect(@list_employee.message).to eql 'OK'
end


#Segundo cenário Post adicionando um novo funcionario

Dado('que o usuario cadastre um novo funcionarios') do
  @post_url = 'https://dummy.restapiexample.com/api/v1/create'
end

Quando('ele enviar as informacoes do funcionario') do
  @create_employee = HTTParty.post(@post_url, :headers => {'Content-Type': 'application/json'}, body: {
    "id": 27,
    "employee_name": "Tony",
    "employee_salary": 54222,
    "employee_age": 30,
    "profile_image": ""
  }.to_json)
  puts @create_employee
end

Entao('esse funcionario sera cadastrado') do
  puts @create_employee.code
  puts @create_employee.message
  puts @create_employee["status"]
  puts @create_employee['data']["employee_name"]
  expect(@create_employee.code).to eql (200)
  expect(@create_employee.msg).to eql 'OK'
  expect(@create_employee["status"]).to eql 'success'
  expect(@create_employee["message"]).to eql 'Successfully! Record has been added.'
  expect(@create_employee['data']["employee_name"]).to eql 'Harry'
  
end