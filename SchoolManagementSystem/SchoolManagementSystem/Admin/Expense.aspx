﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="Expense.aspx.cs" Inherits="SchoolManagementSystem.Admin.Expense" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                <div>
    <div class="container p-md-4 p-sm-4">
        <div>
            <asp:Label ID="lblMs" runat="server"></asp:Label>
        </div>
        <h3 class="text-center">Yeni Gider</h3>

        <div class ="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
            <div class="col-md-6">
                <label for ="ddlClass">Sınıf</label>
                <asp:DropDownList ID="ddlClass" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlClass_SelectedIndexChanged" ></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Sınıf Gerekli" ControlToValidate="ddlClass" Display="Dynamic" ForeColor="Red" InitialValue="Select Class" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6">
                <label for ="ddlSubject">Ders</label>
                <asp:DropDownList ID="ddlSubject" runat="server" CssClass="form-control"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ders Gerekli" ControlToValidate="ddlSubject" Display="Dynamic" ForeColor="Red" InitialValue="Select Subject" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>


             <div class="col-md-6 mt-2">
                <label for ="txtExpenseAmt">Ücret Tutarı(Ders Başına)</label>
                 <asp:TextBox ID="txtExpenseAmt" runat="server" CssClass="form-control" placeholder="Ücret Tutarı Giriniz" TextMode="Number" required ></asp:TextBox>
             </div>
        </div>
        <div class ="row mb-3 mr-lg-5 ml-lg-5 mt-md-5"> 
            <div class="col-md-3 col-md-offset-2 mb-3">
                <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-block" BackColor="#5558C9" Text="Ücret Ekle" OnClick="btnAdd_Click"/>
            </div>
        </div>
        <div class ="row mb-3 mr-lg-5 ml-lg-5">
            <div class="col-md-8">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="Herhangi bir kayıt yok" AutoGenerateColumns="False" AllowPaging="True" PageSize="4" OnPageIndexChanging="GridView1_PageIndexChanging" DataKeyNames="ExpenseId" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" OnRowDataBound="GridView1_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="Sr.No" HeaderText="Sr.No">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Sınıf">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlClassGv" runat="server" DataSourceID="SqlDataSource1" DataTextField="ClassName" DataValueField="ClassId" SelectedValue='<%# Eval("ClassId") %>' CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlClassGv_SelectedIndexChanged">
                                    <asp:ListItem>Select Class</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolSysDBConnectionString %>" ProviderName="<%$ ConnectionStrings:SchoolSysDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Class]"></asp:SqlDataSource>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("ClassName") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Ders">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlSubjectGv" runat="server" CssClass="form-control">
                                 </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("SubjectName") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Ücret(Ders Başına)">
                            <EditItemTemplate>
                               <asp:TextBox ID="txtExpenseAmt" runat="server" CssClass="form-control" Text='<%# Eval("ChargeAmount") %>' TextMode="Number"></asp:TextBox>
                                </EditItemTemplate>
                                    <ItemTemplate>
                                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("ChargeAmount") %>'></asp:Label>
                                    </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                          </asp:TemplateField>

                        <asp:CommandField CausesValidation="false" HeaderText="Düzenle & Sil" ShowEditButton="True" ShowDeleteButton="true">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:CommandField>
                    </Columns>
                    <HeaderStyle BackColor="#555BC9" ForeColor="White"/>
                </asp:GridView>
            </div>
        </div>
    </div>
</div>

</asp:Content>
