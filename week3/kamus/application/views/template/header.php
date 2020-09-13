<!DOCTYPE html>
<html>
    <head>
        <title>Kamus</title>
        <!-- CSS  -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        
    </head>
    <body class="grey lighten-3" >	
	<!-- Navbar menu -->
        <!-- Desktop menu -->
        <div class="navbar-fixed">
            <nav class="green">
                <div class="nav-wrapper container">
                    <a
                        href="#"
                        data-target="mobile-demo"
                        class="sidenav-trigger ml-0 my-auto"
                        ><i class="material-icons white-text">apps</i></a
                    >
                    <a
                        href="<?php echo  base_url();?>"
                        class="brand-logo my-auto white-text"
                        style="font-size: 1.5rem;"
                        >Kamus Jawa Indonesia</a
                    >

                    <ul class="right hide-on-med-and-down">
                        <li><a href="<?php echo  base_url();?>">Terjemahkan</a></li>
                        <li><a href="<?php echo  base_url();?>kamus/list">List Data</a></li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- Mobile menu -->
        <ul class="sidenav" id="mobile-demo">
            <li><a href="<?php echo  base_url();?>">Terjemahkan</a></li>
            <li><a href="<?php echo  base_url();?>kamus/list">Ubah</a></li>
        </ul>
        <!-- End Navbar -->