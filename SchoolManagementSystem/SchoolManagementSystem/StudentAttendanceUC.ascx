<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StudentAttendanceUC.ascx.cs" Inherits="SchoolManagementSystem.StudentAttendanceUC" %>


<div class="container p-md-4 p-sm-4">
    <div>
        <asp:Label ID="lblMs" runat="server"></asp:Label>
    </div>
</div>
<h3 class="text-center">Öğrenci Katılımı Detayları</h3>

<div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
    <div class="col-md-6">
        <label for="ddlClass">Sınıf</label>
        <asp:DropDownList ID="ddlClass" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlClass_SelectedIndexChanged"></asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Sınıf Gerekli" ControlToValidate="ddlClass" Display="Dynamic" ForeColor="Red" InitialValue="Select Class" SetFocusOnError="True"></asp:RequiredFieldValidator>
    </div>
    <div class="col-md-6">
        <label for="ddlSubject">Ders</label>
        <asp:DropDownList ID="ddlSubject" runat="server" CssClass="form-control"></asp:DropDownList>
        <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ders Gerekli" ControlToValidate="ddlSubject" Display="Dynamic" ForeColor="Red" InitialValue="Select Subject" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
    </div>
</div>

<div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
    <div class="col-md-6">
        <label for="ddlClass">Öğrenci Numarası</label>
        <asp:TextBox ID="txtRollNo" runat="server" CssClass="form-control" placeholder="Öğrenci Numarası Giriniz"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Öğrenci Numarası Gerekli" ControlToValidate="txtRollNo" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    </div>
    <div class="col-md-6">
        <label for="txtMonth">Ay</label>
        <asp:TextBox ID="txtMonth" runat="server" CssClass="form-control" TextMode="Month"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ay Gerekli" ControlToValidate="txtMonth" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ders Gerekli" ControlToValidate="ddlSubject" Display="Dynamic" ForeColor="Red" InitialValue="Select Subject" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
    </div>
</div>


<div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
    <div class="col-md-3 col-md-offset-2 mb-3">
        <asp:Button ID="btnCheckAttendance" runat="server" CssClass="btn btn-primary btn-block" BackColor="#5558C9" Text="Devamlılığı Kontrol Edin" OnClick="btnCheckAttendance_Click"/>
    </div>

    <div class="row mb-3 mr-lg-5 ml-lg-5">
        <div class="col-md-12">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="Herhangi bir kayıt yok" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Sr.No" HeaderText="Sr.No">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Name" HeaderText="İsim">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <%--<asp:BoundField DataField="Status" HeaderText="Durum">
                                         <ItemStyle HorizontalAlign="Center" />
                                         </asp:BoundField>--%>
                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="label1" Text='<%# Boolean.Parse( Eval("Status").ToString()) ? "Katıldı" : "Katılmadı" %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Date" HeaderText="Tarih" DataFormatString="{0:dd MMMM yyyy}">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <HeaderStyle BackColor="#555BC9" ForeColor="White" />
            </asp:GridView>
        </div>
    </div>
</div>
