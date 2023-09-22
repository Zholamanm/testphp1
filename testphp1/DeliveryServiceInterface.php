<?php
interface DeliveryServiceInterface {
    public function calculateDelivery($sourceKladr, $targetKladr, $weight): array;
}

