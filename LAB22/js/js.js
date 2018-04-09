function onSignIn(googleUser) {
    
    var profile = googleUser.getBasicProfile();
    console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
    console.log('Name: ' + profile.getName());
    console.log('Image URL: ' + profile.getImageUrl());
    console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
    $.get("ajax.php", {opcion: 1, nombreGoogle: profile.getName()}).done(function(data)
    {
        
    });
}

gapi.load('auth2', function(){
    gapi.auth2.init();
})

function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function() {
        console.log('User signed out.');
    });
    $.get("ajax.php", {opcion: 2}).done(function(data)
    {
        
    });
}
