<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Citigames - Login</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../bootstrap/bootstrap-5.1.3-dist/css/bootstrap.css">
    <link rel="stylesheet" href="../css/estilo-padrao.css">

    <link rel="stylesheet" href="css/register-login.css">

    <script src="../bootstrap/bootstrap-5.1.3-dist/js/bootstrap.js"></script>
    
</head>
<body>
    <div class="center">
        <div class="container">
            <label for="show" class="close-btn fas fa-times" title="close"></label>
            <div class="text">
                Sign Up Form
            </div>
            <form action="registrarUsuario" method="post">
                <div class="data">
                    <label>Username</label>
                    <input type="text" name= "nome"required>
                </div>
                <div class="data">
                    <label>Password</label>
                    <input type="password" name="senha" required>
                </div>
                <div class="btn">
                    <div class="inner"></div>
                    <button type="submit">Sign Up</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html> 