<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>


## Sobre o Sistema


<p> O sistema é um CRUD Simples de controle de usuário feito com laravbel 5.6. Optei por um CRUD de usuários por não conter campos específicos de formatação como datas e moedas. O projeto está na arquitetura MVC, onde todos os fluxos das rotas passam pelo controller da aplicação e são exibidos nas viwes. </p>

## Informações Importantes

<p> Como o código foi feito com laravel é necessário o uso do composer. Eu uso o software Laragon que já vem com o composer e auxília muito o trabalho com o framework.</p>
  
 <p> <strong> Ao clonar o repositório do github, alguns passos são necessários para que o código execute perfeitamente:</strong> </p>
      
- Abrir o terminal dentro da pasta raíz da aplicação e executar o comando: <strong> composer update </strong>. (Para atualizar e baixar  os arquivos e dependências da pasta vendor). 

- Renomear o arquivo <strong> ".env.example" </strong> para <strong> ".env"</strong> que não foi commitado por causa do arquivo <stron> git.ignore </strong>. Depois configurar as variáveis do arquivo <strong>.env </strong> como: <strong> DB_DATABASE=CRUD-Alpes-One (Nome do DB), DB_USERNAME=root, DB_PASSWORD=  <strong>. (Para não ocorrer erros na conexão com banco de dados).

- Dentro da pasta raíz da aplicação há um arquivo chamado: <strong>"BD_teste.sql"</strong>. Este arquivo é um BD já populado via laravel factory para testes, basta carregá-lo dentro do heidsql ou outro gerenciador de DB. Esta é a forma  mais simples de conectar-se ao banco, caso contrário é necessário criar um novo BD chamado "CRUD-Alpes-One" e depois executar as migrations e os seeds via php artisan no terminal.

- Executar o comando: <strong> php artisan key:generate </strong> dentro do diretório raíz da aplicação, para gerar uma nova chave de validação para o projeto.








## Informações adicionais

- Alguns recursos como os arquivos do bootstrap e js são referenciados dentro da própria aplicação, porém alguns outros como jQuery, e os recursos de máscaras dos formulários são carregadas via CDN, então requer uma conexão com a internet para que estes recursos sejam carregados corretamente.

- O campo de pesquisa na tabela com os dados , faz busca por nome e profissão do usuário. Caso o usuário digite outro valor, como um número ou algum dado que não exista na tabela, é retornado á ele uma mensagem de: <strong> "Nenhum arquivo foi encontrado". </strong> 







