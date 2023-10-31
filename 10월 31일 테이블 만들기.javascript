<!DOCTYPE html>
<html lang="ko">

<head>
    <link rel="stylesheet" href="style.css">

    <title>10/31 자바 스크립트 일거임</title>
</head>

<body>
    <script>
        var num = 1;

        document.write("<table border = '1'>")

        for (var i = 0; i < 5; i++) {
            document.write("<tr>")

            for (var j = 0; j < 5; j++) {
                document.write("<td>" + (num++) + "</td>")
            }
            document.write("</tr>")
        }

        document.write("</table>")
    </script>

</body>

</html>
