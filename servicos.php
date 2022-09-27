<?php include_once 'server/header.php';?>

<style>
    #classes{
      margin-top: 110px;
      margin-left: 240px;
      height: auto;
      
    
    }
</style>


<div class="container">
<div class="d-flex justify-content-center align-items-center" style="width:100% ; height: 100 !important;">
      <div class="card" id="classes">
        <h2 class="text-center">Servicos</h2>

          <?php  
          include 'server/conexao.php';

          $servicos= $conexao->query( "SELECT  servico FROM servico")->fetchAll(PDO::FETCH_OBJ);
          foreach($servicos as $key){
              echo "
              <ul >
              <li> $key->servico </li>
          </ul>
              " ;
            
          }    
          ?>
<a class="btn btn-outline-success" href="novosServicos.php"> Registrar novos servicos </a>  <br>

</div>  
</div>
</div>
  
<?php include_once 'server/footer.php';?>