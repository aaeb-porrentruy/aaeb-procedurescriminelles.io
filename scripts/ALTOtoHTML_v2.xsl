<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:alto="http://www.loc.gov/standards/alto/ns-v4#"
    xpath-default-namespace="http://www.loc.gov/standards/alto/ns-v4#" 
    version="2.0"
    exclude-result-prefixes="xs">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="/">
<html lang="fr">
    
    <head>
        <title>Projet Crimes et Châtiments</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
        <link rel="stylesheet" href="../style/feuilledestyle.css"/>
        <meta charset="UTF-8"/>
        <meta name="keywords" content="Bâle, procédures criminelles, sorcellerie, sorcière, évêché de Bâle"/>
        <meta name="description" content="Procédures criminelles de la principauté épiscopale de Bâle (16-17e siècles)"/>
        <meta name="author" content="Elodie Paupe"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
        <script src="../scripts/script.js"></script>
                                    
    </head>
    
    <body>
        <!-- Menus -->
        <header>
            <!-- En-tête du site des aaeb: 
              <img id="logo" src="http://aaeb.ch/htdocs/images/header.jpg"/> -->
            <a href="index.html"><img id="logo" src="../photos/logo_bis.png" alt="logo"/></a>
            <nav id="primary_nav_wrap">
                <ul>
                    <li class="current-menu-item"><a href="../index.html">Accueil</a></li>
                    <li><a href="#">Description du projet</a>
                        <ul>
                            <li><a href="../description_projet.html">"Crimes et Châtiments"</a></li>
                            <li><a href="../calendrier.html">Calendrier du projet</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Ressources</a>
                        <ul>
                            <li><a href="../modele_HTR.html">Modèles HTR</a></li>
                            <li><a href="../bdd_cod205a.html">Base de données: Cod.205a</a></li>
                            <li><a href="../bdd_sorciere.html">Base de données: socières</a></li>
                            <li><a href="../abecedaire.html">Abécédaire</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Accéder aux sources</a>
                        <ul>
                            <li><a href="../lecture.html">Lire les sources</a></li>
                            <li><a href="../infographie.html">Infographie</a></li>
                        </ul>
                    </li>
                    <li><a href="../liens.html">Liens</a></li>
                </ul>
            </nav>
        </header>
        
        
        <h1>Projet "Crimes et châtiments"</h1>
        <h2>Procès de sorcelleries et procédures criminelles: numérisation, mise en ligne et médiation</h2>
        
        <nav id="salle_lecture">
            <ul>
                <li class="deroulant"><a href="#">Sélectionner le dossier</a>
                    <ul>
                        <li><a href="B_168_15-2-1_0001.html">B 168/15-2.1 - Information secrète contre Annelin Boulay</a></li>
                        <li><a href="B_168_15-2-2_0001.html">B 168/15-2.2 - Informations levées d'office par le prévôt de
                            Porrentruy Henri Farine et le maire de Courtedoux Claudat Bruat (Briot?)</a></li>
                        <li><a href="B_168_15-2-3_0001.html">B 168/15-2.3 - Interrogatoires d'Annelin Boulay</a></li>
                        <li><a href="B_168_15-2-4_0001.html">B 168/15-2.4 - Urphède d'Annelin Boulay</a></li>
                        <li><a href="B_168_15-9-2_0001.html">B 168/15-9.2 – Informations levées contre Agathe Voélin (dépositions
                            des témoins)</a></li>
                        <li><a href="B_168_15-9-4_0001.html">B 168/15-9.4 – Aveux définitifs d'Agathe Voélin – résumés de ses
                            aveux des 17, 20, 26 et 31 août</a></li>
                        <li><a href="B_168_15-10-3_0001.html">B 168/15-10.3 - Aveux définitifs d'Aignelatte Thiebault résumant
                            ses aveux des 18, 20, 26 et 31 août</a></li>
                        <li><a href="B_168_15-23-1_0001.html">B 168/15-23.1 - Résumé des griefs contre Adelheid Bourquin et Alix
                            Rossel</a></li>
                        <li><a href="B_168_15-23-2_0001.html">B 168/15-23.2 - Interrogatoires d'Adelheid Bourquin</a></li>
                        <li><a href="B_168_15-23-3_0001.html">B 168/15-23.3 - Aveux définitifs d'Adelheid Bourquin</a></li>
                        <li><a href="B_168_15-23-4_0001.html">B 168/15-23.4 - Interrogatoires d'Alix Rossel</a></li>
                        <li><a href="B_168_15-23-5_0001.html">B 168/15-23.5 - Aveux définitifs d'Alix Rossel</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        
        <div class="bouton_lecture w3-center">
            <div class="w3-bar">
                <a href="#" class="w3-button w3-blue w3-hover-white">1</a>
                <a href="#" class="w3-button w3-blue w3-hover-white">2</a>
                <a href="#" class="w3-button w3-blue w3-hover-white">3</a>
            </div>
        </div>
        
        <div class="lecture">
            <div class="lecture_transcription">
                <xsl:apply-templates select="//String"/>
            </div>
            <div class="lecture_image img-zoom-container">
                <img id="myimage" alt="">
                    <xsl:attribute name="src">
                        <xsl:variable name="image" select="//fileName"/>
                        <xsl:variable name="lien_fichier" select="concat('https://raw.githubusercontent.com/aaeb-porrentruy/corpus_prevot_farine_fr/main/B168/',$image)"/>
                        <xsl:value-of select="$lien_fichier"/>
                    </xsl:attribute>
                </img>
            </div>
        </div>
        
        
        <div id="myresult" class="img-zoom-result"></div>
        
        
        <script>
            imageZoom("myimage", "myresult"); 
        </script>
        
        <p style="margin-top: 300px">
            Les fichiers HTML des transcriptions sont tirés directement des fichiers ALTO générés par e-Scriptorium ou
            Transkribus grâce à un fichier <a href="scripts/ALTOtoHTML.xsl" download="">xslt</a>.
        </p>
        
        <footer>
            <p>Archives de l'ancien Évêché de Bâle – <a href="mailto:jean-claude.rebetez@aaeb.ch">Nous écrire</a></p>
            <p>2022 - Tous droits réservés.</p>
            
        </footer>
    </body>
    
</html>
</xsl:template>

<xsl:template match="String">
    <xsl:for-each select="@CONTENT">
        
        <xsl:value-of select="."/><br/>
    </xsl:for-each>
</xsl:template>


</xsl:stylesheet>