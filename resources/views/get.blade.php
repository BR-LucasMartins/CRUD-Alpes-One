@extends('layouts.app')

@section('conteudo')

    
        
        <div style="padding-top: 100px;"></div>
        <div class="row">

            <div class="col-1"></div>
            <a class="btn btn-lg btn-success" href="/create"> <span class="fa fa-user-plus"></span> Add Novo usuário</a>
            
        </div>
            <div class="row">
                <div class="col-md-9"></div>
                <form action="/get" method="POST" class="form-inline my-2 my-lg-0" enctype="multipart/form-data">
                    @csrf

                    <input class="form-control mr-sm-2 cel-sp-mask" type="search" placeholder="Pesquisar" id="search" name="search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit"> Pesquisar <i class="fa fa-search"> </i> </button>
                </form>
        </div>

        <div class="row pt-2">

        {{-- Mensagens de sucesso --}}
        <div class="col-md-8 col-md-offset-2">
            @include('inc.sucesso')
        </div>

        @if ($users->count() > 0)

            <table class="table table-striped table-hover pt-2">
                <thead id="" class="bg-primary text-light">
                <tr>
                    <th  class="text-center pl-5"> id </th>
                    <th  class="text-center "> Nome </th>
                    <th class="text-center"> Idade </th>
                    <th class="text-center"> CPF </th>
                    <th  class="text-center "> E-mail </th>
                    <th  class="text-center "> Celular </th>
                    <th style="width: 300px;" class="text-center"> Cargo </th>
                    <th class="text-center pr-5"> Opções </th>
                </tr>
                </thead>


        <tbody id="tbody">

            

            @foreach ($users as $item)
            <tr> 
                <td  class="ls-txt-center pl-5" > {{ $item->id }} </td>
                <td  class="ls-txt-center" > {{ $item->nome }} </td>
                <td  class="ls-txt-center" > {{ $item->idade}} </td>
                <td  class="ls-txt-center" > {{ $item->cpf }} </td>
                <td  class="ls-txt-center" > {{ $item->email }} </td>
                <td  class="ls-txt-center" > {{ $item->celular }} </td>
                <td style="width: 300px;" class="ls-txt-center" > {{ $item->funcao }} </td>
                <td class="ls-txt-center"> 
                    <a href="/edit/{{$item->id}}" title="Editar"> <i class="fa fa-edit fa-2x text-success"></i>  </a>
                    
                    <a href="" data-toggle="modal" data-target="#exampleModal{{$item->id}}" title="excluir">
                        <i class="fa fa-trash-o fa-2x text-danger"> </i>
                    </a>
                
            

                    
                    {{-- modaL de confirmar delete --}}
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal{{$item->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header bg-danger">
                            <h5 class="modal-title text-light" id="exampleModalLabel">Excluir usuário</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            </div>
                            <div class="modal-body">
                            <h6> Aviso esta ação não pode ser revertida. Ao confirmar, estes dados <strong> serão apagados permanentemente </strong>  do sistema.</h6>
                            <hr>
                            <h6> Tem certeza que deseja excluir o item selecionado ? </h6>
                            </div>
                            <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                            <a href="/delete/{{$item->id}}" class="btn btn-dark"> Sim, estou ciente! </a>
                            </div>
                        </div>
                        </div>
                    </div>

                    </td>
            </tr>
            @endforeach
        </tbody>
        <br><br>
        </table>

        </div>

        <div class="row">
            <div class="col-1"></div>
            <div class="pt-4"> {{$users->links() }} </div>
        </div>

        
    @else

    <div class="alert alert-warning col-md-10 col-md-offset-1 pt-3" role="alert">
        Nenhum resultado encontrado! 
      </div>
    @endif
@endsection

