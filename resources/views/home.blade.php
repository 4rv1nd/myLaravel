<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <x-alert title="Home page title"/>

    <?php $new_message = "Helloooooo"; ?>
    <x-notification type="message" :message="$new_message" />

    <x-test data="this is a test description"/>
</body>
</html>