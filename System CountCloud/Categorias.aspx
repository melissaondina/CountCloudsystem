﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categorias.aspx.cs" Inherits="System_CountCloud.Categorias" EnableEventValidation="false" %>

<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Categorias</title>
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
  <h2>Registro de Categorias</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg "   data-toggle="modal" data-target="#myModal">Agregar</button>
    <br />
    <br />

    <div class="jumbotron">
       
        <asp:GridView ID="GVCategorias"  class="table table-striped custab"   runat="server" OnRowEditing="GVCategorias_RowEditing">
           
            <Columns>
                 <asp:ButtonField Text="" ControlStyle-CssClass="btn btn-info btn-xs glyphicon glyphicon-edit" HeaderText="Edit" >
            <ControlStyle CssClass="btn btn-info btn-xs glyphicon glyphicon-edit"></ControlStyle>
                 </asp:ButtonField>
        <asp:ButtonField HeaderText="Delete">
           <ControlStyle CssClass="btn btn-danger btn-xs glyphicon glyphicon-remove"></ControlStyle>
        </asp:ButtonField>
            </Columns>
           <EditRowStyle BackColor="Yellow" ></EditRowStyle>

            
           
        </asp:GridView> 
            
       
     </div>
    
    
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
            
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Ingreso de Categorias</h4>
        </div>
        <div class="modal-body">           
            <!--Montar el texto Aqui-->
            <p>Lista Categorias:</p>
           
            <br />
            <asp:TextBox ID="txtnombrec" CssClass="form-control" Width="250" placeholder="Nombre Categoria" runat="server"></asp:TextBox>
            <br />
             <asp:TextBox ID="txtDescripcion" CssClass="form-control" Width="250" placeholder="Descripcion" runat="server"></asp:TextBox>

            <!--Termina Aqui-->
          
            
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="Guardar" OnClick="Button1_Click1" />
        </div>
       </div>
      
    </div>
  </div>
  
</div>

        




    </form>
       
    <style>
        .custab{
    border: 1px solid #ccc;
    padding: 5px;
    margin: 5% 0;
    box-shadow: 3px 3px 2px #ccc;
    transition: 0.5s;
    }
.custab:hover{
    box-shadow: 3px 3px 0px transparent;
    transition: 0.5s;
    }

    </style>



</body>
</html>
