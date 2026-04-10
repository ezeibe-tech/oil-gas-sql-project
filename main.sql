WITH production_summary AS (
    SELECT 
        w.well_id,
        w.well_name,
        SUM(p.oil_barrels) AS total_oil_produced,
        SUM(p.gas_mcf) AS total_gas_produced
    FROM wells w
    JOIN production p 
        ON w.well_id = p.well_id
    GROUP BY w.well_id, w.well_name
)

SELECT 
    ps.well_id,
    ps.well_name,
    ps.total_oil_produced,
    ps.total_gas_produced,
    COUNT(s.shipment_id) AS total_shipments,
    SUM(s.barrels_shipped) AS total_shipped
FROM production_summary ps
LEFT JOIN production p
    ON ps.well_id = p.well_id
LEFT JOIN shipments s
    ON s.production_id = p.production_id
GROUP BY 
    ps.well_id,
    ps.well_name,
    ps.total_oil_produced,
    ps.total_gas_produced
ORDER BY ps.total_oil_produced DESC;