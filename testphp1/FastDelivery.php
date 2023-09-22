<?php
include_once 'DeliveryServiceInterface.php';
class FastDelivery implements DeliveryServiceInterface {
    private $base_url;
    private $conn;
    public function __construct($base_url) {
        $this->base_url = $base_url;
        $database = new Database();
        $this->conn = $database->getConnection();
    }

    public function calculateDelivery($sourceKladr, $targetKladr, $weight): array {
        $query = "INSERT INTO fastdelivery (sourceKladr, targetKladr, weight) VALUES (:sourceKladr, :targetKladr, :weight)";
        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(":sourceKladr", $sourceKladr);
        $stmt->bindParam(":targetKladr", $targetKladr);
        $stmt->bindParam(":weight", $weight);

        $stmt->execute();
        // Example
        $response = [
            'price' => 200.5,
            'period' => 3,
            'error' => ""
        ];

        return [
            'price' => $response['price'],
            'date' => date("Y-m-d", strtotime("+" . $response['period'] . " days")),
            'error' => $response['error']
        ];
    }
}