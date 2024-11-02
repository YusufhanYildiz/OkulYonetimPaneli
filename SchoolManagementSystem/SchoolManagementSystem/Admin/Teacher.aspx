<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="SchoolManagementSystem.Admin.Teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div>
    <div class="container p-md-4 p-sm-4">
        <div>
            <asp:Label ID="lblMs" runat="server"></asp:Label>
        </div>
        <h3 class="text-center">Yeni Öğretmen</h3>

        <div class ="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
            <div class="col-md-6">
                <label for ="txtName">İsim</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="İsim Giriniz" required></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="İsim karakterlerden oluşmalıdır " ForeColor="Red" ValidationExpression="^[a-zçğıiöşüA-ZÇİIĞÖŞÜ\s]+$" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtName"></asp:RegularExpressionValidator>
            </div>
            <div class="col-md-6">
                <label for ="txtDoB">Doğum Tarihi</label>
                <asp:TextBox ID="txtDoB" runat="server" CssClass="form-control" TextMode="Date" required></asp:TextBox>
            </div>
        </div>

                <div class ="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
            <div class="col-md-6">
                <label for ="ddlGender">Cinsiyet</label>
                <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                    <asp:ListItem Value="0">Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cinsiyet Gerekli" ForeColor="Red" ControlToValidate="ddlGender" Display="Dynamic" SetFocusOnError="true" InitialValue="Select Gender"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6">
                <label for ="txtMobile">İletişim Numarası</label>
                <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" TextMode="Number" placeholder="10 Haneli Giriniz" required></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Geçersiz Telefon Numarası " ForeColor="Red" ValidationExpression="^[0-9]{10}" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtMobile"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class ="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
    <div class="col-md-6">
        <label for ="txtEmail">Email</label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email Giriniz" TextMode="Email" required></asp:TextBox>
    </div>
    <div class="col-md-6">
        <label for ="txtPassword">Şifre</label>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Şifre Giriniz" required></asp:TextBox>
    </div>
</div>

                <div class ="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
    <div class="col-md-12">
        <label for ="txtAddress">Adres</label>
        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Adres Giriniz" TextMode="MultiLine" required></asp:TextBox>
    </div>
</div>

        <div class ="row mb-3 mr-lg-5 ml-lg-5 mt-md-5"> 
            <div class="col-md-3 col-md-offset-2 mb-3">
                <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-block" BackColor="#5558C9" Text="Öğretmen Ekle" OnClick="btnAdd_Click" />
            </div>
        </div>
        <div class ="row mb-3 mr-lg-5 ml-lg-5">
            <div class="col-md-8">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="Herhangi bir kayıt yok" AutoGenerateColumns="False" AllowPaging="True" PageSize="4" OnPageIndexChanging="GridView1_PageIndexChanging" DataKeyNames="TeacherId" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:BoundField DataField="Sr.No" HeaderText="Sr.No" ReadOnly="true">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:TemplateField HeaderText="İsim">
                            <EditItemTemplate>
                                <asp:TextBox ID="Name" runat="server" Text='<%# Eval("Name") %>' CssClass="form-control" Width="100px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="İletişim Numarası">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtMobile" runat="server" Text='<%# Eval("Mobile") %>' CssClass="form-control" Width="100px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblMobile" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                            <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                 </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>

                        <asp:TemplateField HeaderText="Şifre">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtPassword" runat="server" Text='<%# Eval("Password") %>' CssClass="form-control" Width="100px"></asp:TextBox>
                                 </EditItemTemplate>
                                    <ItemTemplate>
                                         <asp:Label ID="lblPassword" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>

                        <asp:TemplateField HeaderText="Adres">
                                            <EditItemTemplate>
                                             <asp:TextBox ID="txtAddress" runat="server" Text='<%# Eval("Address") %>' CssClass="form-control" Width="100px"></asp:TextBox>
                                            </EditItemTemplate>
                                               <ItemTemplate>
                                                <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
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
