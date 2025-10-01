<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageProfile.aspx.cs" Inherits="WAPP2502.ManageProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Manage Profile</h1>
    <table class="table">
    <tr>
        <td>First Name</td>
        <td><asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox></td>
    </tr>
    <tr>
        <td>Last Name</td>
        <td><asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox></td>
    </tr>
    <tr>
        <td>Email Address</td>
        <td><asp:TextBox ID="txtEmail" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox></td>
    </tr>
    <tr>
        <td>Age</td>
        <td><asp:TextBox ID="txtAge" runat="server" CssClass="form-control"></asp:TextBox></td>
    </tr>
    <tr>
        <td>Gender</td>
        <td>
            <asp:RadioButtonList ID="rdoGender" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>            
    </tr>
    <tr>
        <td>Country</td>
        <td>
            <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-select" >
                <asp:ListItem Value="Afghanistan">Afghanistan</asp:ListItem>
                <asp:ListItem Value="Åland Islands">Åland Islands</asp:ListItem>
                <asp:ListItem Value="Albania">Albania</asp:ListItem>
                <asp:ListItem Value="Algeria">Algeria</asp:ListItem>
                <asp:ListItem Value="American Samoa">American Samoa</asp:ListItem>
                <asp:ListItem Value="Andorra">Andorra</asp:ListItem>
                <asp:ListItem Value="Angola">Angola</asp:ListItem>
                <asp:ListItem Value="Anguilla">Anguilla</asp:ListItem>
                <asp:ListItem Value="Antarctica">Antarctica</asp:ListItem>
                <asp:ListItem Value="Antigua and Barbuda">Antigua and Barbuda</asp:ListItem>
                <asp:ListItem Value="Argentina">Argentina</asp:ListItem>
                <asp:ListItem Value="Armenia">Armenia</asp:ListItem>
                <asp:ListItem Value="Aruba">Aruba</asp:ListItem>
                <asp:ListItem Value="Australia">Australia</asp:ListItem>
                <asp:ListItem Value="Austria">Austria</asp:ListItem>
                <asp:ListItem Value="Azerbaijan">Azerbaijan</asp:ListItem>
                <asp:ListItem Value="Bahamas">Bahamas</asp:ListItem>
                <asp:ListItem Value="Bahrain">Bahrain</asp:ListItem>
                <asp:ListItem Value="Bangladesh">Bangladesh</asp:ListItem>
                <asp:ListItem Value="Barbados">Barbados</asp:ListItem>
                <asp:ListItem Value="Belarus">Belarus</asp:ListItem>
                <asp:ListItem Value="Belgium">Belgium</asp:ListItem>
                <asp:ListItem Value="Belize">Belize</asp:ListItem>
                <asp:ListItem Value="Benin">Benin</asp:ListItem>
                <asp:ListItem Value="Bermuda">Bermuda</asp:ListItem>
                <asp:ListItem Value="Bhutan">Bhutan</asp:ListItem>
                <asp:ListItem Value="Bolivia">Bolivia</asp:ListItem>
                <asp:ListItem Value="Bosnia and Herzegovina">Bosnia and Herzegovina</asp:ListItem>
                <asp:ListItem Value="Botswana">Botswana</asp:ListItem>
                <asp:ListItem Value="Bouvet Island">Bouvet Island</asp:ListItem>
                <asp:ListItem Value="Brazil">Brazil</asp:ListItem>
                <asp:ListItem Value="British Indian Ocean Territory">British Indian Ocean Territory</asp:ListItem>
                <asp:ListItem Value="Brunei Darussalam">Brunei Darussalam</asp:ListItem>
                <asp:ListItem Value="Bulgaria">Bulgaria</asp:ListItem>
                <asp:ListItem Value="Burkina Faso">Burkina Faso</asp:ListItem>
                <asp:ListItem Value="Burundi">Burundi</asp:ListItem>
                <asp:ListItem Value="Cambodia">Cambodia</asp:ListItem>
                <asp:ListItem Value="Cameroon">Cameroon</asp:ListItem>
                <asp:ListItem Value="Canada">Canada</asp:ListItem>
                <asp:ListItem Value="Cape Verde">Cape Verde</asp:ListItem>
                <asp:ListItem Value="Cayman Islands">Cayman Islands</asp:ListItem>
                <asp:ListItem Value="Central African Republic">Central African Republic</asp:ListItem>
                <asp:ListItem Value="Chad">Chad</asp:ListItem>
                <asp:ListItem Value="Chile">Chile</asp:ListItem>
                <asp:ListItem Value="China">China</asp:ListItem>
                <asp:ListItem Value="Christmas Island">Christmas Island</asp:ListItem>
                <asp:ListItem Value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</asp:ListItem>
                <asp:ListItem Value="Colombia">Colombia</asp:ListItem>
                <asp:ListItem Value="Comoros">Comoros</asp:ListItem>
                <asp:ListItem Value="Congo">Congo</asp:ListItem>
                <asp:ListItem Value="Congo, The Democratic Republic of The">Congo, The Democratic Republic of The</asp:ListItem>
                <asp:ListItem Value="Cook Islands">Cook Islands</asp:ListItem>
                <asp:ListItem Value="Costa Rica">Costa Rica</asp:ListItem>
                <asp:ListItem Value="Cote D'ivoire">Cote D'ivoire</asp:ListItem>
                <asp:ListItem Value="Croatia">Croatia</asp:ListItem>
                <asp:ListItem Value="Cuba">Cuba</asp:ListItem>
                <asp:ListItem Value="Cyprus">Cyprus</asp:ListItem>
                <asp:ListItem Value="Czech Republic">Czech Republic</asp:ListItem>
                <asp:ListItem Value="Denmark">Denmark</asp:ListItem>
                <asp:ListItem Value="Djibouti">Djibouti</asp:ListItem>
                <asp:ListItem Value="Dominica">Dominica</asp:ListItem>
                <asp:ListItem Value="Dominican Republic">Dominican Republic</asp:ListItem>
                <asp:ListItem Value="Ecuador">Ecuador</asp:ListItem>
                <asp:ListItem Value="Egypt">Egypt</asp:ListItem>
                <asp:ListItem Value="El Salvador">El Salvador</asp:ListItem>
                <asp:ListItem Value="Equatorial Guinea">Equatorial Guinea</asp:ListItem>
                <asp:ListItem Value="Eritrea">Eritrea</asp:ListItem>
                <asp:ListItem Value="Estonia">Estonia</asp:ListItem>
                <asp:ListItem Value="Ethiopia">Ethiopia</asp:ListItem>
                <asp:ListItem Value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</asp:ListItem>
                <asp:ListItem Value="Faroe Islands">Faroe Islands</asp:ListItem>
                <asp:ListItem Value="Fiji">Fiji</asp:ListItem>
                <asp:ListItem Value="Finland">Finland</asp:ListItem>
                <asp:ListItem Value="France">France</asp:ListItem>
                <asp:ListItem Value="French Guiana">French Guiana</asp:ListItem>
                <asp:ListItem Value="French Polynesia">French Polynesia</asp:ListItem>
                <asp:ListItem Value="French Southern Territories">French Southern Territories</asp:ListItem>
                <asp:ListItem Value="Gabon">Gabon</asp:ListItem>
                <asp:ListItem Value="Gambia">Gambia</asp:ListItem>
                <asp:ListItem Value="Georgia">Georgia</asp:ListItem>
                <asp:ListItem Value="Germany">Germany</asp:ListItem>
                <asp:ListItem Value="Ghana">Ghana</asp:ListItem>
                <asp:ListItem Value="Gibraltar">Gibraltar</asp:ListItem>
                <asp:ListItem Value="Greece">Greece</asp:ListItem>
                <asp:ListItem Value="Greenland">Greenland</asp:ListItem>
                <asp:ListItem Value="Grenada">Grenada</asp:ListItem>
                <asp:ListItem Value="Guadeloupe">Guadeloupe</asp:ListItem>
                <asp:ListItem Value="Guam">Guam</asp:ListItem>
                <asp:ListItem Value="Guatemala">Guatemala</asp:ListItem>
                <asp:ListItem Value="Guernsey">Guernsey</asp:ListItem>
                <asp:ListItem Value="Guinea">Guinea</asp:ListItem>
                <asp:ListItem Value="Guinea-bissau">Guinea-bissau</asp:ListItem>
                <asp:ListItem Value="Guyana">Guyana</asp:ListItem>
                <asp:ListItem Value="Haiti">Haiti</asp:ListItem>
                <asp:ListItem Value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</asp:ListItem>
                <asp:ListItem Value="Holy See (Vatican City State)">Holy See (Vatican City State)</asp:ListItem>
                <asp:ListItem Value="Honduras">Honduras</asp:ListItem>
                <asp:ListItem Value="Hong Kong">Hong Kong</asp:ListItem>
                <asp:ListItem Value="Hungary">Hungary</asp:ListItem>
                <asp:ListItem Value="Iceland">Iceland</asp:ListItem>
                <asp:ListItem Value="India">India</asp:ListItem>
                <asp:ListItem Value="Indonesia">Indonesia</asp:ListItem>
                <asp:ListItem Value="Iran, Islamic Republic of">Iran, Islamic Republic of</asp:ListItem>
                <asp:ListItem Value="Iraq">Iraq</asp:ListItem>
                <asp:ListItem Value="Ireland">Ireland</asp:ListItem>
                <asp:ListItem Value="Isle of Man">Isle of Man</asp:ListItem>
                <asp:ListItem Value="Israel">Israel</asp:ListItem>
                <asp:ListItem Value="Italy">Italy</asp:ListItem>
                <asp:ListItem Value="Jamaica">Jamaica</asp:ListItem>
                <asp:ListItem Value="Japan">Japan</asp:ListItem>
                <asp:ListItem Value="Jersey">Jersey</asp:ListItem>
                <asp:ListItem Value="Jordan">Jordan</asp:ListItem>
                <asp:ListItem Value="Kazakhstan">Kazakhstan</asp:ListItem>
                <asp:ListItem Value="Kenya">Kenya</asp:ListItem>
                <asp:ListItem Value="Kiribati">Kiribati</asp:ListItem>
                <asp:ListItem Value="Korea, Democratic People's Republic of">Korea, Democratic People's Republic of</asp:ListItem>
                <asp:ListItem Value="Korea, Republic of">Korea, Republic of</asp:ListItem>
                <asp:ListItem Value="Kuwait">Kuwait</asp:ListItem>
                <asp:ListItem Value="Kyrgyzstan">Kyrgyzstan</asp:ListItem>
                <asp:ListItem Value="Lao People's Democratic Republic">Lao People's Democratic Republic</asp:ListItem>
                <asp:ListItem Value="Latvia">Latvia</asp:ListItem>
                <asp:ListItem Value="Lebanon">Lebanon</asp:ListItem>
                <asp:ListItem Value="Lesotho">Lesotho</asp:ListItem>
                <asp:ListItem Value="Liberia">Liberia</asp:ListItem>
                <asp:ListItem Value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</asp:ListItem>
                <asp:ListItem Value="Liechtenstein">Liechtenstein</asp:ListItem>
                <asp:ListItem Value="Lithuania">Lithuania</asp:ListItem>
                <asp:ListItem Value="Luxembourg">Luxembourg</asp:ListItem>
                <asp:ListItem Value="Macao">Macao</asp:ListItem>
                <asp:ListItem Value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of</asp:ListItem>
                <asp:ListItem Value="Madagascar">Madagascar</asp:ListItem>
                <asp:ListItem Value="Malawi">Malawi</asp:ListItem>
                <asp:ListItem Value="Malaysia">Malaysia</asp:ListItem>
                <asp:ListItem Value="Maldives">Maldives</asp:ListItem>
                <asp:ListItem Value="Mali">Mali</asp:ListItem>
                <asp:ListItem Value="Malta">Malta</asp:ListItem>
                <asp:ListItem Value="Marshall Islands">Marshall Islands</asp:ListItem>
                <asp:ListItem Value="Martinique">Martinique</asp:ListItem>
                <asp:ListItem Value="Mauritania">Mauritania</asp:ListItem>
                <asp:ListItem Value="Mauritius">Mauritius</asp:ListItem>
                <asp:ListItem Value="Mayotte">Mayotte</asp:ListItem>
                <asp:ListItem Value="Mexico">Mexico</asp:ListItem>
                <asp:ListItem Value="Micronesia, Federated States of">Micronesia, Federated States of</asp:ListItem>
                <asp:ListItem Value="Moldova, Republic of">Moldova, Republic of</asp:ListItem>
                <asp:ListItem Value="Monaco">Monaco</asp:ListItem>
                <asp:ListItem Value="Mongolia">Mongolia</asp:ListItem>
                <asp:ListItem Value="Montenegro">Montenegro</asp:ListItem>
                <asp:ListItem Value="Montserrat">Montserrat</asp:ListItem>
                <asp:ListItem Value="Morocco">Morocco</asp:ListItem>
                <asp:ListItem Value="Mozambique">Mozambique</asp:ListItem>
                <asp:ListItem Value="Myanmar">Myanmar</asp:ListItem>
                <asp:ListItem Value="Namibia">Namibia</asp:ListItem>
                <asp:ListItem Value="Nauru">Nauru</asp:ListItem>
                <asp:ListItem Value="Nepal">Nepal</asp:ListItem>
                <asp:ListItem Value="Netherlands">Netherlands</asp:ListItem>
                <asp:ListItem Value="Netherlands Antilles">Netherlands Antilles</asp:ListItem>
                <asp:ListItem Value="New Caledonia">New Caledonia</asp:ListItem>
                <asp:ListItem Value="New Zealand">New Zealand</asp:ListItem>
                <asp:ListItem Value="Nicaragua">Nicaragua</asp:ListItem>
                <asp:ListItem Value="Niger">Niger</asp:ListItem>
                <asp:ListItem Value="Nigeria">Nigeria</asp:ListItem>
                <asp:ListItem Value="Niue">Niue</asp:ListItem>
                <asp:ListItem Value="Norfolk Island">Norfolk Island</asp:ListItem>
                <asp:ListItem Value="Northern Mariana Islands">Northern Mariana Islands</asp:ListItem>
                <asp:ListItem Value="Norway">Norway</asp:ListItem>
                <asp:ListItem Value="Oman">Oman</asp:ListItem>
                <asp:ListItem Value="Pakistan">Pakistan</asp:ListItem>
                <asp:ListItem Value="Palau">Palau</asp:ListItem>
                <asp:ListItem Value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</asp:ListItem>
                <asp:ListItem Value="Panama">Panama</asp:ListItem>
                <asp:ListItem Value="Papua New Guinea">Papua New Guinea</asp:ListItem>
                <asp:ListItem Value="Paraguay">Paraguay</asp:ListItem>
                <asp:ListItem Value="Peru">Peru</asp:ListItem>
                <asp:ListItem Value="Philippines">Philippines</asp:ListItem>
                <asp:ListItem Value="Pitcairn">Pitcairn</asp:ListItem>
                <asp:ListItem Value="Poland">Poland</asp:ListItem>
                <asp:ListItem Value="Portugal">Portugal</asp:ListItem>
                <asp:ListItem Value="Puerto Rico">Puerto Rico</asp:ListItem>
                <asp:ListItem Value="Qatar">Qatar</asp:ListItem>
                <asp:ListItem Value="Reunion">Reunion</asp:ListItem>
                <asp:ListItem Value="Romania">Romania</asp:ListItem>
                <asp:ListItem Value="Russian Federation">Russian Federation</asp:ListItem>
                <asp:ListItem Value="Rwanda">Rwanda</asp:ListItem>
                <asp:ListItem Value="Saint Helena">Saint Helena</asp:ListItem>
                <asp:ListItem Value="Saint Kitts and Nevis">Saint Kitts and Nevis</asp:ListItem>
                <asp:ListItem Value="Saint Lucia">Saint Lucia</asp:ListItem>
                <asp:ListItem Value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</asp:ListItem>
                <asp:ListItem Value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</asp:ListItem>
                <asp:ListItem Value="Samoa">Samoa</asp:ListItem>
                <asp:ListItem Value="San Marino">San Marino</asp:ListItem>
                <asp:ListItem Value="Sao Tome and Principe">Sao Tome and Principe</asp:ListItem>
                <asp:ListItem Value="Saudi Arabia">Saudi Arabia</asp:ListItem>
                <asp:ListItem Value="Senegal">Senegal</asp:ListItem>
                <asp:ListItem Value="Serbia">Serbia</asp:ListItem>
                <asp:ListItem Value="Seychelles">Seychelles</asp:ListItem>
                <asp:ListItem Value="Sierra Leone">Sierra Leone</asp:ListItem>
                <asp:ListItem Value="Singapore">Singapore</asp:ListItem>
                <asp:ListItem Value="Slovakia">Slovakia</asp:ListItem>
                <asp:ListItem Value="Slovenia">Slovenia</asp:ListItem>
                <asp:ListItem Value="Solomon Islands">Solomon Islands</asp:ListItem>
                <asp:ListItem Value="Somalia">Somalia</asp:ListItem>
                <asp:ListItem Value="South Africa">South Africa</asp:ListItem>
                <asp:ListItem Value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich Islands</asp:ListItem>
                <asp:ListItem Value="Spain">Spain</asp:ListItem>
                <asp:ListItem Value="Sri Lanka">Sri Lanka</asp:ListItem>
                <asp:ListItem Value="Sudan">Sudan</asp:ListItem>
                <asp:ListItem Value="Suriname">Suriname</asp:ListItem>
                <asp:ListItem Value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</asp:ListItem>
                <asp:ListItem Value="Swaziland">Swaziland</asp:ListItem>
                <asp:ListItem Value="Sweden">Sweden</asp:ListItem>
                <asp:ListItem Value="Switzerland">Switzerland</asp:ListItem>
                <asp:ListItem Value="Syrian Arab Republic">Syrian Arab Republic</asp:ListItem>
                <asp:ListItem Value="Taiwan">Taiwan</asp:ListItem>
                <asp:ListItem Value="Tajikistan">Tajikistan</asp:ListItem>
                <asp:ListItem Value="Tanzania, United Republic of">Tanzania, United Republic of</asp:ListItem>
                <asp:ListItem Value="Thailand">Thailand</asp:ListItem>
                <asp:ListItem Value="Timor-leste">Timor-leste</asp:ListItem>
                <asp:ListItem Value="Togo">Togo</asp:ListItem>
                <asp:ListItem Value="Tokelau">Tokelau</asp:ListItem>
                <asp:ListItem Value="Tonga">Tonga</asp:ListItem>
                <asp:ListItem Value="Trinidad and Tobago">Trinidad and Tobago</asp:ListItem>
                <asp:ListItem Value="Tunisia">Tunisia</asp:ListItem>
                <asp:ListItem Value="Turkey">Turkey</asp:ListItem>
                <asp:ListItem Value="Turkmenistan">Turkmenistan</asp:ListItem>
                <asp:ListItem Value="Turks and Caicos Islands">Turks and Caicos Islands</asp:ListItem>
                <asp:ListItem Value="Tuvalu">Tuvalu</asp:ListItem>
                <asp:ListItem Value="Uganda">Uganda</asp:ListItem>
                <asp:ListItem Value="Ukraine">Ukraine</asp:ListItem>
                <asp:ListItem Value="United Arab Emirates">United Arab Emirates</asp:ListItem>
                <asp:ListItem Value="United Kingdom">United Kingdom</asp:ListItem>
                <asp:ListItem Value="United States">United States</asp:ListItem>
                <asp:ListItem Value="United States Minor Outlying Islands">United States Minor Outlying Islands</asp:ListItem>
                <asp:ListItem Value="Uruguay">Uruguay</asp:ListItem>
                <asp:ListItem Value="Uzbekistan">Uzbekistan</asp:ListItem>
                <asp:ListItem Value="Vanuatu">Vanuatu</asp:ListItem>
                <asp:ListItem Value="Venezuela">Venezuela</asp:ListItem>
                <asp:ListItem Value="Viet Nam">Viet Nam</asp:ListItem>
                <asp:ListItem Value="Virgin Islands, British">Virgin Islands, British</asp:ListItem>
                <asp:ListItem Value="Virgin Islands, U.S.">Virgin Islands, U.S.</asp:ListItem>
                <asp:ListItem Value="Wallis and Futuna">Wallis and Futuna</asp:ListItem>
                <asp:ListItem Value="Western Sahara">Western Sahara</asp:ListItem>
                <asp:ListItem Value="Yemen">Yemen</asp:ListItem>
                <asp:ListItem Value="Zambia">Zambia</asp:ListItem>
                <asp:ListItem Value="Zimbabwe">Zimbabwe</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblDateTime" runat="server" Visible="False"></asp:Label>
            <br />
            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="btnUpdate_Click"/>
            <br />
            <asp:Label ID="lblMsg" runat="server" ForeColor="Lime"></asp:Label>
        </td>
    </tr>
