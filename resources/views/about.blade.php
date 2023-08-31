<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <x-alert title="About page title"/>

    <?php $new_message = "This not true"; ?>
    <x-notification type="alert" :message="$new_message" />

    <x-test data="this is another test description"/>

    <x-example>
        
    </x-example>
</body>
</html>