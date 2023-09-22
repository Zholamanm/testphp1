<?php
include_once 'DeliveryServiceInterface.php';
class DeliveryCalculator {
    private $services = [];

    public function addService(DeliveryServiceInterface $service) {
        $this->services[] = $service;
    }

    public function calculateForAllServices($sourceKladr, $targetKladr, $weight): array {
        $results = [];
        foreach ($this->services as $service) {
            $results[] = $service->calculateDelivery($sourceKladr, $targetKladr, $weight);
        }
        return $results;
    }
}
