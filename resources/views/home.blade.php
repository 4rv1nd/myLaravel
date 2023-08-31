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

    <x-example>
        <h1>slot static heading</h1>
    </x-example>
    
    
    <x-example1>
        <!-- <x-slot name="head">old named heding</x-slot>
        <x-slot name="pera">old named pera</x-slot> -->
        <x-slot:head>new 9 named heding</x-slot>
        <x-slot:pera>new 9 named pera</x-slot>
    </x-example1>
</body>
</html>