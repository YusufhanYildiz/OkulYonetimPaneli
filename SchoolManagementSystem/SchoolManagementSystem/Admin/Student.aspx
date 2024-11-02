<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="SchoolManagementSystem.Admin.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                <div>
    <div class="container p-md-4 p-sm-4">
        <div>
            <asp:Label ID="lblMs" runat="server"></asp:Label>
        </div>
        <h3 class="text-center">Yeni Öğrenci</h3>

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
                <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" TextMode="Number" placeholder="10 Digits Mobile No." required></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Geçersiz Telefon Numarası " ForeColor="Red" ValidationExpression="^[0-9]{10}" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtMobile"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class ="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
    <div class="col-md-6">
        <label for ="txtRoll">Öğrenci Numarası</label>
        <asp:TextBox ID="txtRoll" runat="server" CssClass="form-control" placeholder="Email Giriniz" required></asp:TextBox>
    </div>
    <div class="col-md-6">
        <label for ="ddlClass">Sınıf</label>
        <asp:DropDownList ID="ddlClass" runat="server" CssClass="form-control"></asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Sınıf Gerekli" ControlToValidate="ddlClass" Display="Dynamic" ForeColor="Red" InitialValue="Select Class" SetFocusOnError="True"></asp:RequiredFieldValidator>
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
                <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-block" BackColor="#5558C9" Text="Öğrenci Ekle" OnClick="btnAdd_Click" />
            </div>
        </div>
        <div class ="row mb-3 mr-lg-5 ml-lg-5">
            <div class="col-md-8">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="Herhangi bir kayıt yok" AutoGenerateColumns="False" AllowPaging="True" PageSize="4" OnPageIndexChanging="GridView1_PageIndexChanging" DataKeyNames="StudentId" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDataBound="GridView1_RowDataBound">
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

                        <asp:TemplateField HeaderText="Öğrenci Numarası">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtRollNo" runat="server" Text='<%# Eval("RollNo") %>' CssClass="form-control" Width="100px"></asp:TextBox>
                             </EditItemTemplate>
                                <ItemTemplate>
                            <asp:Label ID="txtRollNo" runat="server" Text='<%# Eval("RollNo") %>'></asp:Label>
                                 </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>

                        <asp:TemplateField HeaderText="Sınıf">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddlClass" runat="server" CssClass="form-control" Width="120px"></asp:DropDownList>
                                 </EditItemTemplate>
                                    <ItemTemplate>
                                         <asp:Label ID="lblClass" runat="server" Text='<%# Eval("ClassName") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>

                        <asp:TemplateField HeaderText="Adres">
                                            <EditItemTemplate>
                                             <asp:TextBox ID="txtAddress" runat="server" Text='<%# Eval("Address") %>' CssClass="form-control" Width="130px"></asp:TextBox>
                                            </EditItemTemplate>
                                               <ItemTemplate>
                                                <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                                                 </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                       </asp:TemplateField>


                        <asp:CommandField CausesValidation="false" HeaderText="Düzenle" ShowEditButton="True">
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
