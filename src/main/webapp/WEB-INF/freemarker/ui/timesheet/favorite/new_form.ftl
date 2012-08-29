<!DOCTYPE html>
<html>
<head>
    <title>Test UI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../static/css/base.css" />
    <link rel="stylesheet" href="../../static/css/jquery.mobile-1.2.0-alpha.1.min.css" />
    <link rel="stylesheet" href="../../static/css/mobiscroll-2.0.1.custom.min.css" />

    <script type="text/javascript" src="../../static/js/lib/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../../static/js/mobiscroll-2.0.1.custom.min.js"></script>

    <script>
        $(function(){
            // create a datepicker with default settings
            $("#date").scroller({ preset: 'date' });


        });

        var options = {
            "USA" : {
                'State One': 'http://www.apple.com/ihphone3g',
                'State Two': 'http://www.apple.com/iphone4'
            }
        }

        function changelist(v) {

            var $t = $("#state");

            //clear old options
            $t.html('');
            //fill up new options
            if(options[v]){
                for(var i in options[v]){
                    if(options[v].hasOwnProperty(i)){
                        $t.append('<option value="' + options[v][i] + '">' + i + '<\/option>');
                    }
                }
            }
            $t.selectmenu('refresh');
        }



    </script>
    <script type="text/javascript" src="../../static/js/lib/jquery.mobile-1.2.0-alpha.1.min.js"></script>
    <script type="text/javascript" src="../../static/js/lib/jquery.form.js" ></script>
    <script type="text/javascript" src="../../static/js/lib/jquery.validate.min.js"></script>
    <script type="text/javascript" src="../../static/js/favorite_timesheet.js"></script>
    <script type="text/javascript" src="../../static/js/ui/new_favorite.js"></script>


</head>
<body>

