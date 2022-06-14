<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <title>Critigames</title>
    <link rel="stylesheet" type="text/css" href="css/slick-1.8.1/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="css/slick-1.8.1/slick/slick-theme.css"/>
    <link rel="stylesheet" href="./bootstrap/bootstrap-5.1.3-dist/css/bootstrap.css">
    <link rel="stylesheet" href="./css/nav-bar-theme.css">
	<link rel="stylesheet" href="css/footer.css">
</head>
<body>

            <form action="cadastrarJogo" method="post" enctype="multipart/form-data">
                Titulo: <input type="text" name="titulo" /><br>
                Nome da Pasta: <input type="text" name="nomePasta"/><br>
                Banner 1 <input type="file" multiple="multiple" name="banner1" /><br>
                Banner 2 <input type="file" multiple="multiple" name="banner2" /><br>
                Banner 3 <input type="file" multiple="multiple" name="banner3" /><br>
                Foto Miniatura <input type="file" name="fotoMiniatura" /><br>
                Link do Video: <input type="text" name="linkVideo" /><br>
                Critigames Score: <input type="text" name="critigamesScore" /><br>
                Community Score: <input type="text" name="communityScore" /><br>
                Genero: <input type="text" name="genero" /><br>
                Studio: <input type="text" name="studio" /><br>
                Duração Média: <input type="text" name="duracaoMedia" /><br>
                Multiplayer: <input type="checkbox" name="multiplayer" /><br>
                Ano de Lançamento: <input type="number" name="lancamento" /><br>
                Critica: <input type="text" name="critica" /><br>
                Descricao: <input type="text" name="descricao" /><br>
                Principal? <input type="checkbox" name="principal" /><br>
                <button type="submit">Registrar</button>
            </form>
</body>
</html>