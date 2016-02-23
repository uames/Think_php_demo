<?php
/**
 * @Author: 杰少pakey
 * @Email : admin@ptcms.com
 * @File  : AlipaySDK.php
 */
class AlipaySDK extends ThinkOauth {
	/**
	 * 获取requestCode的api接口
	 * 
	 * @var string
	 */
	protected $GetRequestCodeURL = 'https://mapi.alipay.com/gateway.do';
	/**
	 * API根路径
	 * 
	 * @var string
	 */
	protected $ApiBase = 'https://mapi.alipay.com/gateway.do';
	public function getRequestCodeURL() {
		$this->config ();
		$params = array (
				'_input_charset' => 'utf-8',
				'target_service' => 'user.auth.quick.login',
				'partner' => $this->AppKey,
				'request_id' => date ( 'YmdHis' ) . rand ( 1000, 9999 ),
				'return_url' => $this->Callback,
				'return_url_failed' => $this->Callback,
				'service' => 'alipay.auth.authorize' 
		);
		$params ['sign'] = $this->createSign ( $params );
		$params ['sign_type'] = 'MD5';
		return $this->GetRequestCodeURL . '?' . http_build_query ( $params );
	}
	public function getAccessToken($code = '', $extend = '') {
		$sign = $_GET ['sign'];
		unset ( $_GET ['sign_type'], $_GET ['sign'] );
		if ($sign === $this->createSign ( $_GET )) {
			$this->Token = array (
					'access_token' => $_GET ['token'],
					'openid' => $_GET ['user_id'] 
			);
			return $this->Token;
		} else {
			exit ( '签名验证失败' );
		}
	}
	protected function createSign($params) {
		ksort ( $params );
		$stringToBeSigned = "";
		$i = 0;
		foreach ( $params as $k => $v ) {
			if ($i == 0) {
				$stringToBeSigned .= "$k" . "=" . "$v";
			} else {
				$stringToBeSigned .= "&" . "$k" . "=" . "$v";
			}
			$i ++;
		}
		unset ( $k, $v );
		return md5 ( $stringToBeSigned . $this->AppSecret );
	}
	/**
	 * 组装接口调用参数 并调用接口
	 */
	public function call($api, $param = array(), $method = 'GET', $multi = false) {
		$param ['partner'] = $this->AppKey;
		$param ['sign'] = $this->createSign ( $param );
		$param ['sign_type'] = 'MD5';
		$data = $this->http ( $this->url ( $api ), $param, $method );
		return ($data);
	}
	/**
	 * 解析access_token方法请求后的返回值
	 */
	protected function parseToken($result, $extend) {
	}
	/**
	 * 获取当前授权应用的openid
	 */
	public function openid() {
		$data = $this->Token;
		if (! empty ( $data ['openid'] ))
			return $data ['openid'];
		else
			exit ( '没有获取到支付宝用户ID！' );
	}

	public function getUserInfo($accessToken,$uid,$extend){
		return array('real_name'=>$_GET['real_name']);
	}
}