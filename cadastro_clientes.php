<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="author" content="Untree.co" />
  <link rel="shortcut icon" href="unnamed.jpg" />

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap5" />

  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap" rel="stylesheet" />

  <link rel="stylesheet" href="fonts/icomoon/style.css" />
  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css" />

  <link rel="stylesheet" href="css/tiny-slider.css" />
  <link rel="stylesheet" href="css/aos.css" />
  <link rel="stylesheet" href="css/style.css" />

  <title>Pizzas de tirar o queixo</title>
</head>

<body>
  <div class="site-mobile-menu site-navbar-target">
    <div class="site-mobile-menu-header">
      <div class="site-mobile-menu-close">
        <span class="icofont-close js-menu-toggle"></span>
      </div>
    </div>
    <div class="site-mobile-menu-body"></div>
  </div>

          <a href="#" class="burger light me-auto float-end mt-1 site-menu-toggle js-menu-toggle d-inline-block d-lg-none" data-toggle="collapse" data-target="#main-navbar">
            <span></span>
          </a>
        </div>
      </div>
    </div>
  </nav>

  <div class="hero">
    <div class="hero-slide">
      <div class="img overlay" style="background-image: url('images/hero_bg_3.jpg');"></div>
      <div class="img overlay" style="background-image: url('images/hero_bg_2.jpg')"></div>
      <div class="img overlay" style="background-image: url('images/hero_bg_1.jpg')"></div>
    </div>

    <div class="container">
      <div class="row justify-content-center align-items-center">
        <div class="col-lg-9 text-center">
        <?php
//Dados do HTML
$Nome = $_POST['Nome'];
$Telefone = $_POST['Telefone'];
$Logradouro = $_POST['Logradouro'];

//Info. do servidor de BD
$nomeservidor = "localhost"; 
$usuario = "root";
$senha = "";
$nomeBD = "RM";

//criar a conexão
$conexao = new mysqli($nomeservidor, $usuario, $senha, $nomeBD);


    $cadastrar = "INSERT INTO `clientes`(`Nome`,`Logradouro`,`Telefone`) VALUES ('$Nome','$Logradouro','$Telefone')";
		// Insere os dados e verifica se os mesmos podem realmente ser cadastrados.
    if($conexao->query($cadastrar) === TRUE ){
        echo "<center><h1>Cadastrado com Sucesso!</h1></center>
        <form action='index.html' method='POST'>
        </select>
    <center><input type='submit' value='Voltar ao início'></center>
    </form>
        
        ";
    }else{
        echo "Erro ao cadastrar";
    }

$conexao->close();
?>
          <form action="./pedidos.php" method="post" class="narrow-w form-search d-flex align-items-stretch mb-3" data-aos="fade-up" data-aos-delay="200">
            <!-- Seu formulário HTML aqui -->
          </form>
        </div>
      </div>
    </div>
  </div>

  <script src="js/bootstrap.bundle.min.js"></script>
  <script src="js/tiny-slider.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/navbar.js"></script>
  <script src="js/counter.js"></script>
  <script src="js/custom.js"></script>
</body>

</html>