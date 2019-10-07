<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Student_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script>
        var images = new Array();
        images.push("1.jpg");
        images.push("2.jpg");
        images.push("3.jpg");
        images.push("4.jpg");
        images.push("5.jpg");
        var i=1;
        function slideshow()
        {
            i = (i + 1) % 5;
            document.getElementById("imgslideshow").src=images[i];
            setTimeout(function () { slideshow()}, 2000);
        }

       

    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html xmlns="http://www.w3.org/1999/xhtml">
<body onload="slideshow()">   
    
    <img src="1.jpg" style="position:relative;left:250px;text-align:center" height="500" width="1000" id="imgslideshow" alt="Hello" />
    
    </body>


    </html>
</asp:Content>

