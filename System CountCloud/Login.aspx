<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="System_CountCloud.Login" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="Sweetalert/sweetalert.css" rel="stylesheet" />
<script src="Sweetalert/sweetalert.min.js"></script>

<body>

    <!--- SweeAlert -->
    <script>
        function ErrorUsuario() {
            swal({
                title: 'Error!',
                text: 'Favor verificar su Usuario!',
                type: 'error'
            });
        }

        function ErrorContraseña() {
            swal({
                title: 'Error!',
                text: 'Favor verificar su Contraseña!',
                type: 'error'
            });
        }


        
    </script>

    <form id="form1" runat="server">

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


        <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
        <body>
            <div class="container">
                <div class="row vertical-offset-100">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">                                
                                <div class="row-fluid user-row">
                                    <img src="Images/login.png" width="150" height="200"  class="img-responsive" alt="Conxole Admin" /> 
                                </div>
                            </div>
                            <div class="panel-body">
                                <form accept-charset="UTF-8" role="form" class="form-signin">
                                    <fieldset>
                                        <label class="panel-login">
                                            <div class="login_result"></div>
                                        </label>
                                        <asp:TextBox ID="txtUsuario" placeholder="Username" CssClass="form-control" runat="server"></asp:TextBox>
                                         <asp:TextBox ID="txtContraseña" placeholder="Password" CssClass="form-control"  runat="server" TextMode="Password"></asp:TextBox>
                                        
                                        <br></br>
                                        <asp:Button ID="Button1" CssClass="btn btn-lg btn-success btn-block" runat="server" Text="Login" OnClick="Button1_Click" />                                        
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </body>
            </div>
    </form>

    <style>
         body {
        background-color: #444;
        background: url(http://www.fondox.net/wallpapers/resoluciones/13/textura-fondo-azul_1280x800_1573.jpg);
        
    }
    .form-signin input[type="text"] {
        margin-bottom: 5px;
        border-bottom-left-radius: 0;
        border-bottom-right-radius: 0;
            top: 70px;
            left: 0px;
        }
    .form-signin input[type="password"] {
        margin-bottom: 10px;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
    }
    .form-signin .form-control {
        position: relative;
        font-size: 16px;
        font-family: 'Open Sans', Arial, Helvetica, sans-serif;
        height: auto;
        padding: 10px;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }
    .vertical-offset-100 {
        padding-top: 100px;
    }
    .img-responsive {
    display: block;
    max-width: 100%;
    height: auto;
    margin: auto;
    }
    .panel {
    margin-bottom: 20px;
    background-color: rgba(255, 255, 255, 0.75);
    border: 1px solid transparent;
    border-radius: 4px;
    -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
    box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
    }
    </style>
</body>
</html>
