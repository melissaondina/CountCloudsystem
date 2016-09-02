<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="System_CountCloud.Productos" EnableEventValidation="false" %>

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
                        <li><a href="Categorias.aspx">Categorias</a></li  
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
  <h2>Registro de Productos</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg "   data-toggle="modal" data-target="#myModal">Agregar</button>
    <br />
    <br />

    <div class="jumbotron">
        
        <asp:GridView ID="GVProductos"  class="table table-striped custab"   runat="server" OnRowEditing="GVProductos_RowEditing" AutoGenerateColumns="False" DataKeyNames="Id_Articulo" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GVProductos_SelectedIndexChanged1" OnPageIndexChanging="GVProductos_PageIndexChanging" OnRowCancelingEdit="GVProductos_RowCancelingEdit" OnRowUpdating="GVProductos_RowUpdating"  >
           
            <Columns>
                 <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                 <asp:TemplateField HeaderText="Articulo" SortExpression="Articulo">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Articulo") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label4" runat="server" Text='<%# Bind("Articulo") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Id_Categoria" SortExpression="Id_Categoria">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Id_Categoria") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label3" runat="server" Text='<%# Bind("Id_Categoria") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Precio" SortExpression="Precio">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Precio") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label2" runat="server" Text='<%# Bind("Precio") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Cod_Barra" SortExpression="Cod_Barra">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Cod_Barra") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("Cod_Barra") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:CommandField ButtonType="Image"  ShowEditButton="True" EditImageUrl="~/Images/1472645826_compose.png"  >
                 <ControlStyle Height="30px" Width="30px" />
                 </asp:CommandField>
            </Columns>
           <EditRowStyle BackColor="Yellow" ></EditRowStyle>

            
           
        </asp:GridView> 
            
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CountCloudConnectionString %>" DeleteCommand="DELETE FROM [Articulos] WHERE [Id_Articulo] = @Id_Articulo" InsertCommand="INSERT INTO [Articulos] ([Articulo], [Id_Categoria], [Precio], [Cod_Barra]) VALUES (@Articulo, @Id_Categoria, @Precio, @Cod_Barra)" SelectCommand="SELECT * FROM [Articulos]" UpdateCommand="UPDATE [Articulos] SET [Articulo] = @Articulo, [Id_Categoria] = @Id_Categoria, [Precio] = @Precio, [Cod_Barra] = @Cod_Barra WHERE [Id_Articulo] = @Id_Articulo">
            <DeleteParameters>
                <asp:Parameter Name="Id_Articulo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Articulo" Type="String" />
                <asp:Parameter Name="Id_Categoria" Type="Int32" />
                <asp:Parameter Name="Precio" Type="Int32" />
                <asp:Parameter Name="Cod_Barra" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Articulo" Type="String" />
                <asp:Parameter Name="Id_Categoria" Type="Int32" />
                <asp:Parameter Name="Precio" Type="Int32" />
                <asp:Parameter Name="Cod_Barra" Type="Int32" />
                <asp:Parameter Name="Id_Articulo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server">
        </asp:EntityDataSource>
            
       
     </div>
    
    
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
            <asp:TextBox ID="txtCodigo" CssClass="form-control" Width="250" placeholder="Codigo del Producto" runat="server"></asp:TextBox>
            <br />
            <asp:DropDownList ID="DDLista" CssClass="form-control" Width="250" runat="server" OnSelectedIndexChanged="DDLista_SelectedIndexChanged"></asp:DropDownList>
            <br />
            <asp:TextBox ID="txtNombre" CssClass="form-control" Width="250" placeholder="Nombre" runat="server"></asp:TextBox>
            <br />
             <asp:TextBox ID="txtPrecio" CssClass="form-control" Width="250" placeholder="Precio" runat="server"></asp:TextBox>

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
