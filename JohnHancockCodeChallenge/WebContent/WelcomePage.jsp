 <%@ page import="java.sql.*"%>

 <%
 String name=(String)request.getParameter("name");
 String email=(String)request.getParameter("email");
 
 try {
	   Class.forName("oracle.jdbc.driver.OracleDriver"); 
	}
	catch(ClassNotFoundException ex) {
	   System.out.println("Error: unable to load driver class!");
	   System.exit(1);
	}
 
 try{
	 Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","root");
	 PreparedStatement ps = conn.prepareStatement("insert into googleinfo values(?,?)");
	 ps.setString(1,name);
	 ps.setString(2,email);
	 int x = ps.executeUpdate();
	 if(x!=0){
		 out.print("Insert Complete");
	 }else{
		 out.print("Error Inserting");
	 }
 }catch(Exception e){
	 out.print(e);
 }
  %>
<br>
Welcome: <%=name %> <br>

Your Email Address is: <%=email %> <br>

</script>
