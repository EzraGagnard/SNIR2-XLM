<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : TD.xsl
    Created on : 5 septembre 2019, 15:11
    Author     : mcoeurjoly
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->

        
            
            <xsl:template match="bibliotheque">
           <html>
            <head>
                <title>TD.xsl</title>
            </head>
                <body>    
            <xsl:apply-templates />
                </body>
           </html>
            </xsl:template>

          
                <xsl:template match="allees">
                    <h1> Allées <xsl:value-of select="numero"/> </h1>
                    <hr/>
            <xsl:apply-templates />
                </xsl:template>
                 
             
               
       
         <xsl:template match="rayon">                  
                 <h2> Rayon  <xsl:value-of select="@numeroRayon"/> </h2>    
                  <table>
                      <tr>
                           <th> Categorie d'Ouvrage </th>
                              <th> Titre </th> 
                               <th> Auteur </th>
                                <th> Numero d'Ouvrage </th>
                      </tr>                     
     <xsl:apply-templates />    
     </table>             
         </xsl:template>
                 
                  <xsl:template match="ouvrage">       
                      
                      <tr>
                         <td> <xsl:value-of select="@typeOuvrage"/> </td>
                           <td> <xsl:value-of select="titre"/> </td> 
                          
            <xsl:choose>
                <xsl:when test="auteur!='null'">
                    <td><xsl:value-of select="auteur"/></td>
                </xsl:when>
                <xsl:otherwise>
                   <td>Pas d'auteur</td>
                </xsl:otherwise>
            </xsl:choose>  
                              <xsl:choose>
                <xsl:when test="numeroOuvrage!='null'">
                    <td><xsl:value-of select="numeroOuvrage"/></td>
                </xsl:when>
                <xsl:otherwise>
                   <td>Pas de numéro d'ouvrage</td>
                </xsl:otherwise>
            </xsl:choose>  
          
                     
                 </tr>                        
                </xsl:template>
                 

      


</xsl:stylesheet>
