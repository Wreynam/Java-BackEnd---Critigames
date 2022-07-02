<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Critigames</title>
        <link rel="stylesheet" type="text/css" href="css/slick-1.8.1/slick/slick.css"/>
        <link rel="stylesheet" type="text/css" href="css/slick-1.8.1/slick/slick-theme.css"/>
        <link rel="stylesheet" href="bootstrap/bootstrap-5.1.3-dist/css/bootstrap.css">
        <link rel="stylesheet" href="css/nav-bar-theme.css">
        <link rel="stylesheet" href="css/estilo-padrao.css">
        <link rel="stylesheet" href="css/footer.css">
    
        <link rel="stylesheet" href="css/game-page.css">
    
        <meta name="description" content="Critica de games">
        <meta name="keywords" content="noticias,critica,games,jogos,the witcher,red dead redemption,castlevania">
        <meta name="author" content="Juan Linhares &amp; Renan Vinicius">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="https://19733.github.io/juandeveloper/gameexp.png">
        <script src="bootstrap/bootstrap-5.1.3-dist/js/bootstrap.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com/">
        <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="">
        <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond&family=Inika&family=Karantina&display=swap" rel="stylesheet">
    </head>
<body>
    <header>
			<div class="header-top">
				<form action="buscarCategorias" method="get" class="search-box">
					<input class="search-txt" type="text" name="pesquisa" placeholder="Pesquisar">
					<button type="submit" class="search-btn"> <img src="img/icons-earch.png" alt="" sizes="120x120"></button>
				</form>
				<div class="container-tittleNo">
					<p class="tittle">CRITIGAMES</p>
					<p class="subtittle">Criticas e não ofensas</p>
				</div>
				<div class="login-register">
					<c:if test="${not empty usuarioLogado && admin != 'adminLogado'}">
						<p>USUARIO: ${usuarioLogado.name}</p>
						<a href="logout" class="login-text" style="margin-left: 10px;" >LOGOUT</a>
					</c:if>
					<c:if test="${empty usuarioLogado}">
						<a href="entrada?acao=login" class="login-text">LOGIN</a>
						<a href="entrada?acao=registrar">REGISTRAR</a>
					</c:if>
					
					<c:if test="${admin == 'adminLogado' }">
						<a href="entrada?acao=telaAdm" class="login-text">TELA ADM</a>
						<a href="logout" class="login-text">LOGOUT</a>
					</c:if>
					
				</div>
			</div>
			<div class="container-itens">
				<a href="entrada">HOME</a>
				<img src="./img/icon-game.png">
				<a href="entrada?acao=aboutUs">ABOUT US</a>
			</div>
	 	</header>
     <section class="banner">
        <P>${gamePage.getTitulo()}</P>
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2" class="active" aria-current="true"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3" class=""></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item">
            <img src="imagens/jogos/${gamePage.getNomePasta()}/${gamePage.getNomeFotoPrincipal1()}" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item active">
            <img src="imagens/jogos/${gamePage.getNomePasta()}/${gamePage.getNomeFotoPrincipal2()}" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
            <img src="imagens/jogos/${gamePage.getNomePasta()}/${gamePage.getNomeFotoPrincipal3()}" class="d-block w-100" alt="...">
            </div>
        </div>
        <section class="banner-buttons">
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </section>
    </div>
    </section>
    <section class="all-details">
        <div class="box-criticas">
            <div class="icon-image">
                <img src="imagens/jogos/${gamePage.getNomePasta()}/${gamePage.getNomeFotoMiniatura()}">
            </div>
            <div class="critic-score">
                <h1>Critigames Score</h1>
                <div class="box-critigames" style="background-color: <c:if test="${gamePage.getCritigamesScore() <= 50 }"> red</c:if>
							<c:if test="${gamePage.getCritigamesScore() < 85 && gamePage.getCritigamesScore() > 50}"> yellow </c:if>
							<c:if test="${gamePage.getCritigamesScore() >= 85}"> green </c:if>;">
                    <p>${gamePage.getCritigamesScore() }</p>
                </div>
            </div>
            <div class="comunity-score" >
                <h1>Comunity Score</h1>
                <div class="box-comunity" style="background-color: <c:if test="${gamePage.getCommunityScore() <= 50 }"> red</c:if>
							<c:if test="${gamePage.getCommunityScore() < 85 && gamePage.getCommunityScore() > 50}"> yellow </c:if>
							<c:if test="${gamePage.getCommunityScore() >= 85}"> green </c:if>;">
                    <p>${gamePage.getCommunityScore() }</p>
                </div>    		
            </div>	
        </div>  
    	<div class="details">
    	    <h1>Detalhes</h1>
            <p>Genero: ${gamePage.getGenero() }</p>
            <p>Estúdio: ${gamePage.getStudio() }</p>
            <p>Duração Média: ${gamePage.getDuracaoMedia() }</p>
            <p>Multiplayer: ${gamePage.getMultiplayer()}</p>
            <p>Lançamento: ${gamePage.getLancamento() }</p>
    	</div>	
    </section>

    <div class="decoration"></div>

    <section class="critics">
        
            <div class="div-critics">
                <h1>CRITICA</h1>
                <p class="text-break">${gamePage.getCritica() }</p>
            </div>
    </section>

    <div class="decoration"></div>

    <section class="iframe">
        <h1>GAMEPLAY</h1>
        <iframe width="853" height="480" src="${gamePage.getLinkVideo()}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </section>

    <div class="decoration"></div>

    <section class="resume">
        <h1>RESUMO/DESCRIÇÃO</h1>
        <p class="text-break">${gamePage.getDescricao() }</p>
    </section>
    <footer class="footer">
        <address class="footer-left">
                <div class="endereco">
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="white" class="bi bi-geo-alt" viewBox="0 0 16 16">
                        <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
                        <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/></svg>
                    </div>
                    <div>
                        <p>NÂ°1 Rua 25 de marÃ§o</p>
                        <p>Caraguatatuba, Brasil</p>
                    </div>
                </div>
            	<div>
                    <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="white" class="bi bi-telephone" viewBox="0 0 16 16">
                    <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                    </svg> (12)98136-7399
                </div>
            	<div>
                   <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="white" class="bi bi-envelope" viewBox="0 0 16 16">
                    <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
                    </svg> support@fatec.sp.gov.br  
                </div>
        </address>
       <div class="footer-mediumright">
            <div class="footer-medium">
                <h1>About the company</h1>
                <p class="text-break">Os tempos de bandidagem e foras da lei estÃ¡ acabando e o espaÃ§o para guangues como a de Dutch Van Der Linde tambÃ©m. Seja um cowboy fora da lei no oeste selvagem.</p>
            </div>
            <div class="footer-right">
                <div class="icons-media">
                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="black" class="bi bi-facebook" viewBox="0 0 16 16">
                    <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
                    </svg>
                    <svg xmlns="http://www.w3.org/2000/svg"     " height="40" fill="black" class="bi bi-whatsapp" viewBox="0 0 16 16">
                    <path d="M13.601 2.326A7.854 7.854 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.933 7.933 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.898 7.898 0 0 0 13.6 2.326zM7.994 14.521a6.573 6.573 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.557 6.557 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592zm3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.1-.114.133-.198.198-.33.065-.134.034-.248-.015-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.729.729 0 0 0-.529.247c-.182.198-.691.677-.691 1.654 0 .977.71 1.916.81 2.049.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.38-.232z"/>
                    </svg>
                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="black" class="bi bi-github" viewBox="0 0 16 16">
                    <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"/>
                    </svg>
                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="black" class="bi bi-linkedin" viewBox="0 0 16 16">
                    <path d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854V1.146zm4.943 12.248V6.169H2.542v7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.4z"/>
                    </svg>
                </div>
            </div>
        </div>    
    </footer>
</body>
</html>