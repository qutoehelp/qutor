<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Qutor Login</title>
  <script src="https://accounts.google.com/gsi/client" async defer></script>
</head>
<body style="margin:0; background: #ffe0b3; font-family: Arial, sans-serif;">

  <!-- Login Page -->
  <div id="login-screen" style="display: flex; flex-direction: column; align-items: center; justify-content: center; height: 100vh; text-align: center;">
    <img src="qutor-logo.png" alt="Qutor Logo" style="max-width: 150px; margin-bottom: 20px;" />
    <h2 style="margin-bottom: 10px;">Welcome to Qutor</h2>
    <p style="margin-bottom: 30px;">Please sign in to continue</p>

    <!-- Google Sign-In Button -->
    <div id="g_id_onload"
         data-client_id="YOUR_GOOGLE_CLIENT_ID"
         data-login_uri=""
         data-callback="handleCredentialResponse"
         data-auto_prompt="false">
    </div>

    <div class="g_id_signin"
         data-type="standard"
         data-size="large"
         data-theme="outline"
         data-text="sign_in_with"
         data-shape="rectangular"
         data-logo_alignment="left">
    </div>

    <p style="margin-top: 20px;">
      Don’t have an account? <a href="#" style="color: #d35400; font-weight: bold;">Create Account</a>
    </p>
  </div>

  <!-- Main Site Content (Hidden Until Logged In) -->
  <div id="main-content" style="display: none;">
    <!-- Put your existing Qutor website HTML here -->
    <h1 style="text-align: center;">Welcome to Qutor!</h1>
    <p style="text-align: center;">You are now signed in.</p>
  </div>

  <script>
    function handleCredentialResponse(response) {
      // Show main content after Google login
      document.getElementById('login-screen').style.display = 'none';
      document.getElementById('main-content').style.display = 'block';

      // Optionally decode token, get user info etc.
      console.log("Encoded JWT ID token: " + response.credential);
    }
  </script>

</body>
</html>
