<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php
    $db = new mysqli('localhost', 'root', '', 'joins_demo');
    $db->set_charset('utf8');

    $sql = "SELECT * FROM idea WHERE idea_id = 1";
    $result_idea = $db->query($sql);

    $sql = "SELECT idea.title,idea.description, comment.user_id, comment.comment FROM idea
INNER JOIN comment
ON idea.idea_id = 1";
    $result = $db->query($sql);

    // var_dump($result);
    // var_dump($result->fetch_all(MYSQLI_ASSOC));

    $row_idea = $result_idea->fetch_assoc();
    $user_id = $row_idea['user_id'];
    $sql = "SELECT * FROM user WHERE user_id = $user_id";

    $user_data = $db->query($sql);
    $user_row = $user_data->fetch_assoc();

    $category_id = $row_idea['category_id'];
    $sql = "SELECT * FROM category WHERE category_id = {$category_id}";
    $result_category = $db->query($sql);
    $category_row = $result_category->fetch_assoc();

    echo "<h1>{$row_idea["title"]}</h1>";
    echo "<h2>Category: {$category_row["category"]}</h2>";
    echo "<h2>Created by: {$user_row["first_name"]}</h2>";
    echo "<p>{$row_idea["description"]}</p>";
    echo "<h2>Comments</h2>";
    while ($row = $result->fetch_assoc()) {
        // find out who the user is from the user table
        $sql = "SELECT * from user WHERE user_id = {$row["user_id"]}";
        $user_query = $db->query($sql);
        $user_data = $user_query->fetch_assoc();
        echo "<h3>Comment By: " . $user_data["first_name"] . ' ' . $user_data["last_name"] . "</h3>";

        echo "<p> {$row["user_id"]} {$row["comment"]} </p><br>";
    }
    ?>
</body>

</html>