<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : TD.xsl
    Created on : 12 septembre 2019, 14:38
    Author     : mcoe
    Description:
   
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

 
    <xsl:template match="tableau">
        <html>
            <head>
                <link href="TD.css" type="text/css" rel="stylesheet" />
                <title>TD.xsl</title>
                
            </head>
            <body>
                <table>
                    
                    <tr class="debutDeTableau">
                        <th>Pays</th>
                        <th>Or</th>
                        <th>Argent</th>
                        <th>Bronze</th>                     
                    </tr>
                    <xsl:apply-templates />  
                   
                </table>
                                
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="ligne">
        <tr>
            <xsl:apply-templates />  
        </tr>
    </xsl:template>
    
    <xsl:template match="pays">
        <!--<td> 
            <xsl:value-of select=" @nomDePays"/>
        </td> -->
      
        <xsl:choose>
            <xsl:when test="@nomDePays ='USA'">
                <td class="usa"> 
                    <xsl:value-of select=" @nomDePays"/>
                </td>
            </xsl:when>           
            <xsl:when test="@nomDePays ='GrandeBretagne'">
                <td class="grandebretagne"> 
                    <xsl:value-of select=" @nomDePays"/>
                </td>
            </xsl:when>            
            <xsl:when test="@nomDePays ='Chine'">
                <td class="chine"> 
                    <xsl:value-of select=" @nomDePays"/>
                </td>
            </xsl:when> 
            <xsl:when test="@nomDePays ='Russie'">
                <td class="russie"> 
                    <xsl:value-of select=" @nomDePays"/>
                </td>
            </xsl:when> 
            <xsl:when test="@nomDePays ='Allemagne'">
                <td class="allemagne"> 
                    <xsl:value-of select=" @nomDePays"/>
                </td>
            </xsl:when> 
            <xsl:when test="@nomDePays ='Japon'">
                <td class="japon"> 
                    <xsl:value-of select=" @nomDePays"/>
                </td>
            </xsl:when> 
            <xsl:when test="@nomDePays ='France'">
                <td class="france"> 
                    <xsl:value-of select=" @nomDePays"/>
                </td>
            </xsl:when> 
            <xsl:when test="@nomDePays ='CoréeduSud'">
                <td class="coreedusud"> 
                    <xsl:value-of select=" @nomDePays"/>
                </td>
            </xsl:when>    
             <xsl:when test="@nomDePays ='Italie'">
                <td class="italie"> 
                     <xsl:value-of select=" @nomDePays"/>
                </td>
            </xsl:when>    
             <xsl:when test="@nomDePays ='Australie'">
                <td class="australie"> 
                     <xsl:value-of select=" @nomDePays"/>
                </td>
            </xsl:when>   
        </xsl:choose>

    </xsl:template>
 
    <xsl:template match="medaille">
      
        <xsl:choose>
            <xsl:when test="@typeDeMedaille ='or'">
                <td class="or"> 
                    <xsl:apply-templates/>
                </td>
            </xsl:when>           
            <xsl:when test="@typeDeMedaille ='argent'">
                <td class="argent"> 
                    <xsl:apply-templates/>
                </td>
            </xsl:when>            
            <xsl:when test="@typeDeMedaille ='bronze'">
                <td class="bronze"> 
                    <xsl:apply-templates/>
                </td>
            </xsl:when>               
        </xsl:choose>     
    </xsl:template>
</xsl:stylesheet>