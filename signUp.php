<!doctype html>
<html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta name="viewport"
            content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <link rel="stylesheet" href="../CSS/signUp.css">
      <title>Document</title>
  </head>
  <body>
<!--  --><?php
//  $dsn ='mysql:dbname=AES_PROJECT_DB;host=127.0.0.1';
//  $username ='root';
//  $password ='1234';
//  $connection = new yii\db\Connection([
//      'dsn' => $dsn,
//      'username' => $username,
//      'password' => $password,
//      ]);
//      $connection->open();
//      ?>
      <main class="container">
          <form class="singUp" action="">
              <div class="signUpGroup names">
                  <label for="name"></label><input class="input name" type="text" name="name" id="name" placeholder="Name">
                  <label for="surname"></label><input class="input surname" type="text" name="surname" id="surname" placeholder="Surname">
                  <label for="userName"></label><input class="input userName" type="text" name="username" id="userName" placeholder="Username">
              </div>
              <div class="signUpGroup mail">
                  <label for="mail"></label><input class="input mail" type="text" name="mail" id="mail" placeholder="Email">
                  <div class="errors"></div>
              </div>
              <div class="signUpGroup pass">
                  <label for="pass"></label><input class="input pass" type="password" name="pass" id="pass" placeholder="Password">
                  <label for="repetePass"></label><input class="input repetePass" type="password" name="repetePass" id="repetePass" placeholder="Confirm password">
                  <div class="errors"></div>
              </div>
              <div class="signUpGroup sex">
                  <input class="radio male" type="radio" name="sex" id="Male" value="M"><label class="label" for="Male">Male</label>
                  <input class="radio female" type="radio" name="sex" id="Female" value="F"><label class="label" for="Female">Female</label>
                  <input class="radio other" type="radio" name="sex" id="Other" value="O"><label class="label" for="Other">Other</label>
                  <div class="errors"></div>
              </div>
              <div class="signUpGroup privacy">
                  <input class="input pass" type="checkbox" name="privacy" id="privacy"><label class="label" for="privacy">Set my account on private</label>
                  <div class="errors"></div>
              </div>
              <div class="signUpGroup buttons">
                  <button class="btn submit" type="submit">Sign up</button>
                  <button class="btn cancel">Return back</button>
                  <div class="errors"></div>
              </div>
          </form>
      </main>
  </body>
</html>