<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/TeacherMst.Master" AutoEventWireup="true" CodeBehind="TeacherHome.aspx.cs" Inherits="SchoolManagementSystem.Teacher.TeacherHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <style>
      .card-counter{
  box-shadow: 2px 2px 10px #DADADA;
  margin: 5px;
  padding: 20px 10px;
  background-color: #fff;
  height: 100px;
  border-radius: 5px;
  transition: .3s linear all;
}

.card-counter:hover{
  box-shadow: 4px 4px 20px #DADADA;
  transition: .3s linear all;
}

.card-counter.primary{
  background-color: #007bff;
  color: #FFF;
}

.card-counter.danger{
  background-color: #ef5350;
  color: #FFF;
}  

.card-counter.success{
  background-color: #66bb6a;
  color: #FFF;
}  

.card-counter.info{
  background-color: #26c6da;
  color: #FFF;
}  

.card-counter i{
  font-size: 5em;
  opacity: 0.2;
}

.card-counter .count-numbers{
  position: absolute;
  right: 35px;
  top: 20px;
  font-size: 32px;
  display: block;
}

.card-counter .count-name{
  position: absolute;
  right: 35px;
  top: 65px;
  font-style: italic;
  text-transform: capitalize;
  opacity: 0.5;
  display: block;
  font-size: 18px;
}
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--    <div>
    <div class="container p-md-4 p-sm-4">
        <div>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>
        <h2 class="text-center">Öğretmen Ana Sayfası</h2>
    </div>
</div>--%>

    <div class="container">
    <div class="row pt-5">
        <div class="col-md-5">
            <div class="card-counter primary">
                <i class="fa fa-code-fork"></i>
                <span class="count-numbers"><%Response.Write(Session["student"]); %></span>
                <span class="count-name">Toplam Öğrenci Sayısı</span>
            </div>
        </div>

        <div class="col-md-5">
            <div class="card-counter danger">
                <i class="fa fa-ticket"></i>
                <span class="count-numbers"><%Response.Write(Session["teacher"]); %></span>
                <span class="count-name">Toplam Öğretmen Sayısı</span>
            </div>
        </div>

        <div class="col-md-5">
            <div class="card-counter success">
                <i class="fa fa-database"></i>
                <span class="count-numbers"><%Response.Write(Session["class"]); %></span>
                <span class="count-name">Toplam Sınıf Sayısı</span>
            </div>
        </div>

        <div class="col-md-5">
            <div class="card-counter info">
                <i class="fa fa-users"></i>
                <span class="count-numbers"><%Response.Write(Session["subject"]); %></span>
                <span class="count-name">Toplam Ders Sayısı</span>
            </div>
        </div>
    </div>
</div>

</asp:Content>
