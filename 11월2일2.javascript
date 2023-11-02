<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>11월2일 자바스크립트</title>
</head>

<body>
    <script>
        //let은 재선언이 불가능하다 var는 재선언 ㄱㄴ
        let exam = [99, 99, 88, 77];
        document.write(`국어(kor):${exam[0]}<br>`);
        document.write(`영어(eng):${exam[1]}<br>`);
        document.write(`수학(math):${exam[2]}<br>`);
        document.write(`데이터베이스(DB):${exam[3]}<br>`);
        document.write(`평균:${(exam[0] + exam[1]
            + exam[2] + exam[3])
            / exam.length}`);

        //객체리터널?
        let exam2 = {
            'kor': 90,
            'eng': 100,
            'math': 99,
            'DB': 80
        }
        document.write(`국어(kor):${exam2['kor']}<br>`);
        document.write(`영어(eng):${exam2['eng']}<br>`);
        document.write(`수학(math):${exam2['math']}<br>`);
        document.write(`데이터베이스(DB):${exam2['DB']}<br>`);
        document.write(`평균:${(exam2['kor'] + exam2['eng']
            + exam2['math'] + exam2['DB'])
            / 4}`);

    </script>

</body>

</html>
