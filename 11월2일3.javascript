<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>11월2일 자바스크립트</title>
</head>

<body>
    <script>
        let arr = [99, 99, 88, 77]
        for (let i = 0; i < arr.length; i++) {
            document.write(`${i}: ${arr[i]} <br>`)
        }
        for (let i in arr) {
            document.write(`${i}: ${arr[i]} <br>`)
        }
        let exam2 = {
            'kor': 90,
            'eng': 100,
            'math': 99,
            'DB': 80
        }
        for (let i in exam2) {
            if (i == 'DB')
                break
            document.write(`${i}: ${exam2[i]} <br>`)

        }
    </script>

</body>

</html>
