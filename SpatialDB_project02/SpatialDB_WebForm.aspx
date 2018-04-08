<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SpatialDB_webform.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search for country area</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body style="padding-top : 10px" class="bg-gradient-light">
    <div class="container"> 
        <form id="form1" runat="server" class="form-horizontal">
            <div class="jumbotron jumbotron-fluid" style="background-color: #e3f2fd;">
                <div class="container">
                    <h1 class="display-4">Spatial Database - project 2</h1>
                    <p class="lead">WebForm for search area of each country</p>
                </div>
            </div>
            <div class="card" >
                <div class="card-header" style="background-color: #e3f2fd;">
                    Enter country name
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <h5 class="card-title">Country name</h5>
                        <div class="col-xs-10 col-sm-10">
                            <input type="text" id ="TextBox1" runat="server" class ="form-control"/>
                        </div>
                        <div class="col-xs-2 col-sm-2">
                            <br />
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" class="btn btn-primary" />
                        </div>
                    </div>
                </div>
            </div>
            
            <br />
            
            <div class="card">
                <div class="card-header" style="background-color: #e3f2fd;">
                    Show Result
                </div>
                <div class="card-body">
                    <div class="col-xs-12">
                        <asp:GridView CssClass="table table-bordered" ID="gvSearchResults" runat="server"></asp:GridView>
                    </div>
                </div>
            </div>
        </form>
        
        <br />

        <div class="col-sm-12 col-xs-12 text-right">
            <address>
                <b>Create by</b> 
                <br>
                Napat Jintanakosol
                <br>
                Nontakorn Kuedmongkol
                <br>
                Jurarut Subcheevaanan
                <br>
            </address>
        </div>
        
    </div>
</body>
</html>
