<?php include_once 'server/header.php';?>
    <div class="hero">
        
        <div class="contexto">
            <?php  
            include 'server/conexao.php';

            $dados_pessoais= $conexao->query( "SELECT nome FROM dados_pessoais")->fetchAll(PDO::FETCH_OBJ);
            foreach($dados_pessoais as $dados){
                echo "
                <h4>Hello, meu nome é </h4>
                <h1> $dados->nome </h1>
                ";
                echo "<br>";
            }
            /*
                $formacao=$conexao->query(" SELECT instituicao_ensino  FROM formacao WHERE instituicao_ensino LIKE 'Universidade Joaquim Chissano' ");
                    foreach($formacao as $form){
                        echo"
                        <h3> 
                        Eu sou um estudante de Engenharia de Tecnologias e Sistemas de Informação na  $form->instituicao_ensino
                        </h3>
                        ";
                    }
            */
            ?>
            
            
        </div>

    </div> 
   <?php
include_once 'server/footer.php';
   ?>