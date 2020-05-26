<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;
use     App\users;

class userController extends Controller
{
    
    //função para mostrar a pagina index da aplicação
    public function index(){

        $user = DB::table('users')->paginate(10); //seleciona todos os registros do banco e faz a paginação de 10 por página
        return view('welcome', compact('user'));

    }


    //Função para direcionar á página create
    public function create(){
        return view('create');
    }


    //função faz a inserção dos dados no BD
    public function store(Request $request){
        
        
        
        $novo = new users; //instância um obeto user
        $novo->nome = $request->nome;
        $novo->idade = $request->idade;
        $novo->cpf = $request->cpf;
        $novo->email = $request->email;
        $novo->celular = $request->celular;
        $novo->funcao = $request->funcao;
        $novo->save(); //inserir o novo registro no BD

        return redirect('/?sucesso');

    }


    //função redireciona pagina editar
    public function edit($id){

        $dados =  users::find($id); //encontra os dados do usuário para alterá-los.
        return view('edit', compact('dados'));
    }


    //função faz a alteração dos dados na tabela
    public function update(Request $request, $id){

        //encontra o usuário a ser modificado pelo id 
        $novo = users::find($id);

        //dados alterados
        $novo->nome = $request->nome;
        $novo->idade = $request->idade;
        $novo->cpf = $request->cpf;
        $novo->email = $request->email;
        $novo->celular = $request->celular;
        $novo->funcao = $request->funcao;

        //atualiza os dados na tabela
        $novo->update();

        return redirect('/?sucesso2');
    }


    //Função para deletar os dados no BD
    public function delete($id){

        
        users::destroy($id);   //metodo destroy apaga o registro pelo id passado no parâmetro.
        return redirect('/?sucesso3');
    }


    //função para pesquisar dados no banco
    public function get(Request $request){

        //consulta por nome ou profissão passada no imput text pesquisar
        $users = DB::table('users')
                    ->where('nome', 'LIKE', '%' . $request->search . '%')
                    ->orWhere('funcao', 'LIKE', '%' . $request->search . '%' )
                    ->paginate(10);

        return view('/get', compact('users'));
    }

}
