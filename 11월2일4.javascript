<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>11월2일 자바스크립트</title>
</head>

<body>
    <h2>구구단 출력하기(1~9단까지)</h2>
    <script>
        for (let i = 1; i < 10; i++) {
            document.write(`<h2>${i}단</h2>`)
            document.write("<br>")
            for (let j = 1; j < 10; j++) {
                document.write(`${i}*${j}=${i * j}   `)
            }
            document.write("<br>")
        }

    </script>

</body>

</html>
