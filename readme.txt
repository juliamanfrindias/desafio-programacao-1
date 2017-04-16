Este projeto foi desenvolvido com o framework Ruby on Rails versão 5.0.2

Como criar um projeto Rails:

No linux, abra o terminal e digite os passos seguintes:

-> Criando o projeto:

rails new myapp 

obs: se você optar por usar outros bancos de dados, como mysql ou postgresql, faça: 

rails new myapp -d mysql

ou

rails new myapp -d postgresql

-> Se você estiver usando mysql ou postgres você precisa modificar o arquivo 'config / database.yml'.
Defina seu nome de usuário e senha nesta linha (o exemplo aqui é para o banco de dados postgresql):

development:
  <<: *default
  database: catapp_development

  # The specified database role being used to connect to postgres.
  # To create additional roles in postgres see `$ createuser --help`.
  # When left blank, postgres will use the default role. This is
  # the same name as the operating system user that initialized the database.
  #username: username

  # The password associated with the postgres role (username).
  #password: password

-> Entre na pasta do projeto e digite:

bundle install

rake db:create

rails server

http://localhost:3000

-> Criando os modelos: 

rails generate model Example

-> Vá para a pasta db/migrate e edite o arquivo que se encontra dentro da pasta (será usado para criar a base de dados), depois digite: 

rails db:migrate

-> Se você quiser preencher o banco de dados, preencha o arquivo seeds.rb e digite:

rails db:seed

-> Criando os controlers:

rails generate controller Examples

Em seguida, vá para o navegador e digite: http://localhost:3000

Obs: Este projeto não contém o arquivo seeds.rb editado, pois a base de dados será povoada com um arquivo enviado pelo usuário. 
A página inicial está em  http://localhost:3000/welcome 






 
