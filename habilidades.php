


<?php include_once 'server/header.php';?>

<style>
    #classes{
      margin-top: 100px;
      margin-left: 300px;
      height: auto;
      
    
    }
</style>


    
<div class="card" style="width: 38rem ; " id="classes">
<h2 style="text-align: center ">Habilidades</h2>

    <?php  
    include 'server/conexao.php';

    $habilidades= $conexao->query( "SELECT  habilidades FROM habilidades")->fetchAll(PDO::FETCH_OBJ);
    foreach($habilidades as $key){
        echo "
        <ul >
        <li> $key->habilidades </li>
    </ul>
        " ;
      
    }    
    ?>

   <a class="btn btn-outline-success" href="novasHabilidades.php"> Registrar novas habilidades </a>  <br>
 
</div>
</body>
<?php include_once 'server/footer.php';?>
</html>