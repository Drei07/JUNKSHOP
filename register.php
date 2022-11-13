<?php require_once('./config.php') ?>
<!DOCTYPE html>
<html lang="en">
<?php require_once('inc/header.php') ?>

<body class="">
  <script>
    start_loader()
  </script>
  <style>
    body {
      font-family: Verdana, Geneva, sans-serif;
      font-size: 14px;
      background: #f2f2f2;
    }

    .clearfix:after {
      content: "";
      display: block;
      clear: both;
      visibility: hidden;
      height: 0;
    }

    .form_wrapper {
      background: #fff;
      width: 400px;
      border-radius: 10px;
      max-width: 100%;
      box-sizing: border-box;
      padding: 25px;
      margin: 8% auto 0;
      position: relative;
      z-index: 1;
      border-top: 5px solid #000;
      -webkit-box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
      -moz-box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
      box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
      -webkit-transform-origin: 50% 0%;
      transform-origin: 50% 0%;
      -webkit-transform: scale3d(1, 1, 1);
      transform: scale3d(1, 1, 1);
      -webkit-transition: none;
      transition: none;
      -webkit-animation: expand 0.8s 0.6s ease-out forwards;
      animation: expand 0.8s 0.6s ease-out forwards;
      opacity: 0;
    }

    .form_wrapper h2 {
      font-size: 1.5em;
      line-height: 1.5em;
      margin: 0;
    }

    .form_wrapper .title_container {
      text-align: center;
      padding-bottom: 15px;
    }

    .form_wrapper h3 {
      font-size: 1.1em;
      font-weight: normal;
      line-height: 1.5em;
      margin: 0;
    }

    .form_wrapper label {
      font-size: 12px;
    }

    .form_wrapper .row {
      margin: 10px -15px;
    }

    .form_wrapper .row>div {
      padding: 0 15px;
      box-sizing: border-box;
    }

    .form_wrapper .col_half {
      width: 50%;
      float: left;
    }

    .form_wrapper .input_field {
      position: relative;
      margin-bottom: 20px;
      -webkit-animation: bounce 0.6s ease-out;
      animation: bounce 0.6s ease-out;
    }

    .form_wrapper .input_field>span {
      position: absolute;
      left: 0;
      top: 0;
      color: #333;
      height: 100%;
      border-right: 1px solid #cccccc;
      text-align: center;
      width: 30px;
    }

    .form_wrapper .input_field>span>i {
      padding-top: 10px;
    }

    .form_wrapper .textarea_field>span>i {
      padding-top: 10px;
    }

    .form_wrapper input[type=text],
    .form_wrapper input[type=email],
    .form_wrapper input[type=password] {
      width: 100%;
      padding: 8px 10px 9px 35px;
      height: 35px;
      border: 1px solid #cccccc;
      box-sizing: border-box;
      outline: none;
      -webkit-transition: all 0.3s ease-in-out;
      -moz-transition: all 0.3s ease-in-out;
      -ms-transition: all 0.3s ease-in-out;
      transition: all 0.3s ease-in-out;
    }

    .form_wrapper input[type=text]:hover,
    .form_wrapper input[type=email]:hover,
    .form_wrapper input[type=password]:hover {
      background: #fafafa;
    }

    .form_wrapper input[type=text]:focus,
    .form_wrapper input[type=email]:focus,
    .form_wrapper input[type=password]:focus {
      -webkit-box-shadow: 0 0 2px 1px rgba(255, 169, 0, 0.5);
      -moz-box-shadow: 0 0 2px 1px rgba(255, 169, 0, 0.5);
      box-shadow: 0 0 2px 1px rgba(255, 169, 0, 0.5);
      border: 1px solid #000;
      background: #fafafa;
    }

    .form_wrapper input[type=submit] {
      background: #000;
      height: 35px;
      line-height: 35px;
      width: 100%;
      border: none;
      outline: none;
      cursor: pointer;
      color: #fff;
      border-radius: 10px;
      font-size: 1.1em;
      margin-bottom: 10px;
      -webkit-transition: all 0.3s ease-in-out;
      -moz-transition: all 0.3s ease-in-out;
      -ms-transition: all 0.3s ease-in-out;
      transition: all 0.3s ease-in-out;
    }

    .form_wrapper input[type=submit]:hover {
      background: #000;
    }

    .form_wrapper input[type=submit]:focus {
      background: #000;
    }

    .form_wrapper input[type=checkbox],
    .form_wrapper input[type=radio] {
      border: 0;
      clip: rect(0 0 0 0);
      height: 1px;
      margin: -1px;
      overflow: hidden;
      padding: 0;
      position: absolute;
      width: 1px;
    }

    .form_container .row .col_half.last {
      border-left: 1px solid #cccccc;
    }

    .checkbox_option label {
      margin-right: 1em;
      position: relative;
    }

    .checkbox_option label:before {
      content: "";
      display: inline-block;
      width: 0.5em;
      height: 0.5em;
      margin-right: 0.5em;
      vertical-align: -2px;
      border: 2px solid #cccccc;
      padding: 0.12em;
      background-color: transparent;
      background-clip: content-box;
      transition: all 0.2s ease;
    }

    .checkbox_option label:after {
      border-right: 2px solid #000000;
      border-top: 2px solid #000000;
      content: "";
      height: 20px;
      left: 2px;
      position: absolute;
      top: 7px;
      transform: scaleX(-1) rotate(135deg);
      transform-origin: left top;
      width: 7px;
      display: none;
    }

    .checkbox_option input:hover+label:before {
      border-color: #000000;
    }

    .checkbox_option input:checked+label:before {
      border-color: #000000;
    }

    .checkbox_option input:checked+label:after {
      -moz-animation: check 0.8s ease 0s running;
      -webkit-animation: check 0.8s ease 0s running;
      animation: check 0.8s ease 0s running;
      display: block;
      width: 7px;
      height: 20px;
      border-color: #000000;
    }

    .radio_option label {
      margin-right: 1em;
    }

    .radio_option label:before {
      content: "";
      display: inline-block;
      width: 0.5em;
      height: 0.5em;
      margin-right: 0.5em;
      border-radius: 100%;
      vertical-align: -3px;
      border: 2px solid #cccccc;
      padding: 0.15em;
      background-color: transparent;
      background-clip: content-box;
      transition: all 0.2s ease;
    }

    .radio_option input:hover+label:before {
      border-color: #000000;
    }

    .radio_option input:checked+label:before {
      background-color: #000000;
      border-color: #000000;
    }

    .select_option {
      position: relative;
      width: 100%;
    }

    .select_option select {
      display: inline-block;
      width: 100%;
      height: 35px;
      padding: 0px 15px;
      cursor: pointer;
      color: #7b7b7b;
      border: 1px solid #cccccc;
      border-radius: 0;
      background: #fff;
      appearance: none;
      -webkit-appearance: none;
      -moz-appearance: none;
      transition: all 0.2s ease;
    }

    .select_option select::-ms-expand {
      display: none;
    }

    .select_option select:hover,
    .select_option select:focus {
      color: #000000;
      background: #000;
      border-color: #000000;
      outline: none;
    }

    .select_arrow {
      position: absolute;
      top: calc(50% - 4px);
      right: 15px;
      width: 0;
      height: 0;
      pointer-events: none;
      border-width: 8px 5px 0 5px;
      border-style: solid;
      border-color: #7b7b7b transparent transparent transparent;
    }

    .select_option select:hover+.select_arrow,
    .select_option select:focus+.select_arrow {
      border-top-color: #000000;
    }

    .credit {
      position: relative;
      z-index: 1;
      text-align: center;
      padding: 15px;
      color: #000;
    }

    .credit a {
      color: #e1a70a;
    }

    @-webkit-keyframes check {
      0% {
        height: 0;
        width: 0;
      }

      25% {
        height: 0;
        width: 7px;
      }

      50% {
        height: 20px;
        width: 7px;
      }
    }

    @keyframes check {
      0% {
        height: 0;
        width: 0;
      }

      25% {
        height: 0;
        width: 7px;
      }

      50% {
        height: 20px;
        width: 7px;
      }
    }

    @-webkit-keyframes expand {
      0% {
        -webkit-transform: scale3d(1, 0, 1);
        opacity: 0;
      }

      25% {
        -webkit-transform: scale3d(1, 1.2, 1);
      }

      50% {
        -webkit-transform: scale3d(1, 0.85, 1);
      }

      75% {
        -webkit-transform: scale3d(1, 1.05, 1);
      }

      100% {
        -webkit-transform: scale3d(1, 1, 1);
        opacity: 1;
      }
    }

    @keyframes expand {
      0% {
        -webkit-transform: scale3d(1, 0, 1);
        transform: scale3d(1, 0, 1);
        opacity: 0;
      }

      25% {
        -webkit-transform: scale3d(1, 1.2, 1);
        transform: scale3d(1, 1.2, 1);
      }

      50% {
        -webkit-transform: scale3d(1, 0.85, 1);
        transform: scale3d(1, 0.85, 1);
      }

      75% {
        -webkit-transform: scale3d(1, 1.05, 1);
        transform: scale3d(1, 1.05, 1);
      }

      100% {
        -webkit-transform: scale3d(1, 1, 1);
        transform: scale3d(1, 1, 1);
        opacity: 1;
      }
    }

    @-webkit-keyframes bounce {
      0% {
        -webkit-transform: translate3d(0, -25px, 0);
        opacity: 0;
      }

      25% {
        -webkit-transform: translate3d(0, 10px, 0);
      }

      50% {
        -webkit-transform: translate3d(0, -6px, 0);
      }

      75% {
        -webkit-transform: translate3d(0, 2px, 0);
      }

      100% {
        -webkit-transform: translate3d(0, 0, 0);
        opacity: 1;
      }
    }

    @keyframes bounce {
      0% {
        -webkit-transform: translate3d(0, -25px, 0);
        transform: translate3d(0, -25px, 0);
        opacity: 0;
      }

      25% {
        -webkit-transform: translate3d(0, 10px, 0);
        transform: translate3d(0, 10px, 0);
      }

      50% {
        -webkit-transform: translate3d(0, -6px, 0);
        transform: translate3d(0, -6px, 0);
      }

      75% {
        -webkit-transform: translate3d(0, 2px, 0);
        transform: translate3d(0, 2px, 0);
      }

      100% {
        -webkit-transform: translate3d(0, 0, 0);
        transform: translate3d(0, 0, 0);
        opacity: 1;
      }
    }

    @media (max-width: 600px) {
      .form_wrapper .col_half {
        width: 100%;
        float: none;
      }

      .bottom_row .col_half {
        width: 50%;
        float: left;
      }

      .form_container .row .col_half.last {
        border-left: none;
      }

      .remember_me {
        padding-bottom: 20px;
      }
    }
  </style>
  <div class="form_wrapper">
    <div class="form_container">
      <div class="title_container">
        <h2>Registration Form</h2>
      </div>
      <div class="row clearfix">
        <div class="">
          <form id="register-frm" action="" method="post">

            <input type="hidden" name="id">


            <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
              <input type="text" name="firstname" id="firstname" required placeholder="First Name" />
            </div>

            <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
              <input type="text" name="middlename" id="middlename" required placeholder="Middle Name" />
            </div>

            <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
              <input type="text" name="lastname" id="lastname" required placeholder="Last Name" required />
            </div>

            <div class="input_field"> <span><i aria-hidden="true" class="fa fa-book"></i></span>
              <input type="text" name="contact" id="contact" required placeholder="Contact Number" required />
            </div>

            <div class="input_field"> <span><i aria-hidden="true" class="fa fa-map-marker"></i></span>
              <input type="text" name="address" id="address" required placeholder="Address" required />
            </div>

            <div class="form-group col-md-6">
              <select name="gender" id="gender" class="custom-select custom-select-sm form-control-border" required>
                <option>Male</option>
                <option>Female</option>
              </select>
              <small class="ml-3">Gender</small>
            </div>

            <div class="input_field"> <span><i aria-hidden="true" class="fa fa-envelope"></i></span>
              <input type="email" name="email" id="email" placeholder="Email" required />
            </div>
            <div class="input_field"> <span><i aria-hidden="true" class="fa fa-lock"></i></span>
              <input type="password" name="password" id="password" placeholder="Password" required />
            </div>
            <div class="input_field"> <span><i aria-hidden="true" class="fa fa-lock"></i></span>
              <input type="password" id="cpassword" placeholder="Re-type Password" required />
            </div>
            <div class="row">
              <div class="col-12 text-center">
              <a href="<?php echo base_url ?>" style="color: #000;">Back to Shop</a>
              </div>
          </div>
            <div class="row">
              <div class="col-12 text-center">
              <a href="<?php echo base_url.'login.php' ?>" style="color: #000;">Already have an Account</a>
              </div>
          </div>

            <input class="button" type="submit" />
          </form>
        </div>
      </div>
    </div>
  </div>

  <script src="<?= base_url ?>plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="<?= base_url ?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <!-- <script src="<?= base_url ?>dist/js/adminlte.min.js"></script> -->

  <script>
    $(document).ready(function() {
      end_loader();
      $('.pass_type').click(function() {
        var type = $(this).attr('data-type')
        if (type == 'password') {
          $(this).attr('data-type', 'text')
          $(this).closest('.input-group').find('input').attr('type', "text")
          $(this).removeClass("fa-eye-slash")
          $(this).addClass("fa-eye")
        } else {
          $(this).attr('data-type', 'password')
          $(this).closest('.input-group').find('input').attr('type', "password")
          $(this).removeClass("fa-eye")
          $(this).addClass("fa-eye-slash")
        }
      })
      $('#register-frm').submit(function(e) {
        e.preventDefault()
        var _this = $(this)
        $('.err-msg').remove();
        var el = $('<div>')
        el.hide()
        if ($('#password').val() != $('#cpassword').val()) {
          el.addClass('alert alert-danger err-msg').text('Password does not match.');
          _this.prepend(el)
          el.show('slow')
          return false;
        }
        start_loader();
        $.ajax({
          url: _base_url_ + "classes/Users.php?f=save_client",
          data: new FormData($(this)[0]),
          cache: false,
          contentType: false,
          processData: false,
          method: 'POST',
          type: 'POST',
          dataType: 'json',
          error: err => {
            console.log(err)
            alert_toast("An error occured", 'error');
            end_loader();
          },
          success: function(resp) {
            if (typeof resp == 'object' && resp.status == 'success') {
              location.href = "./login.php";
            } else if (resp.status == 'failed' && !!resp.msg) {
              el.addClass("alert alert-danger err-msg").text(resp.msg)
              _this.prepend(el)
              el.show('slow')
            } else {
              alert_toast("An error occured", 'error');
              end_loader();
              console.log(resp)
            }
            $('html, body').scrollTop(0)
          }
        })
      })
    })
  </script>
</body>

</html>