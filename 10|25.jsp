<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Document</title>
</head>

<body>
    <script>
        var weight;
        var height;
        weight = prompt("몸무게")
        height = prompt("키")
        var bmi;
        bmi = weight / (height * height)
        if (bmi < 18.5) {
            document.write("저체중")
        }
        else if (bmi < 25) {
            document.write("건강")
        }
        else if (bmi < 30) {
            document.write("과체중")
        }
        else if (bmi >= 30) {
            document.write("(´▽`ʃ♡ƪ)")
            document.write("<h2>비만</h2>")
        }
    </script>
</body>

</html>