</table>
<p>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:wappConnectionString1 %>" DeleteCommand="DELETE FROM [tblCustomers] WHERE [CID] = @CID" InsertCommand="INSERT INTO [tblCustomers] ([firstName], [lastName], [email], [password], [age], [gender], [country], [picture], [dtRegistered]) VALUES (@firstName, @lastName, @email, @password, @age, @gender, @country, @picture, @dtRegistered)" SelectCommand="SELECT * FROM [tblCustomers]" UpdateCommand="UPDATE tblCustomers SET firstName = @firstName, lastName = @lastName, age = @age, gender = @gender, country = @country WHERE (CID = @CID)">
        <DeleteParameters>
            <asp:Parameter Name="CID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtFirstName" Name="firstName" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtLastName" Name="lastName" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtEmail" Name="email" PropertyName="Text" Type="String" />
            <asp:ControlParameter Name="password" Type="String" ControlID="txtPassword" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtAge" Name="age" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="rdoGender" Name="gender" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="ddlCountry" Name="country" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="lblPicture" Name="picture" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="lblDateTime" Name="dtRegistered" PropertyName="Text" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="txtFirstName" Name="firstName" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtLastName" Name="lastName" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtAge" Name="age" PropertyName="Text" Type="Int32" />
            <asp:SessionParameter Name="CID" SessionField="CID" Type="Int32" />
            <asp:ControlParameter ControlID="rdoGender" Name="gender" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="ddlCountry" Name="country" PropertyName="SelectedValue" />
        </UpdateParameters>
    </asp:SqlDataSource>

</p>
</asp:Content>
