<%@ Page Title="" Language="C#" MasterPageFile="~/Kaan.Master" AutoEventWireup="true" CodeBehind="dukkankayit1.aspx.cs" Inherits="OgrenciProgramı.dukkankayit1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Dükkan Kayıt</h1>
    <form id="kayit" runat="server">
        <table border="1" witdh="300px">
            <tr>
                <td>Dükkan Adı</td>
                <td> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  </td>
            </tr>
            <tr>
                <td>Adresi</td>
                <td>  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> </td>
            </tr>
             <tr>
                <td>Web Adresi</td>
                <td>  <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> </td>
            </tr>
             <tr>
                <td>Telefon</td>
                <td>  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                </td>

            </tr>
        </table>
        <hr />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="dukkan_duzelt.aspx?id={0}" DataTextField="id" DataTextFormatString="Düzelt" />
                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="dukkan_silme.aspx?id={0}" DataTextField="id" DataTextFormatString="Sil" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>

    </form>
</asp:Content>
