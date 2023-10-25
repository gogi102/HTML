<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Document</title>
</head>

<body>
    <script>
        var height2;
        var weight;
        var height;//자바스크립트의 자료형은 var로 통일
        weight = prompt("몸무게")
        height = prompt("키")//prompt는 입력받는거 예:파이썬에 input 자바에 Scanner과 같다
        height2 = height/100;
        var bmi;
        bmi = weight / (height2 * height2)
        if (bmi < 18.5) {
            document.write("저체중")//document.write는 출력하는거 예:파이썬에 print 자바에 System.out.println과 같다
        }
        else if (bmi < 25) {
            document.write("건강")
        }
        else if (bmi < 30) {
            document.write("과체중")
        }
        else if (bmi >= 30) {
            document.write("(´▽`ʃ♡ƪ)")
            document.write("<h2>비만</h2>")//안에다가 html의 태그를 넣을 수 있음
        }
    </script>
</body>

</html>
