<?php
include 'FastDelivery.php';
include 'SlowDelivery.php';
include 'DeliveryCalculator.php';

$fast = new FastDelivery("http://fastdelivery.com");
$slow = new SlowDelivery("http://slowdelivery.com");

$calculator = new DeliveryCalculator();

$calculator->addService($fast);
$calculator->addService($slow);

$results = $calculator->calculateForAllServices("sourceKladrCode", "targetKladrCode", 5.0);

print_r($results);

