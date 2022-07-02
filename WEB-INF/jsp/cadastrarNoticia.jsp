<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <title>Critigames</title>
    <link rel="stylesheet" href="css/inputs.css">
	
</head>
<body>
<div class="container">
        <label></label>
        <div class="text">
            Registrar Noticia
        </div>
            <form action="cadastrarNoticia" method="post" enctype="multipart/form-data" class="formulario" accept-charset="ISO-8859-1">
                Titulo: <input type="text" name="titulo" required/><br>
                MiniTitulo: <input type="text" name="miniTitulo" required/><br>
                Autores: <input type="text" name="autores" required/><br>
                Data: <input type="text" name="data" required/><br>
               	Foto Miniatura <input type="file" name="fotoMiniatura" /><br>
                Link Video:<input type="text" name="link" class="caixa"/><br>
                Texto: <br><textarea name="texto" rows="10" cols="80" wrap="hard" class="caixa" required></textarea><br>
                <button type="submit">Registrar</button>
            </form>
</div>
</body>
</html>