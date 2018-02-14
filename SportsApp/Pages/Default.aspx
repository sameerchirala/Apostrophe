<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    
    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Add your CSS styles to the following file -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />
    <link href="../CSS/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../CSS/bootstrap.min.css" rel="stylesheet" />
    <link href="../CSS/main.css" rel="stylesheet" />
     <link href='http://fonts.googleapis.com/css?family=Kreon:300,400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>

    <!-- Add your JavaScript to the following file -->
    <script src="../js/jquery-2.1.3.min.js"></script>
    <%--<script src="../js/jquery.scrollTo.min.js"></script>    
    <script src="../js/jquery.actual.min.js"></script>
    <script src="../Scripts/jquery.appear.min.js"></script>--%>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    
    <%--<script src="../js/main.js"></script>--%>
    <script src="../Scripts/bootstrap-waitingfor.js"></script>
    <script type="text/javascript" src="../Scripts/App.js"></script>
   
</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
  Apostrophe
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

   

     

         

        
        <div id="menu" class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">

                <div class="navbar-header">
                    <img class="logo" src="http://sp2013.lowes.com/sites/cscb/apostrophe/SiteAssets/apostrophe%20assets/Loweslogo.png" alt="Lowe's Logo" title="Home" />
                  <%--  <a class="navbar-brand" href="#">
                        <h2>Lowe's</h2></a>--%>
                </div><!-- navbar-header -->
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#header" >Home</a></li>                        
                        <li><a href="#aboutus" >About us</a></li>
                        <li><a href="#teams" >Teams</a></li>
                        <li><a href="#participate" >Participate</a></li>
                        <li><a href="http://sp2013.lowes.com/sites/cscb/apostrophe/Lists/Event%20Calendar/calendar.aspx" target="_blank" >Events Calendar</a></li>
                    </ul>
                </div><!--/.navbar-collapse -->


               
               


            </div><!-- container -->
        </div><!-- menu -->
       <div id="header" class="full_height">
    </div>

     <div id="aboutus" class="light-wrapper full_height">
        <div class="container inner ">
            <div class="row story">
                <div class="col-sm-6">
                    <div class="col-wrapper">
                        <img class="bottom-marged" src="http://sp2013.lowes.com/sites/cscb/apostrophe/SiteAssets/apostrophe%20assets/ApostropheLogo.png" alt="apotrophe logo" title="apotrophe logo"/>
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="col-wrapper">
                        <p class="aboutus"><span class="up-caps">T</span>he Lowe’s Apostrophe is unique to us – it is something our competitor’s cannot take from us, it is our energizer in the cheer, and our identity as a company.  </p>

                        <p class="aboutus"> 
                            It represents our people, our culture and who we are. It is our unique identity at Lowe's, and it perfectly punctuates the energy, the values and the spirit of Lowe's. Where better to imbibe this in than the name of our employee club.
                        </p>

                    </div>
                </div>
            </div>
            <!-- /.services --> 
        </div>
        <!-- /.container -->
    </div>

  
   


        <div class="light-wrapper full_height" id="teams" >
          
          <div class="container-fluid inner teams-banner full_height">
              <div class="row space">
                  <div class="col-sm-2  profile" >
                      <div class="profile-sidebar">
				<!-- SIDEBAR USERPIC -->
				<div class="profile-userpic">
					<img src="http://sp2013.lowes.com/sites/cscb/apostrophe/SiteAssets/apostrophe%20assets/blankprofile.png" class="img-responsive profilepic" alt="Change Picture" title="Change Picture">
				</div>
				<!-- END SIDEBAR USERPIC -->
				<!-- SIDEBAR USER TITLE -->
				<div class="profile-usertitle">
					<div class="profile-usertitle-name">
						<span class="emp-name">Name</span>
					</div>
					<div class="profile-usertitle-job">	
                        <span class="emp-team">Team</span>					
					</div>
				</div>
				<!-- END SIDEBAR USER TITLE -->
				
				<!-- SIDEBAR MENU -->
				<div class="profile-usermenu">
					<ul class="nav">
						<li class="hover-class">
							<a class="change-profile-picture">							
							Change Profile Picture</a>
						</li>
                        <%--<li class="hover-class">
							<a class="nominate-captain">							
							Nominate youself as a captain for your team </a>
						</li>--%>
						<li class="padding2">
                            </li>
						
					</ul>
				</div>
				<!-- END MENU -->
			</div>
		</div>
	
	
                
                <div class="col-sm-9 col-sm-offset-1 ">  
                      <div class="row team-names">
                          <div class="col-sm-2 ">
                           <a href="http://sp2013.lowes.com/sites/cscb/apostrophe/SitePages/Team%20L.aspx" target="_blank">   <img src="http://sp2013.lowes.com/sites/cscb/apostrophe/SiteAssets/apostrophe%20assets/Team%20L.png" alt="Team L" title="Know more about the Team" /></a>
                             
                              </div>
                          
                          <div class="col-sm-2 ">
                           <a href="http://sp2013.lowes.com/sites/cscb/apostrophe/SitePages/Team%20O.aspx" target="_blank" >  <img src="http://sp2013.lowes.com/sites/cscb/apostrophe/SiteAssets/apostrophe%20assets/Team%20O.png" alt="Team O" title="Know more about the Team"  />  </a>
                           
                              </div>
                                                                      
                           <div class="col-sm-2 ">
                            <a href="http://sp2013.lowes.com/sites/cscb/apostrophe/SitePages/Team%20W.aspx" target="_blank">    <img src="http://sp2013.lowes.com/sites/cscb/apostrophe/SiteAssets/apostrophe%20assets/Team%20W.png" alt="Team W" title="Know more about the Team" />   </a>
                       </div>
                          
                          <div class="col-sm-2 ">
                           <a href="http://sp2013.lowes.com/sites/cscb/apostrophe/SitePages/Team%20E.aspx" target="_blank
                               ">   <img src="http://sp2013.lowes.com/sites/cscb/apostrophe/SiteAssets/apostrophe%20assets/Team%20E.png" alt="Team E" title="Know more about the Team"  /> </a>
                             
                              </div>

                           <div class="col-sm-2 ">
                          <a href="#header" >     <img src="http://sp2013.lowes.com/sites/cscb/apostrophe/SiteAssets/apostrophe%20assets/Apostrophe.png" alt=";" title="Apostrophe"  /> </a>
                            
                              </div>

                           <div class="col-sm-2 ">
                           <a href="http://sp2013.lowes.com/sites/cscb/apostrophe/Lists/Organizing%20Members/AllItems.aspx" target="_blank">    <img src="http://sp2013.lowes.com/sites/cscb/apostrophe/SiteAssets/apostrophe%20assets/S.png" alt="Team S" title="Know more about the Organizing Team"   />   </a>
                             
                              </div>

                          </div>
                          
                  
    </div>
                
              </div>
            </div>
    </div>

