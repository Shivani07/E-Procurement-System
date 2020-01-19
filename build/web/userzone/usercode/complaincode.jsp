<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="MyPackage.DatabaseManager"%>
<%
  ResultSet rs=null;
  String name="",contactno="",email="";
  DatabaseManager db=new DatabaseManager();
  int id;
  rs=db.selectQuery("select nvl(max(id),0)+1 from complain");
  rs.next();
  id=rs.getInt(1);
  rs=db.selectQuery("select concern_person,CONCERN_PERSON_CONTACTNO,concern_person_emailaddress from vendor_registration where username='"+session.getAttribute("username").toString() +"'");
  if(rs.next()==true)
  {
  name=rs.getString(1);
  contactno=rs.getString(2);
  email=rs.getString(3);
  }
  String complaintext=request.getParameter("complaintext");
  SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
  String dt=df.format(new Date());

  boolean res=db.executeNonQuery("insert into complain values("+id+",'"+name+"','"+contactno+"','"+email+"','"+complaintext+"','"+dt+"')");
  if(res==true)
  {
      out.println("<script>alert('Complain submitted');window.location.href='../complain.jsp';</script>");
  }
  else
      out.println("<script>alert('Database Error!! Complaint did not submit.');window.location.href='../complain.jsp';</script>");
%>