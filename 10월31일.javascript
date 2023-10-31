<!DOCTYPE html>
<html lang="ko">

<head>

    <title>10/31 자바 스크립트 일거임</title>
</head>

<body>
    <script>
        var username = prompt("이름 입력", "양준석")
        if (username) {
            document.write("<h2>" + username + "님 안녕하세요</h2>")
        }
        else {
            document.write("<h2>새로고침 후 이름을 다시 입력")
        }

    </script>

</body>

</html>
