<?php
class ModelShippingItem extends Model {
	function getQuote($address) {
		$this->language->load('shipping/item');

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('item_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");

		if (!$this->config->get('item_geo_zone_id')) {
			$status = true;
		} elseif ($query->num_rows) {
			$status = true;
		} else {
			$status = false;
		}

		$method_data = array();

		if ($status) {
			$items = 0;
			$pesototal = 0;
			$precototal = 0;

			foreach ($this->cart->getProducts() as $product) {
				if ($product['shipping']) {
					if ($product["weight_class_id"] == 1) {
						$pesototal += $product['weight'] * 1000;
					} else {
						$pesototal += $product['weight'];	
					}
					
				}
			}

			if ($pesototal < 20 )							{ $precototal = 2.53; }
			if ($pesototal > 20 	&& $pesototal <= 50)	{ $precototal = 2.71; }
			if ($pesototal > 50 	&& $pesototal <= 100)	{ $precototal = 2.97; }
			if ($pesototal > 100 	&& $pesototal <= 150)	{ $precototal = 3.24; }
			if ($pesototal > 150 	&& $pesototal <= 200)	{ $precototal = 3.53; }
			if ($pesototal > 200 	&& $pesototal <= 250)	{ $precototal = 3.81; }
			if ($pesototal > 250 	&& $pesototal <= 300)	{ $precototal = 4.06; }
			if ($pesototal > 300 	&& $pesototal <= 350)	{ $precototal = 4.33; }
			if ($pesototal > 350 	&& $pesototal <= 400)	{ $precototal = 4.62; }
			if ($pesototal > 400 	&& $pesototal <= 450)	{ $precototal = 4.86; }
			if ($pesototal > 450 	&& $pesototal <= 500)	{ $precototal = 5.13; }
			if ($pesototal > 500 	&& $pesototal <= 550)	{ $precototal = 5.37; }
			if ($pesototal > 550 	&& $pesototal <= 600)	{ $precototal = 5.62; }
			if ($pesototal > 600 	&& $pesototal <= 650)	{ $precototal = 5.85; }
			if ($pesototal > 650 	&& $pesototal <= 700)	{ $precototal = 6.09; }
			if ($pesototal > 700 	&& $pesototal <= 750)	{ $precototal = 6.33; }
			if ($pesototal > 750 	&& $pesototal <= 800)	{ $precototal = 6.58; }
			if ($pesototal > 800 	&& $pesototal <= 850)	{ $precototal = 6.82; }
			if ($pesototal > 850 	&& $pesototal <= 900)	{ $precototal = 7.06; }
			if ($pesototal > 900 	&& $pesototal <= 950)	{ $precototal = 7.29; }
			if ($pesototal > 950 	&& $pesototal <= 1000)	{ $precototal = 7.53; }
			if ($pesototal > 1000 )							{ 
				$precototal = $pesototal / 1000 * 4.2 - 4.2 + 7.53;
			}


			/* Tabela de custos
				Até 20	2.53
				Mais de 20 até 50	2.71
				Mais de 50 até 100	2.97
				Mais de 100 até 150	3.24
				Mais de 150 até 200	3.53
				Mais de 200 até 250	3.81
				Mais de 250 até 300	4.06
				Mais de 300 até 350	4.33
				Mais de 350 até 400	4.62
				Mais de 400 até 450	4.86
				Mais de 450 até 500	5.13
				Mais de 500 até 550	5.37
				Mais de 550 até 600	5.62
				Mais de 600 até 650	5.85
				Mais de 650 até 700	6.09
				Mais de 700 até 750	6.33
				Mais de 750 até 800	6.58
				Mais de 800 até 850	6.82
				Mais de 850 até 900	7.06
				Mais de 900 até 950	7.29
				Mais de 950 até 1000	7.53

				var_dump($pesototal);
				var_dump($precototal); exit;
			*/
			

			$quote_data = array();

			$quote_data['item'] = array(
				'code'         => 'item.item',
				'title'        => $this->language->get('text_description'),
				'cost'         => $precototal,
				'tax_class_id' => $this->config->get('item_tax_class_id'),
				'text'         => $this->currency->format($this->tax->calculate($precototal, $this->config->get('item_tax_class_id'), $this->config->get('config_tax')))
			);

			$method_data = array(
				'code'       => 'item',
				'title'      => $this->language->get('text_title'),
				'quote'      => $quote_data,
				'sort_order' => $this->config->get('item_sort_order'),
				'error'      => false
			);
		}

		//var_dump($method_data); exit;
		return $method_data;
	}
}
?>