<div data-role="page" data-theme="a">
    <div data-role="header">
        <h1>My Favourite Time Sheet</h1>
    </div>

    <form id="new_favorite_form" modelAttribute="favoriteTimesheetForm" action="" method="post" class="ui-body ui-body-a ui-corner-all">
        <label for="name">Name</label>
        <input type="text" name="name" id="name" value="" />

        <label for="name">Date</label>
        <input id="date" name="date" />








        <select id="country" name="country" onchange="changelist(this.value)">
            <option value="AUS">AUS - Australia</option>
            <option value="USA">USA - United States</option>
        </select>

        <select id="state" name="state">
            <option value="" selected="selected"></option>
        </select>

        <!--
        <label for="country" class="select">Country</label>
        <span class="select-box">
        <select class="country" id="country" name="country"><option value=""></option>
        <option value="ABW">ABW - Aruba</option>
        <option value="AFG">AFG - Afghanistn</option>
        <option value="AGO">AGO - Angola</option>
        <option value="AIA">AIA - Anguilla</option>
        <option value="ALB">ALB - Albania</option>
        <option value="AND">AND - Andorra</option>
        <option value="ANT">ANT - Nth Antill</option>
        <option value="ARE">ARE - UEA</option>
        <option value="ARG">ARG - Argentina</option>
        <option value="ARM">ARM - Armenia</option>
        <option value="ASM">ASM - Am Samoa</option>
        <option value="ATA">ATA - Antarctica</option>
        <option value="ATF">ATF - Fr S Terr</option>
        <option value="ATG">ATG - Antigua</option>
        <option value="AUS">AUS - Australia</option>
        <option value="AUT">AUT - Austria</option>
        <option value="AZE">AZE - Azerbaijan</option>
        <option value="BDI">BDI - Burundi</option>
        <option value="BEL">BEL - Belgium</option>
        <option value="BEN">BEN - Benin</option>
        <option value="BFA">BFA - Burkina F</option>
        <option value="BGD">BGD - Bangladesh</option>
        <option value="BGR">BGR - Bulgaria</option>
        <option value="BHR">BHR - Bahrain</option>
        <option value="BHS">BHS - Bahamas</option>
        <option value="BIH">BIH - Bosnia Her</option>
        <option value="BLR">BLR - Belarus</option>
        <option value="BLZ">BLZ - Belize</option>
        <option value="BMU">BMU - Bermuda</option>
        <option value="BOL">BOL - Bolivia</option>
        <option value="BRA">BRA - Brazil</option>
        <option value="BRB">BRB - Barbados</option>
        <option value="BRN">BRN - Brunei</option>
        <option value="BTN">BTN - Bhutan</option>
        <option value="BVT">BVT - Bouvet Is.</option>
        <option value="BWA">BWA - Botswana</option>
        <option value="CAF">CAF - Central Af</option>
        <option value="CAN">CAN - Canada</option>
        <option value="CCK">CCK - Cocos Is.</option>
        <option value="CHE">CHE - Switzerlan</option>
        <option value="CHL">CHL - Chile</option>
        <option value="CHN">CHN - China</option>
        <option value="CIV">CIV - Cote D'Ivo</option>
        <option value="CMR">CMR - Cameroon</option>
        <option value="COD">COD - Congo, The</option>
        <option value="COG">COG - Congo</option>
        <option value="COK">COK - Cook Is.</option>
        <option value="COL">COL - Colombia</option>
        <option value="COM">COM - Comoros</option>
        <option value="CPV">CPV - Cape Verde</option>
        <option value="CRI">CRI - Costa Rica</option>
        <option value="CUB">CUB - Cuba</option>
        <option value="CXR">CXR - Christmas</option>
        <option value="CYM">CYM - Cayman Is.</option>
        <option value="CYP">CYP - Cyprus</option>
        <option value="CZE">CZE - Czech Rep</option>
        <option value="DEU">DEU - Germany</option>
        <option value="DJI">DJI - Djibouti</option>
        <option value="DMA">DMA - Dominica</option>
        <option value="DNK">DNK - Denmark</option>
        <option value="DOM">DOM - Dominican</option>
        <option value="DZA">DZA - Algeria</option>
        <option value="ECU">ECU - Ecuador</option>
        <option value="EGY">EGY - Egypt</option>
        <option value="ERI">ERI - Eritrea</option>
        <option value="ESH">ESH - W Sahara</option>
        <option value="ESP">ESP - Spain</option>
        <option value="EST">EST - Estonia</option>
        <option value="ETH">ETH - Ethiopia</option>
        <option value="FIN">FIN - Finland</option>
        <option value="FJI">FJI - Fiji</option>
        <option value="FLK">FLK - Falkland I</option>
        <option value="FRA">FRA - France</option>
        <option value="FRO">FRO - Faroe Is.</option>
        <option value="FSM">FSM - Micronesia</option>
        <option value="GAB">GAB - Gabon</option>
        <option value="GBR">GBR - UK</option>
        <option value="GEO">GEO - Georgia</option>
        <option value="GHA">GHA - Ghana</option>
        <option value="GIB">GIB - Gibraltar</option>
        <option value="GIN">GIN - Guinea</option>
        <option value="GLP">GLP - Guadeloupe</option>
        <option value="GMB">GMB - Gambia</option>
        <option value="GNB">GNB - Guinea-Bis</option>
        <option value="GNQ">GNQ - Guinea</option>
        <option value="GRC">GRC - Greece</option>
        <option value="GRD">GRD - Grenada</option>
        <option value="GRL">GRL - Greenland</option>
        <option value="GTM">GTM - Guatemala</option>
        <option value="GUF">GUF - Fr Guiana</option>
        <option value="GUM">GUM - Guam</option>
        <option value="GUY">GUY - Guyana</option>
        <option value="HKG">HKG - Hong Kong</option>
        <option value="HMD">HMD - Heard Is</option>
        <option value="HND">HND - Honduras</option>
        <option value="HRV">HRV - Croatia</option>
        <option value="HTI">HTI - Haiti</option>
        <option value="HUN">HUN - Hungary</option>
        <option value="IDN">IDN - Indonesia</option>
        <option value="IND">IND - India</option>
        <option value="IOT">IOT - BritishIOT</option>
        <option value="IRL">IRL - Ireland</option>
        <option value="IRN">IRN - Iran</option>
        <option value="IRQ">IRQ - Iraq</option>
        <option value="ISL">ISL - Iceland</option>
        <option value="ISR">ISR - Israel</option>
        <option value="ITA">ITA - Italy</option>
        <option value="JAM">JAM - Jamaica</option>
        <option value="JOR">JOR - Jordan</option>
        <option value="JPN">JPN - Japan</option>
        <option value="KAZ">KAZ - Kazakstan</option>
        <option value="KEN">KEN - Kenya</option>
        <option value="KGZ">KGZ - Kyrgyzstan</option>
        <option value="KHM">KHM - Cambodia</option>
        <option value="KIR">KIR - Kiribati</option>
        <option value="KNA">KNA - St Kitts</option>
        <option value="KOR">KOR - Sth Korea</option>
        <option value="KWT">KWT - Kuwait</option>
        <option value="LAO">LAO - Lao</option>
        <option value="LBN">LBN - Lebanon</option>
        <option value="LBR">LBR - Liberia</option>
        <option value="LBY">LBY - Libyan Ara</option>
        <option value="LCA">LCA - St Lucia</option>
        <option value="LIE">LIE - Liechtenst</option>
        <option value="LKA">LKA - Sri Lanka</option>
        <option value="LSO">LSO - Lesotho</option>
        <option value="LTU">LTU - Lithuania</option>
        <option value="LUX">LUX - Luxembourg</option>
        <option value="LVA">LVA - Latvia</option>
        <option value="MAC">MAC - Macau</option>
        <option value="MAR">MAR - Morocco</option>
        <option value="MCO">MCO - Monaco</option>
        <option value="MDA">MDA - Moldova</option>
        <option value="MDG">MDG - Madagascar</option>
        <option value="MDV">MDV - Maldives</option>
        <option value="MEX">MEX - Mexico</option>
        <option value="MHL">MHL - Marshall I</option>
        <option value="MKD">MKD - Macedonia</option>
        <option value="MLI">MLI - Mali</option>
        <option value="MLT">MLT - Malta</option>
        <option value="MMR">MMR - Myanmar</option>
        <option value="MNG">MNG - Mongolia</option>
        <option value="MNP">MNP - N Marina I</option>
        <option value="MOZ">MOZ - Mozambique</option>
        <option value="MRT">MRT - Mauritania</option>
        <option value="MSR">MSR - Montserrat</option>
        <option value="MTQ">MTQ - Martinique</option>
        <option value="MUS">MUS - Mauritius</option>
        <option value="MWI">MWI - Malawi</option>
        <option value="MYS">MYS - Malaysia</option>
        <option value="MYT">MYT - Mayotte</option>
        <option value="NAM">NAM - Namibia</option>
        <option value="NCL">NCL - New Caledo</option>
        <option value="NER">NER - Niger</option>
        <option value="NFK">NFK - Norfolk Is</option>
        <option value="NGA">NGA - Nigeria</option>
        <option value="NIC">NIC - Nicaragua</option>
        <option value="NIU">NIU - Niue</option>
        <option value="NLD">NLD - Netherland</option>
        <option value="NOR">NOR - Norway</option>
        <option value="NPL">NPL - Nepal</option>
        <option value="NRU">NRU - Nauru</option>
        <option value="NZL">NZL - NZ</option>
        <option value="OMN">OMN - Oman</option>
        <option value="PAK">PAK - Pakistan</option>
        <option value="PAN">PAN - Panama</option>
        <option value="PCN">PCN - Pitcairn</option>
        <option value="PER">PER - Peru</option>
        <option value="PHL">PHL - Philippine</option>
        <option value="PLW">PLW - Palau</option>
        <option value="PNG">PNG - PNG</option>
        <option value="POL">POL - Poland</option>
        <option value="PRI">PRI - Puerto Rco</option>
        <option value="PRK">PRK - Nth Korea</option>
        <option value="PRT">PRT - Portugal</option>
        <option value="PRY">PRY - Paraguay</option>
        <option value="PYF">PYF - Fr Polynes</option>
        <option value="QAT">QAT - Qatar</option>
        <option value="REU">REU - Reunion</option>
        <option value="ROM">ROM - Romania</option>
        <option value="RUS">RUS - Russian Fd</option>
        <option value="RWA">RWA - Rwanda</option>
        <option value="SAU">SAU - Saudi Arab</option>
        <option value="SDN">SDN - Sudan</option>
        <option value="SEN">SEN - Senegal</option>
        <option value="SGP">SGP - Singapore</option>
        <option value="SGS">SGS - S Georgia</option>
        <option value="SHN">SHN - St Helena</option>
        <option value="SJM">SJM - Svalbard</option>
        <option value="SLB">SLB - Solomon Is</option>
        <option value="SLE">SLE - Sierra Leo</option>
        <option value="SLV">SLV - ElSalvador</option>
        <option value="SMR">SMR - San Marino</option>
        <option value="SOM">SOM - Somalia</option>
        <option value="SPM">SPM - St Pierre</option>
        <option value="STP">STP - Sao Tome</option>
        <option value="SUR">SUR - Suriname</option>
        <option value="SVK">SVK - Slovakia</option>
        <option value="SVN">SVN - Slovenia</option>
        <option value="SWE">SWE - Sweden</option>
        <option value="SWZ">SWZ - Swaziland</option>
        <option value="SYC">SYC - Seychelles</option>
        <option value="SYR">SYR - Syrian Ara</option>
        <option value="TCA">TCA - Turks Is</option>
        <option value="TCD">TCD - Chad</option>
        <option value="TGO">TGO - Togo</option>
        <option value="THA">THA - Thailand</option>
        <option value="TJK">TJK - Tajikistan</option>
        <option value="TKL">TKL - Tokelau</option>
        <option value="TKM">TKM - Turkmenstn</option>
        <option value="TMP">TMP - East Timor</option>
        <option value="TON">TON - Tonga</option>
        <option value="TTO">TTO - Trinidad</option>
        <option value="TUN">TUN - Tunisia</option>
        <option value="TUR">TUR - Turkey</option>
        <option value="TUV">TUV - Tuvalu</option>
        <option value="TWN">TWN - Taiwan</option>
        <option value="TZA">TZA - Tanzania,</option>
        <option value="UGA">UGA - Uganda</option>
        <option value="UKR">UKR - Ukraine</option>
        <option value="UMI">UMI - US Islands</option>
        <option value="URY">URY - Uruguay</option>
        <option value="USA">USA - USA</option>
        <option value="UZB">UZB - Uzbekistan</option>
        <option value="VAT">VAT - Vatican</option>
        <option value="VCT">VCT - St Vincent</option>
        <option value="VEN">VEN - Venezuela</option>
        <option value="VGB">VGB - BrVirginIs</option>
        <option value="VIR">VIR - VirginIsUS</option>
        <option value="VNM">VNM - Viet Nam</option>
        <option value="VUT">VUT - Vanuatu</option>
        <option value="WLF">WLF - Wallis and</option>
        <option value="WSM">WSM - Samoa</option>
        <option value="YEM">YEM - Yemen</option>
        <option value="YUG">YUG - Yugoslavia</option>
        <option value="ZAF">ZAF - Sth Africa</option>
        <option value="ZAR">ZAR - ZAIRE</option>
        <option value="ZMB">ZMB - Zambia</option>
        <option value="ZWE">ZWE - Zimbabwe</option></select>

        <label for="state" class="select">State</label>
        <select id="state" name="state" style="width: 55px;">
            <option class="sub_USA" value=""></option>
            <option class="sub_USA" value="AK">AK - Alaska</option>
            <option class="sub_USA" value="AL">AL - Alabama</option>
            <option class="sub_USA" value="AR">AR - Arkansas</option>
            <option class="sub_USA" value="AS">AS - American Samoa</option>
            <option class="sub_USA" value="AZ">AZ - Arizona</option>
            <option class="sub_USA" value="CA">CA - California</option>
            <option class="sub_USA" value="CO">CO - Colorado</option>
            <option class="sub_USA" value="CT">CT - Connecticut</option>
            <option class="sub_USA" value="DC">DC - District of Columbia</option>
            <option class="sub_USA" value="DE">DE - Delaware</option>
            <option class="sub_USA" value="FL">FL - Florida</option>
            <option class="sub_USA" value="GA">GA - Georgia</option>
            <option class="sub_USA" value="GU">GU - Guam</option>
            <option class="sub_USA" value="HI">HI - Hawaii</option>
            <option class="sub_USA" value="IA">IA - Iowa</option>
            <option class="sub_USA" value="ID">ID - Idaho</option>
            <option class="sub_USA" value="IL">IL - Illinois</option>
            <option class="sub_USA" value="IN">IN - Indiana</option>
            <option class="sub_USA" value="KS">KS - Kansas</option>
            <option class="sub_USA" value="KY">KY - Kentucky</option>
            <option class="sub_USA" value="LA">LA - Louisiana</option>
            <option class="sub_USA" value="MA">MA - Massachusetts</option>
            <option class="sub_USA" value="MD">MD - Maryland</option>
            <option class="sub_USA" value="ME">ME - Maine</option>
            <option class="sub_USA" value="MI">MI - Michigan</option>
            <option class="sub_USA" value="MN">MN - Minnesota</option>
            <option class="sub_USA" value="MO">MO - Missouri</option>
            <option class="sub_USA" value="MS">MS - Mississippi</option>
            <option class="sub_USA" value="MT">MT - Montana</option>
            <option class="sub_USA" value="NC">NC - North Carolina</option>
            <option class="sub_USA" value="ND">ND - North Dakota</option>
            <option class="sub_USA" value="NE">NE - Nebraska</option>
            <option class="sub_USA" value="NH">NH - New Hampshire</option>
            <option class="sub_USA" value="NJ">NJ - New Jersey</option>
            <option class="sub_USA" value="NM">NM - New Mexico</option>
            <option class="sub_USA" value="NV">NV - Nevada</option>
            <option class="sub_USA" value="NY">NY - New York</option>
            <option class="sub_USA" value="OH">OH - Ohio</option>
            <option class="sub_USA" value="OK">OK - Oklahoma</option>
            <option class="sub_USA" value="OR">OR - Oregon</option>
            <option class="sub_USA" value="PA">PA - Pennsylvania</option>
            <option class="sub_USA" value="PR">PR - Puerto Rico</option>
            <option class="sub_USA" value="RI">RI - Rhode Island</option>
            <option class="sub_USA" value="SC">SC - South Carolina</option>
            <option class="sub_USA" value="SD">SD - South Dakota</option>
            <option class="sub_USA" value="TN">TN - Tennessee</option>
            <option class="sub_USA" value="TX">TX - Texas</option>
            <option class="sub_USA" value="UT">UT - Utah</option>
            <option class="sub_USA" value="VA">VA - Virginia</option>
            <option class="sub_USA" value="VI">VI - Virgin Islands</option>
            <option class="sub_USA" value="VT">VT - Vermont</option>
            <option class="sub_USA" value="WA">WA - Washington</option>
            <option class="sub_USA" value="WI">WI - Wisconsin</option>
            <option class="sub_USA" value="WV">WV - West Virginia</option>
            <option class="sub_USA" value="WY">WY - Wyoming</option>
        </select>
