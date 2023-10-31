<!DOCTYPE html>
<html lang="ko">

<head>
    <link rel="stylesheet" href="style.css">

    <title>10/31 자바 스크립트 일거임</title>
</head>

<body>
    <script>
        var i = 20;
        while (i >= 10) {
            if (i % 2 == 0) {
                document.write("<p class='blue'>" + i + "</p>");
            } else {
                document.write("<p class='red'>" + i + "</p>");
            }
            i--;
        }

    </script>

</body>

</html>
