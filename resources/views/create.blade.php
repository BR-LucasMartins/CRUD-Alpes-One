@extends('layouts.app')


@section('conteudo')

<div class="row pt-3">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <h2 class="text-center"> Criar Usuário </h2>
    </div>
</div>



<div class="row pt-5">
    <div class="col-md-8 col-md-offset-2">
        <form action="/store" method="post" enctype="multipart/form-data">
            @csrf
    
            <div class="form-group">
                <label for="exampleInputEmail1">Nome </label>
                <input type="text" class="form-control" id="nome" name="nome" placeholder="Nome Completo" required>
                
            <div class="form-group pt-4">
                <label for="exampleInputPassword1"> Idade </label>
                <input type="number" class="form-control" id="idade" name="idade" required>
            </div>

            <div class="form-group pt-4">
                <label for="exampleInputPassword1"> CPF </label>
                <input type="text" class="form-control" placeholder="000.000.000-00" data-mask="000.000.000-00" autocomplete="off" id="cpf" name="cpf" required>
            </div>

            <div class="form-group pt-4">
                <label for="exampleInputPassword1"> Email </label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>

            <div class="form-group pt-4">
                <label for="exampleInputPassword1"> Celular </label>
                <input type="text" class="form-control" placeholder="(00) 00000-0000" data-mask="(00) 00000-0000" autocomplete="off" id="celular" name="celular" required>
            </div>

            <div class="form-group pt-4">
                <label for="exampleInputPassword1"> Profissão </label>
                <input type="text" class="form-control" id="funcao" name="funcao" required>
            </div>
        
    
            <div  class="text-center pt-4 pr-4" >
                <button type="submit" class="btn  btn-success btn-lg pl-5 pr-5"> Adicionar </button>
                
            </div>
        </form>
    </div>

    <div style="padding-bottom: 200px;"></div>
    
</div>


    
@endsection