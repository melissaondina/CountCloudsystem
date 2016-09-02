<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="System_CountCloud.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrar</title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
     <link href="Sweetalert/sweetalert.css" rel="stylesheet" />
<script src="Sweetalert/sweetalert.min.js"></script>
   
</head>
<body>

    <script >

        function GoodUser() {
            swal("Exito!", "Su Usuario ha sido creado!", "success")
        }

        function ErrorUser() {
            swal("Error!", "Hay campos que no estan llenos!", "error")
        }
               

    </script>




    <form id="form1" runat="server">
    <div>

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
                        <li><a href="Registrarse.aspx">Registrase</a></li>
                        <li><a href="Login.aspx">Login</a></li>
                    </ul>
                </div>
            </div>
        </div> 
        
        
        <br />
        <br />
        <br />
        <br />
         <!-- Sign Up -->
        
        <div class="center-page">
           
            <label class="col-xs-11">Usuario</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbUname" runat="server" Class="form-control"  placeholder="Usuario"></asp:TextBox>
            </div>
            <label class="col-xs-11">Contraseña</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbPass" runat="server" Class="form-control"  placeholder="Contraseña" TextMode="Password"></asp:TextBox>
            </div>

            <label class="col-xs-11">Confirmar Contraseña</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbCPass" runat="server" Class="form-control"  placeholder="Confirmar Contraseña" TextMode="Password"></asp:TextBox>
            </div>

            <label class="col-xs-11">Nombre</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbName" runat="server" Class="form-control"  placeholder="Nombre"></asp:TextBox>
            </div>

            <label class="col-xs-11">Apellido</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbApellido" runat="server" Class="form-control"  placeholder="Apellido"></asp:TextBox>
            </div>

            <label class="col-xs-11">Correo</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbEmail" runat="server" Class="form-control"  placeholder="Correo" TextMode="Email"></asp:TextBox>
            </div>

            <div class="col-xs-11 space-vert">
                <asp:Button ID="btCrear" runat="server" Class="btn btn-success" Text="Crear Usuario" OnClick="btCrear_Click"  />
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>

        </div>
        <!-- Sign Up -->
       <hr />
    </div>

        

    </form>

  
    

    </body>

    
</html>

  