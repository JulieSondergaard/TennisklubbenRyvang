<%@ Page Title="CreateNewUser" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateNewUser.aspx.cs" Inherits="TennisklubbenRyvang.CreateNewUser" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Opret ny bruger</h2>
    <h3>Indtast dine oplysninger herunder:</h3>
    
   
    
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="UserNameLabel" runat="server" Text="Brugernavn: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                            </td>
                        </tr>                       
                        <tr>
                            <td>
                                <asp:Label ID="PasswordLabel" runat="server" Text="Password: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox type="password" ID="Password" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="FirstNameLabel" runat="server" Text="Fornavn: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
                            </td>
                        </tr> 
                        <tr>
                            <td>
                                <asp:Label ID="SurNameLabel" runat="server" Text="Efternavn: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="SurName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="AddressLabel" runat="server" Text="Adresse: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Address" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="ZipCodeLabel" runat="server" Text="Postnummer: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ZipCode" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="CityLabel" runat="server" Text="By: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="City" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="TelephoneNumberLabel" runat="server" Text="Telefonnummer: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TelephoneNumber" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="EmailLabel" runat="server" Text="E-mailadresse: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="BirthdayLabel" runat="server" Text="Fødselsdato: "></asp:Label>
                            </td>
                            <td>
                                <asp:Calendar ID="Birthday" runat="server"></asp:Calendar>
                            </td>
                        </tr>
                          <tr>
                            <td>
                                <asp:Label ID="CreditCardLabel" runat="server" Text="Kreditkortnummer: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="CreditCard" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button type="submit" class="submitbtn" runat="server" Text="Tilmeld" OnClick="Submit_Click"></asp:Button>
                            </td>
                        </tr>
                        
                    </table>
              

</asp:Content>
