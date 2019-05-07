<?xml version = "1.0" encoding = "UTF-8"?>  

<xsl:stylesheet version = "1.0"   
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  
	
	
	<xsl:template match = "/">   
		
		<html>   
			<head>
				
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
				
              	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
			</head>
			
			<body>  
				<h2  style="color:black;text-align:center;" >Category City Wise</h2>
				<div class="container" style= "max-width:1250px;background-color:">
					<table class="table table-bordered "  style="background-color:#fff;border:2px solid black;">    
						<tr >   
							<th  style="color:black;text-align: center;background: darkturquoise;Font-size:15px;" >Date</th>   
							<th  style="color:black;text-align: center;background:darkturquoise;Font-size:15px;" >Zone</th>   
							<th  style="color:black;text-align: center;background:darkturquoise ;Font-size:15px;" >State_Name</th>   
							<th  style="color:black;text-align: center;background:darkturquoise;Font-size:15px;" >City_Name</th>
							
							<th  style="color:black;text-align: center;background: darkturquoise;Font-size:15px;" >Category</th>   
							<th  style="color:black;text-align: center;background: darkturquoise;Font-size:15px;" >AVG_Price</th>  
							<th  style="color:black;text-align: center;background:darkturquoise ;Font-size:15px;" >Quantity</th>  
							<th  style="color:black;text-align: center;background:darkturquoise ;Font-size:15px;" >Cost</th>
							
							<th  style="color:black;text-align: center;background: darkturquoise;Font-size:15px;" >GST</th> 
						</tr>   
						
						
						<xsl:for-each select="root/item">
							<tr >
								<td  style="border-top: 2px solid darkturquoise;border-right: 1px solid darkturquoise;text-align:left;background-color: ;"><xsl:value-of select = "Date"/></td>   
								<td style="border-top: 2px solid darkturquoise;border-right: 1px solid darkturquoise;text-align:left;background-color: ;" ><xsl:value-of select = "Zone"/></td>   
								<td style="border-top: 2px solid darkturquoise;border-right: 1px solid darkturquoise;text-align:left;background-color: ;" ><xsl:value-of select = "State_Name"/></td>   
								<td style="border-top: 2px solid darkturquoise;border-right: 1px solid darkturquoise;text-align:left;background-color:;" ><xsl:value-of select = "City_Name "/></td> 
								
								<td style="border-top: 2px solid darkturquoise;border-right: 1px solid darkturquoise;text-align:left;background-color:;"><xsl:value-of select = "Category"/></td>
								<td style="border-top: 2px solid darkturquoise;border-right: 1px solid darkturquoise;text-align:right;background-color:;"><xsl:value-of select = "AVG_Price"/></td>
								<td style="border-top: 2px solid darkturquoise;border-right: 1px solid darkturquoise;text-align:right;background-color:;"><xsl:value-of select = "Quantity"/></td>
								<td style="border-top: 2px solid darkturquoise;border-right: 1px solid darkturquoise;text-align:right;background-color:;"><xsl:value-of select = "Cost"/></td>
								
								<td style="border-top: 2px solid darkturquoise;border-right: 1px solid darkturquoise;text-align:left;background-color:;"><xsl:value-of select = "Gst"/></td>
								
							</tr>   
							
						</xsl:for-each>   
						<tr style="background:darkturquoise;" ><td ><b>Total</b></td>
							<td colspan="5" style="text-align:right;"><b><xsl:value-of select="sum(/root/item/AVG_Price)"/></b></td>
							<td style="text-align:right;"><b><xsl:value-of select="sum(/root/item/Quantity)"/></b></td>
							<td  style="text-align:right;"><b><xsl:value-of select="sum(/root/item/Cost)"/></b></td>
											<td style="text-align:right;"><b><xsl:value-of select="sum(/root/item/Gst)"/></b></td>
							
							
						</tr>	
					</table>   </div>
					
			</body>   
		</html>   
	</xsl:template>    
</xsl:stylesheet>  
