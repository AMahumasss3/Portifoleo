<?php include_once 'server/header.php';?>




<figure class="figure">
  <img src="img/IMG_20201017_232151_681.jpg" class="figure-img img-fluid rounded" alt="..." width="330px " height="auto">
 
 <figcaption class="figure-caption"> 
 <h2 >Breve resumo historial</h2>     
   <?php  
               
  include 'server/conexao.php';
  $sobre= $conexao->query( "SELECT sobre from dados_pessoais")->fetchAll(PDO::FETCH_OBJ);
  foreach($sobre as $dados){
   
    echo "
     
    <h3> $dados->sobre </h3>

    ";
  
  }
  ?></figcaption>


</figure>
<?php include_once 'server/footer.php';?>