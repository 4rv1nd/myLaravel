<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php $new_message = "Helloooooo"; ?>
    <x-alert title="Home page title"/>
    <x-notification type="message" :message="$new_message" />
</body>
</html>