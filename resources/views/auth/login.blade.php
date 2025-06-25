<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Đăng nhập</title>

    <link href="{{ asset('layout/backend/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('layout/backend/css/datepicker3.css') }}" rel="stylesheet">
    <link href="{{ asset('layout/backend/css/styles.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('resources/css/login-center.css') }}">
    <style>
        .register-form-wrapper {
            width: 100%;
            margin: 0 auto;
        }
        .register-form-group {
            margin-bottom: 24px;
        }
        .register-form-input {
            height: 44px;
            font-size: 17px;
            border-radius: 10px;
            border: 1.5px solid #e3e8ee;
            padding: 10px 18px;
            background: #f8fafc;
            box-shadow: none;
            width: 100%;
            display: block;
            transition: border-color 0.2s;
            box-sizing: border-box;
        }
        .register-form-input:focus {
            border-color: #ff9800;
            outline: none;
        }
        .register-btn {
            width: 100%;
            height: 44px;
            font-size: 19px;
            font-weight: 700;
            border-radius: 10px;
            background: linear-gradient(90deg,#ff5722 0%,#ff9800 100%);
            border: none;
            box-shadow: 0 2px 12px rgba(255,87,34,0.10);
            letter-spacing: 1px;
            color: #fff;
            margin-top: 8px;
            transition: background 0.2s;
        }
        .register-btn:hover {
            background: linear-gradient(90deg,#ff9800 0%,#ff5722 100%);
        }
        .register-link {
            margin-top: 24px;
            text-align: center;
            font-size: 16px;
        }
        .register-link a {
            text-decoration: none;
            color: #ff5722;
            font-weight: 500;
        }
        .panel-body .register-form-wrapper {
            max-width: 100%;
        }
    </style>
</head>

<body style="min-height:100vh;display:flex;align-items:center;justify-content:center;background:#f5f7fa;">
    @if(session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif
    <div class="login-center-wrapper" style="width:100vw;min-height:100vh;display:flex;align-items:center;justify-content:center;">
        <div class="login-panel panel panel-default" style="min-width:520px;max-width:600px;width:100%;box-shadow:0 8px 32px rgba(255,87,34,0.10);border-radius:20px;overflow:hidden;">
            <div class="panel-heading" style="font-size:2.2rem;font-weight:700;text-align:center;background:linear-gradient(90deg,#ff5722 0%,#ff9800 100%);color:#fff;border-bottom:none;padding:32px 0 18px 0;letter-spacing:1px;font-family:'Segoe UI',Arial,sans-serif;">Đăng nhập</div>
            <div class="panel-body" style="background:#fff;padding:44px 48px 32px 48px;display:flex;justify-content:center;">
                <form role="form" method="POST" action="{{ route('login') }}" class="register-form-wrapper">
                    @csrf
                    <fieldset>
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul style="margin-bottom:0;">
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <div class="register-form-group">
                            <input class="register-form-input" placeholder="E-mail" name="email" type="email" value="{{ old('email') }}" required autofocus>
                        </div>
                        <div class="register-form-group" style="margin-bottom:32px;">
                            <input class="register-form-input" placeholder="Password" name="password" type="password" required>
                        </div>
                        <input type="submit" value="Đăng nhập" class="register-btn">
                        <p class="register-link">
                            Bạn chưa có tài khoản ?
                            <a href="{{ route('register') }}">Đăng ký ngay</a>
                        </p>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>

    <script src="{{ asset('layout/backend/js/jquery-1.11.1.min.js') }}"></script>
    <script src="{{ asset('layout/backend/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('layout/backend/js/chart.min.js') }}"></script>
    <script src="{{ asset('layout/backend/js/chart-data.js') }}"></script>
    <script src="{{ asset('layout/backend/js/easypiechart.js') }}"></script>
    <script src="{{ asset('layout/backend/js/easypiechart-data.js') }}"></script>
    <script src="{{ asset('layout/backend/js/bootstrap-datepicker.js') }}"></script>
    <script>
        !function ($) {
            $(document).on("click","ul.nav li.parent > a > span.icon", function(){
                $(this).find('em:first').toggleClass("glyphicon-minus");
            });
            $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
        }(window.jQuery);

        $(window).on('resize', function () {
            if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
        })
        $(window).on('resize', function () {
            if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
        })
    </script>
</body>
</html>