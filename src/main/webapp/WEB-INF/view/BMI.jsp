<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>BMI Calculator for App</title>

 <!--css file--> 
 
    <link href="static/css/style.css" rel="stylesheet">
</head>

<body>
    <div class="header">
        <h1>Fitness and Nutrition</h1>
    </div>

    <div class="bg-img">

        <div class="bmi-container">
            <h3>Body Mass Index Calculator</h3>
            <form name="bmiForm">

                Enter your Age : <input type="number" name="age" size="2" /><br>

                Your Gender : <input type="radio" name="gender" value="male" size="10" />Male

                <input type="radio" name="gender" value="female" size="10" />Female<br>

                Your Weight (kg): <input type="text" name="weight" size="10" /><br>

                Your Height (cm): <input type="text" name="height" size="10" /><br>

                <input type="button" class="btn" value="Calculate BMI" onClick="calculateBmi()" /><br>

                Your BMI: <input type="text" name="bmi" size="10" /><br>

                This Means: <input type="text" name="meaning" size="25" /><br>
                <input type="reset" class="btn" value="Reset" />
            <div class="plans">
            <p>Diet, Workout and Recipes for Above 80 kg <a href="planA">click here</a></p>
            <p>Diet, Workout and Recipes for Below 80 kg <a href="planB">click here</a></p>
        </div>
            </form>
        </div>
      
    </div>
    <script type="text/javascript">

        function calculateBmi() {
            var weight = document.bmiForm.weight.value
            var height = document.bmiForm.height.value
            if (weight > 0 && height > 0) {
                var finalBmi = weight / (height / 100 * height / 100)
                document.bmiForm.bmi.value = finalBmi
                if (finalBmi < 18.5) {
                    document.bmiForm.meaning.value = "That you are too thin."
                }
                if (finalBmi > 18.5 && finalBmi < 25) {
                    document.bmiForm.meaning.value = "That you are healthy."
                }
                if (finalBmi > 25) {
                    document.bmiForm.meaning.value = "That you have overweight."
                }
            }
            else {
                alert("Please Fill in everything correctly")
            }
        }
    </script>
</body>

</html>
