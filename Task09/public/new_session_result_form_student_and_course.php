<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>ДОБАВЛЕНИЕ НОВОГО РЕЗУЛЬТАТА СЕССИИ</title>
</head>

<body>

<?php
$pdo = new PDO('sqlite:../data/students.db');

$student_id = $_GET['student_id'];
$query1 = "select id, surname, name from students where id = {$student_id};";
$statement = $pdo->query($query1);
$rows = $statement->fetchAll();
$student = $rows;
$statement->closeCursor();
?>

<form action="index.php">
        <button type="submit" style="height:40px;width:100px">В меню</button>
</form><br>

<form method="post" action="new_session_result_form_subject.php" enctype="application/x-www-form-urlencoded">
    <fieldset>
        <h3>Студент:
            <select style="width: 200px;" name = "id">
            <?php foreach ($student as $row) { ?>
                <option value= <?= $row['id']." ".$row['surname']." ".$row['name']  ?>>
                    <?= $row['id']." ".$row['surname']." ".$row['name']  ?>
                </option>
            <?php } ?>
            </select>
        </h3>
        <hr>
        <h3>Курс:
            <li><input required class="radio_b" type="radio" name="course" value="1"> 1</li>
            <li><input required class="radio_b" type="radio" name="course" value="2"> 2</li>
            <li><input required class="radio_b" type="radio" name="course" value="3"> 3</li>
            <li><input required class="radio_b" type="radio" name="course" value="4"> 4</li>
        </h3>
        <hr>
        <h3>Семестр:
            <li><input required class="radio_b" type="radio" name="semester" value="1"> 1</li>
            <li><input required class="radio_b" type="radio" name="semester" value="2"> 2</li>
        </h3>
    </fieldset>

    <p><button style="height:60px;width:100px"><h4>Выбрать<h4></button></p>

</form>
</body>
</html>