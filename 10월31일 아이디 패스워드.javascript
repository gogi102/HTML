<!DOCTYPE html>
<html lang="ko">

<head>

    <title>10/31 자바 스크립트 일거임</title>
</head>

<body>
    <script>
        var id = "yks071210";
        var password = "as071210";

        var user_id = prompt("아이디를 입력하세요", "");
        var user_password = prompt("비밀번호를 입력하세요", "");

        if (id == user_id) {
            if (password == user_password) {
                document.write(user_id + "님 반갑습니다");
            } else {
                alert("비밀번호가 일치하지 않습니다");
                location.reload();
            }
        } else {
            alert("아이디가 일치하지 않습니다");
            location.reload();
        }

    </script>

</body>

</html>
