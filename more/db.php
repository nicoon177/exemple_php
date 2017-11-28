<?php

$link = mysqli_connect('localhost','root','','football');

if(mysqli_connect_errno())
{
    echo "Помилка підключення";
    exit();
}

