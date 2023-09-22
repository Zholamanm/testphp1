<?php
include_once 'DeliveryServiceInterface.php';
include_once 'Database.php';
class SlowDelivery implements DeliveryServiceInterface {
    private $base_url;
    private $conn;
    public function __construct($base_url) {
        $this->base_url = $base_url;
        $database = new Database();
        $this->conn = $database->getConnection();
    }

    public function calculateDelivery($sourceKladr, $targetKladr, $weight): array {
        $query = "INSERT INTO slowdelivery (sourceKladr, targetKladr, weight) VALUES (:sourceKladr, :targetKladr, :weight)";
        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(":sourceKladr", $sourceKladr);
        $stmt->bindParam(":targetKladr", $targetKladr);
        $stmt->bindParam(":weight", $weight);

        $stmt->execute();
        // Example
        $response = [
            'coefficient' => 1.5,
            'date' => '2023-09-30',
            'error' => ""
        ];

        return [
            'price' => 150 * $response['coefficient'],
            'date' => $response['date'],
            'error' => $response['error']
        ];
    }
}