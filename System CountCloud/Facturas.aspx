﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Facturas.aspx.cs" Inherits="System_CountCloud.Facturas" %>

<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Productos</title>
</head>

<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<body>
    
    <form runat="server"> 

        <!--- Menu del Login  -->
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#" > <span> <img alt="Logo" src="Images/1471130041_calculator.png" height="30" /></span> System CountCloud</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right"> 
                        <li><a href="Facturas.aspx">Facturacion</a></li>   
                        <li><a href="Productos.aspx">Productos</a></li>
                        <li><a href="Login.aspx">Cerrar Sesión</a></li>                        
                    </ul>
                </div>
            </div>
        </div> 
        
        
        <br />
        <br />
        <br />
        <br />
         <!-- Sign Up -->






<div class="container">
  <h2></h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Facturacion Modal</button>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
            
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Ingreso de Productos</h4>
        </div>
        <div class="modal-body">           
            <!--Montar el texto Aqui-->
            <p>Lista Productos:</p>
            <asp:TextBox ID="TextBox1" CssClass="form-control" Width="250" placeholder="Codigo del Producto" runat="server"></asp:TextBox>
            <br />
            <asp:DropDownList ID="DDLista" CssClass="form-control" Width="250" runat="server"></asp:DropDownList>
            <br />
            <asp:TextBox ID="TextBox2" CssClass="form-control" Width="250" placeholder="Nombre" runat="server"></asp:TextBox>
            <br />
             <asp:TextBox ID="TextBox3" CssClass="form-control" Width="250" placeholder="Precio" runat="server"></asp:TextBox>

            <!--Termina Aqui-->
          
            
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="Guardar" />
        </div>
       </div>
      
    </div>
  </div>
  
</div>
    </form>


</body>
</html>