<div id="participate" class="light-wrapper ">
        <div class="container-fluid no-padding">
            <div class="row input-form">
                <div class="col-sm-4 col-sm-offset-4">
                    <h1>Football Registration</h1>
                    <form>
                        <div class="form-group">
                        <label for="usr">Name</label>
                        <input type="text" class="form-control" id="usr">
                        </div>
                        <div class="form-group">
                            <label for="mobile">Mobile</label>
                            <input type="text" class="form-control" id="mobile">
                        </div>
                        <label>Interested in participating:</label>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="Internal Tournament" id="internalTournament">
                                Lowe's Internal Football Tournament
                            </label>
                            <div class="form-group"><label>Registration open till 1-Dec</label></div>
                        </div>
                        <div class="form-check ">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="External Tournament" id="externalTournament">
                                External Football Tournament (Inter Corporate Tournament)
                            </label>
                            <div class="form-group"><label>Registration open till 29-Nov</label></div>
                        </div>
                        <div class="form-group">
                            <label for="skill">Skill Level</label>
                        <select id="skill" class="form-control">                            
                            <option value="Beginner">Beginner</option>
                            <option value="Intermediate">Intermediate</option>
                            <option value="Expert">Expert</option>
                        </select>
                        </div>
                        <div class="form-group">    
                            <label for="position">Position</label>
                        <select id="position" class="form-control">                            
                            <option value="Setter">Striker</option>
                            <option value="Spiker">MidFielder</option>
                            <option value="Libero">Defender</option>
                            <option value="Libero">Winger</option>
                            <option value="Defender">Keeper</option>
                            <option value="All Rounder">All Rounder</option>
                        </select>
                        </div>
                            
                        
                        <button  class="btn btn-info" id="submit">Submit</button>
                    </form>
                
               
                
                </div>
                </div>
                
            <video  id="vid" width="100%" height="100%" loop="loop" muted="muted" autoplay="autoplay" preload="auto" poster="../Images/fbpic.jpg">
                <Source src="../Images/FB.mp4" type="video/mp4"/>
            </video>


           <%-- <div class="row ">
                <div class="col-sm-8 headings1">
                    Lowe's Internal Tournaments
                    </div>
                </div>
            <div class="row ">
                <div class="col-sm-4 ">
                    <div class="col-wrapper">
                        <figure class="effect-bubba">
                           <img src="http://sp2013.lowes.com/sites/cscb/apostrophe/SiteAssets/apostrophe%20assets/TT%20Singles.jpg" alt="TT Singles"  />                      
                            <figcaption>
                                <h2><span class="img-links" data-url="http://sp2013.lowes.com/sites/cscb/apostrophe/_layouts/15/FormServer.aspx?XsnLocation=http://sp2013.lowes.com/sites/cscb/apostrophe/TT%20Singles%20Registration/Forms/template.xsn&SaveLocation=http%3A%2F%2Fsp2013%2Elowes%2Ecom%2Fsites%2Fcscb%2Fapostrophe%2FTT%20Singles%20Registration&ClientInstalled=true&DefaultItemOpen=1&Source=http%3A%2F%2Fsp2013%2Elowes%2Ecom%2Fsites%2Fcscb%2Fapostrophe%2FTT%2520Singles%2520Registration%2FForms%2FAllItems%2Easpx" >TT Singles</span></h2>
                                <p>Registrations Closed.</p>
                             
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="col-wrapper">
                          <figure class="effect-bubba">
                                <img src="http://sp2013.lowes.com/sites/cscb/apostrophe/SiteAssets/apostrophe%20assets/TT%20Doubles.jpg" alt="TT Doubles" />                               
                                <figcaption>
                                    <h2><span data-url="http://sp2013.lowes.com/sites/cscb/apostrophe/_layouts/15/FormServer.aspx?XsnLocation=http://sp2013.lowes.com/sites/cscb/apostrophe/TT%20Doubles%20Registration/Forms/template.xsn&SaveLocation=http%3A%2F%2Fsp2013%2Elowes%2Ecom%2Fsites%2Fcscb%2Fapostrophe%2FTT%20Doubles%20Registration&ClientInstalled=true&DefaultItemOpen=1&Source=http%3A%2F%2Fsp2013%2Elowes%2Ecom%2Fsites%2Fcscb%2Fapostrophe%2FTT%2520Doubles%2520Registration%2FForms%2FAllItems%2Easpx" class="img-links" >TT Doubles</span></h2>
                                    <p>Registrations Closed.</p>
                                   
                                </figcaption>
                            </figure>

                    </div>
                </div>

                 <div class="col-sm-4">
                    <div class="col-wrapper">
                          <figure class="effect-bubba">
                                <img src="http://sp2013.lowes.com/sites/cscb/apostrophe/SiteAssets/apostrophe%20assets/Badminton.jpg" alt="Badminton Singles" />                               
                                <figcaption>
                                    <h2><span data-url="http://sp2013.lowes.com/sites/cscb/apostrophe/_layouts/15/FormServer.aspx?XsnLocation=http://sp2013.lowes.com/sites/cscb/apostrophe/Badminton%20Singles%20Registration/Forms/template.xsn&OpenIn=browser&SaveLocation=http://sp2013.lowes.com/sites/cscb/apostrophe/Badminton%20Singles%20Registration&Source=http://sp2013.lowes.com/sites/cscb/apostrophe/Badminton%20Singles%20Registration" class="img-links" >Badminton Singles</span></h2>
                                    <p>Registrations Closed.</p>
                                   
                                </figcaption>
                            </figure>

                    </div>
                </div>

            </div>
            <div class="row ">
                <div class="col-sm-8 headings2">
                    Inter Corporate Tournaments(External)
                    </div>
                </div>
            <div class="row ">
                <div class="col-sm-4 ">
                    <div class="col-wrapper">
                        <figure class="effect-bubba">
                           <img src="http://sp2013.lowes.com/sites/cscb/apostrophe/SiteAssets/apostrophe%20assets/Volleyball.jpg" alt="Volleyball"  />                      
                            <figcaption>
                                <h2><span class="img-links" data-url="http://sp2013.lowes.com/sites/cscb/apostrophe/_layouts/15/start.aspx#/Lists/Volleyball%20Nominations/NewForm.aspx?Source=http%3A%2F%2Fsp2013%2Elowes%2Ecom%2Fsites%2Fcscb%2Fapostrophe%2FLists%2FVolleyball%2520Nominations%2FAllItems%2Easpx&RootFolder=" >Volleyball</span></h2>
                                <p>Registrations Closed.</p>
                             
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="col-wrapper">
                          <figure class="effect-bubba">
                                <img src="http://sp2013.lowes.com/sites/cscb/apostrophe/SiteAssets/apostrophe%20assets/throwball.jpeg" alt="Throwball" />                               
                                <figcaption>
                                    <h2><span data-url="http://sp2013.lowes.com/sites/cscb/apostrophe/_layouts/15/start.aspx#/Lists/Throwball%20Nominations/NewForm.aspx?Source=http%3A%2F%2Fsp2013%2Elowes%2Ecom%2Fsites%2Fcscb%2Fapostrophe%2FLists%2FThrowball%2520Nominations%2FAllItems%2Easpx&RootFolder=" class="img-links" >Throwball</span></h2>
                                    <p>Registrations Closed.</p>
                                   
                                </figcaption>
                            </figure>

                    </div>
                </div>

                 <div class="col-sm-4">
                    <div class="col-wrapper">
                          <figure class="effect-bubba">
                                <img src="http://sp2013.lowes.com/sites/cscb/apostrophe/SiteAssets/apostrophe%20assets/Football.jpeg" alt="Football" />                               
                                <figcaption>
                                    <h2><span data-url="http://sp2013.lowes.com/sites/cscb/apostrophe/_layouts/15/start.aspx#/Lists/Football%20Nominations/NewForm.aspx?Source=http%3A%2F%2Fsp2013%2Elowes%2Ecom%2Fsites%2Fcscb%2Fapostrophe%2FLists%2FFootball%2520Nominations%2FAllItems%2Easpx&RootFolder=" class="img-links" >Football</span></h2>
                                    <p>Registrations Closed.</p>
                                   
                                </figcaption>
                            </figure>

                    </div>
                </div>

            </div>--%>
        </div>
        <!-- /.container -->
    </div>
  

     <footer id="footer1" class="dark-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    &copy; Copyright Pilates 2014
                    <br />Theme By <a class="themeBy" href="http://www.Themewagon.com">ThemeWagon</a>
                </div>

            </div>
        </div>
        <!-- /.container -->
    </footer>

         
</asp:Content>
