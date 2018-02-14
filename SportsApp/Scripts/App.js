
'use strict';

var sportsApp = sportsApp || {};
var SA = sportsApp;


ExecuteOrDelayUntilScriptLoaded(initializePage, "sp.js");

function initializePage() {
    SA.context = SP.ClientContext.get_current();
    SA.currentUser = SA.context.get_web().get_currentUser();
    SA.appCtx = '';
    SA.currentUserID = '';
    SA.currentUserMail = '';
    SA.olistItemColl = '';
    SA.userEmail = '';
    JSRequest.EnsureSetup(); // this is an easy method to retrieve URL parameters...
    SA.appweburl = decodeURIComponent(JSRequest.QueryString["SPAppWebUrl"]);
    SA.hostweburl = decodeURIComponent(JSRequest.QueryString["SPHostUrl"]);
    SA.appCtx = new SP.AppContextSite(SA.context, SA.hostweburl);
    SA.team = '';

    $(document).ready(function () {
        try {
            waitingDialog.show("Fetching info...");
            getUserName();
            
                    }
        catch (e) {
            waitingDialog.hide();
            alert(e.message);
        }

    });
    $(window).on('beforeunload', function () { $("#vid").hide(); });

    $(".profilepic").error(function () {
        $(".profilepic").attr('src', 'http://sp2013.lowes.com/sites/cscb/apostrophe/SiteAssets/apostrophe%20assets/blankprofile.png');
        alert("Hi!! You don't have any profile picture associated with you. You can upload the picture by clicking Change Profile Picture. ");

    });
    $('.logo').click(function () {
        window.open('http://sp2013.lowes.com/sites/cscb/sitepages/portal.aspx');
    });
    $('.nominate-captain').click(function () {
        nominateAsCaptain();
    });
    $('.change-profile-picture').click(function () {
        SA.tempStr = SA.currentUserID.toString().indexOf('\\');
        SA.profileUserID = SA.currentUserID.toString().substring(parseInt(SA.tempStr) + 1);
        SA.tempURL = "http://mysite.lowes.com:8080/_layouts/15/changephoto.aspx?Source=http://mysite.lowes.com:8080/Person.aspx?accountname=i:0#.w|lowes\\" + SA.profileUserID.toString();
        window.open(SA.tempURL);
    });
    $('#submit').click(function(e){
    
        e.preventDefault();
        var name=$('#usr').val();
        var mobile=$('#mobile').val();
        if(name=='' || mobile=='')
        {
            alert('Name and Mobile are mandataory fields');
        }
        else{
            volleyballRegistration();
        }
    
    });

    //Function to get current user
    function getUserName() {

        SA.context.load(SA.currentUser);
        SA.context.executeQueryAsync(onGetUserNameSuccess, onGetUserNameFail);
       
    }

    // On Success
    function onGetUserNameSuccess() {
        
        SA.userEmail = SA.currentUser.get_email();
        SA.currentUserID = SA.currentUser.get_loginName();
        $('.emp-name').text(SA.currentUser.get_title());
        checkTeam();
        checkProfilePic();
    }

    // On Failure
    function onGetUserNameFail(sender, args) {
        waitingDialog.hide();
        alert('Unable to fetch your information. Please reload again.');
        
    }
  
    // Check for which team current user belong to
    function checkTeam() {
        try {

            if (SA.currentUserID.toString() != '') {
                var olist = SA.appCtx.get_web().get_lists().getByTitle('Employee Info');
                var camlQuery = new SP.CamlQuery();
                camlQuery.set_viewXml("<View><Query><Where><Eq><FieldRef Name='AccountID'  /><Value Type='User'>"+SA.currentUserID+"</Value></Eq></Where></Query></View>");
                SA.olistItemColl = olist.getItems(camlQuery);
                SA.context.load(SA.olistItemColl, 'Include(Team)');
                SA.context.executeQueryAsync(onQuerySucceeded, onQueryFailed);
            }
            else {
                alert('Unable to fetch your info. Please reload the page. If the problem persists please contact the SharePoint team');
            }
           
        }
        catch (e) {
            alert(e.message);
        }
    }

    function onQuerySucceeded(sender, args) {

        try {
            var count = SA.olistItemColl.get_count();
            if (parseInt(count) == 1) {
                var listItemEnumerator = SA.olistItemColl.getEnumerator();
                while (listItemEnumerator.moveNext()) {
                    var oListItem = listItemEnumerator.get_current();
                    SA.team = oListItem.get_item('Team').toString();
                    $('.emp-team').text(SA.team.toString());
                    break;
                }

            }
            else {
                alert("Unable to fetch the Team you belong to. Please contact Apostrophe team.");
            }
        }
        catch (e) {
            alert(e.message);
        }
        waitingDialog.hide();

    }
    function onQueryFailed(sender, args) {
        waitingDialog.hide();
        alert('Unable to fetch your team. ' + args.get_message());
        
    }
   

        function nominateAsCaptain() {
            try{
                var olist = SA.appCtx.get_web().get_lists().getByTitle('Captain Nominations');
                var newItemInfo = SP.ListItemCreationInformation();
                var olistItem = olist.addItem(newItemInfo);
                olistItem.set_item("Title", SA.currentUserID);
                olistItem.update();
                SA.context.load(olistItem);
                SA.context.executeQueryAsync(nominationSuccessful, nominationUnSuccessful);
            }
            catch (e) {
                alert(e.message);
            }

        }
        function nominationSuccessful(sender, args) {
            alert('Nomination Successful');
        }
        function nominationUnSuccessful(sender, args) {
            alert('Nomination UnSuccessful. '+args.get_message());
        }

        function checkProfilePic() {
           
            SA.tempStr = SA.currentUserID.toString().indexOf('\\');
            SA.profileUserID = SA.currentUserID.toString().substring(parseInt(SA.tempStr) + 1);
            SA.pofilePicSrc = "http://mysite.lowes.com:8080/User%20Photos/Profile%20Pictures/" + SA.profileUserID + "_LThumb.jpg";
            $(".profile-userpic img").attr('src', SA.pofilePicSrc);
            
           
        }

        function volleyballRegistration() {
            try {
               
                
                var olist = SA.appCtx.get_web().get_lists().getByTitle('Football Nominations');
                var newItemInfo = SP.ListItemCreationInformation();
                var olistItem = olist.addItem(newItemInfo);
                olistItem.set_item("Title", $('#usr').val());
                olistItem.set_item("Team", SA.team);
                olistItem.set_item("Mobile", $('#mobile').val());
                olistItem.set_item("Skill_Level", $('#skill').val());
                olistItem.set_item("Position", $('#position').val());
                olistItem.set_item("External_Tournament", $("#externalTournament").val());
                olistItem.set_item("Internal_Tournament", $("#internalTournament").val());
                olistItem.update();
                SA.context.load(olistItem);
                SA.context.executeQueryAsync(function succ() { alert('Nomination sent successfully.')}, function fail(sender,args) {alert('Nomination failed. '+ args.get_message()) });
            }
            catch (e) {
                alert(e.message);
            }

        }

       

    }
