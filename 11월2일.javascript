<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>11월2일 자바스크립트</title>
</head>

<body>
    <script>
        //let은 재선언이 불가능하다 var는 재선언 ㄱㄴ
        let korean = 90;
        let english = 90;
        let math = 28;
        let db = 100;

        document.write(`국어(kor):${korean}<br>`);
        document.write(`영어(eng):${english}<br>`);
        document.write("수학(math): " + math + "<br>");
        document.write("데이터베이스(DB): " + db + "<br>");
        document.write("평균: " + (korean + english + math + db) / 4);
    </script>

</body>

</html>
