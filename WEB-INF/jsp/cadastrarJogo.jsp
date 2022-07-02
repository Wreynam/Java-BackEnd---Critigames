<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/inputs.css">
    <title>Critigames</title>
	
</head>
<body>
<div class="container">
        <label></label>
        <div class="text">
            Registrar Jogo
        </div>
            <form action="cadastrarJogo" method="post" enctype="multipart/form-data" class="formulario" accept-charset="ISO-8859-1">
                Titulo: <input type="text" name="titulo" required/><br>
                Nome da Pasta: <input type="text" name="nomePasta" required/><br>
                Banner 1 <input type="file" name="banner1" required/><br>
                Banner 2 <input type="file" name="banner2" required/><br>
                Banner 3 <input type="file" name="banner3" required/><br>
                Foto Miniatura <input type="file" name="fotoMiniatura" required/><br>
                Link do Video: <input type="text" name="linkVideo" required/><br>
                Critigames Score: <input type="text" name="critigamesScore" required/><br>
                Community Score: <input type="text" name="communityScore" required/><br>
                Genero: <input type="text" name="genero" required/><br>
                Studio: <input type="text" name="studio" required/><br>
                Duração Média: <input type="text" name="duracaoMedia" required/><br>
                Multiplayer: <input type="checkbox" name="multiplayer"/><br>
                Ano de Lançamento: <input type="number" name="lancamento" required/><br>
                Critica: <input type="text" name="critica" required/><br>
                Descricao: <input type="text" name="descricao" required/><br>
                Principal? <input type="checkbox" name="principal"/><br>
                <button type="submit">Registrar</button>
            </form>
</div>
</body>
</html>