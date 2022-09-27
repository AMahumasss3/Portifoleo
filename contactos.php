<?php include_once 'server/header.php';?>
<style>
    #classes{
      margin-top: 110px;
      margin-left: 280px;
      height: auto;
      
    
    }
</style>
          
<div class="card" style="width: 38rem; " id="classes">
<h2 style="text-align: center ">Contactos</h2>

    <?php  
    include 'server/conexao.php';

    $contactos= $conexao->query ( "SELECT * FROM contactos " )->fetchAll(PDO::FETCH_ASSOC);
    foreach($contactos as $key){?>
    <ul>
       <?php  
       foreach( $key as $i=>$v ){?>
       <li> <?php echo $i.":".$v ?></li>
       <?php
       }
       ?>

       
    </ul>
       <?php    
        
    }
    ?>    


</div>    
</body>
</html>
<?php include_once 'server/footer.php';?>
