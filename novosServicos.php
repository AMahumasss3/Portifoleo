<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/all.min.css">
    <title>Novas Habilidades</title>
</head>
<body>
    
</body>
</html>
<?php 
include_once 'server/conexao.php';
include_once 'server/header.php';
include_once 'server/footer.php';
?>

<div class="container">
<div class="border p-5">
<form action="server/cadastraServicos.php"  method="POST">
<div class="input-group mb-3">
 <span class="input-group-text">Servicos</span>
  <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Digite seu servico" name="servicos">
</div>
<div class="form-group">
  <label for="exampleFormControlTextarea1" class="form-label text-white">Descricao da habilidade</label>
  <textarea rows="6" type="text" class="form-control" placeholder=" Descricao da habilidade" name="descricao">
  </textarea>

<div class="mt-5">
<button type="submit" class="btn btn-success me-2">Submeter</button>                            
<button type="button" class="btn btn-danger">Cancelar</button>  
</div>
</div>

</form>

</div>



</div>

<?php include_once 'server/footer.php';?>


