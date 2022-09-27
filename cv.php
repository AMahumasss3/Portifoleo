<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curriculum</title>
</head>
<body>
<?php include_once 'server/header.php';?>
<?php
include_once 'server/conexao.php';

?>

<div class="container">
  
<div class="card mb-3" style="width:800px; height: auto;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="img/IMG_20201017_232151_681.jpg" class="img-fluid rounded-start" alt="...">
    
    </div>
    <div class="col-md-8">
      <div class="card-body">
      <?php echo "<h2> Dados Pessoais </h2>;"?>
      <?php  
    include 'server/conexao.php';
  
    $dados_pessoais= $conexao->query ( "SELECT nome,data_de_nascimento,idade,BI,NUIT,genero,nacionalidade,estado_civil,naturalidade FROM dados_pessoais")->fetchAll(PDO::FETCH_ASSOC);
    foreach($dados_pessoais as $key){?>
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
    <?php echo "<hr>";?>
    <?php echo "<h2> Habilidades </h2>;"?>
    <?php  
    include 'server/conexao.php';
  
    $habilidades= $conexao->query ( "SELECT habilidades FROM habilidades")->fetchAll(PDO::FETCH_ASSOC);
    foreach($habilidades as $key){?>
    <ul>
       <?php  
       foreach( $key as $i ){?>
      
       <li> <?php echo $i?></li>
       <?php
       }
       ?>

       
    </ul>
       <?php 

        
    }
    ?> 
    <?php echo "<hr>";?>
    <?php echo "<h2> Experiencia Profissional </h2>;"?>
    <?php  
    include 'server/conexao.php';

    $formacao= $conexao->query ("SELECT  descricao from exp_prof")->fetchAll(PDO::FETCH_ASSOC);
    foreach($formacao as $key){?>
    <ul>
       <?php  
       foreach( $key as $i ){?>
      
       <li> <?php echo $i ?></li>
       <?php
       }
       ?>

       
    </ul>
       <?php 

        
    }
    ?> 
    <?php echo "<hr>";?>

    <?php echo "<h2> Contactos </h2>;"?>
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
    </div>
  </div>
</div>
</div>


<?php




?>












    
</body>
</html>
<?php include_once 'server/footer.php';?>