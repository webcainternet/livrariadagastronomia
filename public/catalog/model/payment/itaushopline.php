<?php 
class ModelPaymentitaushopline extends Model {
  	public function getMethod($address,$total) {
		if ($this->config->get('itaushopline_status')) {
      		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('itaushopline_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");
			if($total<$this->config->get('itaushopline_minimo')){
				return false;			}
			
			if (!$this->config->get('itaushopline_geo_zone_id')) {
        		$status = TRUE;
      		} elseif ($query->num_rows) {
      		  	$status = TRUE;
      		} else {
     	  		$status = FALSE;
			}	
      	} else {
			$status = FALSE;
		}
		
		$method_data = array();
	
		if ($status) {  
      		$method_data = array( 
        		'code'         => 'itaushopline',
				'terms'      => '',
        		'title'      => $this->config->get('itaushopline_nome'),
				'sort_order' => $this->config->get('itaushopline_sort_order')
      		);
    	}
   
    	return $method_data;
  	}
}
?>