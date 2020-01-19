<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.DatabaseManager"%>
<%
  ResultSet rs=null;
  String name="";
  DatabaseManager db=new DatabaseManager();
  int id;
  rs=db.selectQuery("select nvl(max(id),0)+1 from review");
  rs.next();
  id=rs.getInt(1);
  rs=db.selectQuery("select concern_person from vendor_registration where username='"+session.getAttribute("username").toString() +"'");
  if(rs.next()==true)
  {
  name=rs.getString(1);
  }
  long rating=Long.parseLong(request.getParameter("rating"));
  String reviewtext=request.getParameter("reviewtext");
  java.text.SimpleDateFormat df=new java.text.SimpleDateFormat("dd/MM/yyyy");
  String dt=df.format(new java.util.Date());

  boolean res=db.executeNonQuery("insert into review values("+id+",'"+name+"',"+rating+",'"+reviewtext+"','"+dt+"')");
  
  //out.println("<script>alert('"+msg+"';window.location.href='../review.jsp';</script>");
  if(res==true)
  {
      out.println("<script>alert('Review submitted');window.location.href='../review.jsp';</script>");
  }
  else
      out.println("<script>alert('Database Error!! Review did not submit.');window.location.href='../review.jsp';</script>");
  
  /*
  rs=db.selectQuery("select name,rating,reviewtext from review");
  String rev="<table>";
  if(rs.next()==true)
  {
      rev+="<tr><td rowspan='2'>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td></tr>";
  }
  rev+="</table>";
*/          
%>