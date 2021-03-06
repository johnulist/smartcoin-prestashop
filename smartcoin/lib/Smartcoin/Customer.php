<?php
namespace Smartcoin;

  class Customer extends \Smartcoin\Object {
  	public static function get_request_url() {
      return "/v1/customers/";
    }

  	public static function retrieve($id=null) {
  		$url = self::get_request_url();
  		$r = \Smartcoin\APIRequest::request('get',$url.$id, \Smartcoin\Smartcoin::access_keys());
      return new Customer(json_decode($r[0],true), \Smartcoin\Smartcoin::access_keys());
  	}

  	public function subscriptions(){
  		return new \Smartcoin\Subscription($this->id);
  	}

    public function update_card($params) {
      $url = self::get_request_url();
      $r = \Smartcoin\APIRequest::request('post',$url.$this->id, \Smartcoin\Smartcoin::access_keys(), $params);
      $this->refresh_object(json_decode($r[0],true),$this->api_keys); 
    }
  }

?>