-->


        <label for="activity">Activity</label>
        <input type="text" name="activity" id="activity" value=""  />

        <label for="billable">Billable?</label>
        <select name="billable" id="billable" data-role="slider">
            <option value="false">No</option>
            <option value="true">Yes</option>
        </select>

        <label for="comments">Comments</label>
        <input type="text" name="comments" id="comments" value=""  />

        <div class="ui-grid-d">
            <div class="ui-block-a">
                Mon
                <input type="text" name="monday" id="monday" value=""  /></div>
            <div class="ui-block-b">
                Tues
                <input type="text" name="tuesday" id="tuesday" value=""  />
            </div>
            <div class="ui-block-c">
                Weds
                <input type="text" name="wednesday" id="wednesday" value=""  />
            </div>
            <div class="ui-block-d">
                Thur
                <input type="text" name="thursday" id="thursday" value=""  />
            </div>
            <div class="ui-block-e">
                Fri
                <input type="text" name="friday" id="friday" value=""  />
            </div>
        </div>

        <div class="ui-grid-d">
            <div class="ui-block-a">
                Sat
                <input type="text" name="saturday" id="saturday" value=""  />
            </div>
            <div class="ui-block-b">
                Sun
                <input type="text" name="sunday" id="sunday" value=""  />
            </div>
        </div>





        <button type="submit" data-theme="a" data-ajax="true" name="submit" id="submit" value="submit-value">Submit</button>
    </form>
</div>

</body>
</html>

