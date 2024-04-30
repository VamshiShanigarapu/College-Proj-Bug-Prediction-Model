				
<%@ include file="connect.jsp"%>


<%
String company=(String)application.getAttribute("cname");
String defects="";
int i=0,count=0;
try
{
			


%><html>
<head>
<title>No. of Same Bugs In Chart..</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	
String query1="select defects,count(defects) from defects_tmanager where company='"+company+"' GROUP BY defects "; 
Statement st1=connection.createStatement();
ResultSet rs1=st1.executeQuery(query1);
while ( rs1.next() )
{
	
	defects=rs1.getString(1);
	count=rs1.getInt(2);
	
	%>
	
	myData["<%=i%>"]=["<%= defects%>",<%= count%>];
        
	<%

	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#FF0000');
	myChart.setBarOpacity(0.8);
	myChart.setSize(600,280);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#000000');
	myChart.draw();
	
</script>

</body>
</html>
<%

}
catch(Exception e)
{
e.printStackTrace();
}
%>




