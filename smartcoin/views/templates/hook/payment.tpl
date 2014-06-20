<div class="payment_module smartcoin-payment-16">
	<h3 class="smartcoin_title">{l s='Pay by credit / ' mod='smartcoin'} <img alt="" src="{$module_dir|escape:htmlall:'UTF-8'}img/secure-icon.png" /></h3>
	<div id="smartcoin-ajax-loader"><img src="{$module_dir|escape:htmlall:'UTF-8'}img/ajax-loader.gif" alt="" /> {l s='Transaction in progress, please wait.' mod='smartcoin'}</div>
	<form action="{$validation_url|escape:htmlall:'UTF-8'}" method="POST" id="smartcoin-payment-form" >
		<div class="smartcoin-payment-errors">{if isset($smartcoin_error)}{$smartcoin_error|escape:htmlall:'UTF-8'}{/if}</div>

			<a name="smartcoin_error" style="display:none"></a>
		<div class="smartcoin-card-deleted"></div>
		<label>{l s='Card Number' mod='smartcoin'}</label><br />
		<input type="text" size="20" autocomplete="off" class="smartcoin-card-number" />
			<img class="cc-icon disable" rel="visa" alt="" src="{$module_dir|escape:htmlall:'UTF-8'}img/cc-visa.png" />
			<img class="cc-icon disable" rel="mastercard" alt="" src="{$module_dir|escape:htmlall:'UTF-8'}img/cc-mastercard.png" />
			<img class="cc-icon disable" rel="discover" alt="" src="{$module_dir|escape:htmlall:'UTF-8'}img/cc-discover.png" />
			<img class="cc-icon disable" rel="amex" alt="" src="{$module_dir|escape:htmlall:'UTF-8'}img/cc-amex.png" />
			<img class="cc-icon disable" rel="jcb" alt="" src="{$module_dir|escape:htmlall:'UTF-8'}img/cc-jcb.png" />
			<img class="cc-icon disable" rel="dinersclub" alt="" src="{$module_dir|escape:htmlall:'UTF-8'}img/cc-diners.png" />

		<div class="block-left">
			<label>{l s='CVC' mod='smartcoin'}</label><br />
			<input type="text" size="4" autocomplete="off" class="smartcoin-card-cvc" />
			<a href="javascript:void(0)" class="smartcoin-card-cvc-info" style="border: none;">
				{l s='What\'s this?' mod='smartcoin'}
				<div class="cvc-info">
				{l s='The CVC (Card Validation Code) is a 3 or 4 digit code on the reverse side of Visa, MasterCard and Discover cards and on the front of American Express cards.' mod='smartcoin'}
				</div>
			</a>
		</div>
		<div class="clear"></div>
		<label>{l s='Expiration (MM/YYYY)' mod='smartcoin'}</label><br />
		<select id="month" name="month" class="smartcoin-card-expiry-month">
			<option value="01">{l s='January' mod='smartcoin'}</option>
			<option value="02">{l s='February' mod='smartcoin'}</option>
			<option value="03">{l s='March' mod='smartcoin'}</option>
			<option value="04">{l s='April' mod='smartcoin'}</option>
			<option value="05">{l s='May' mod='smartcoin'}</option>
			<option value="06">{l s='June' mod='smartcoin'}</option>
			<option value="07">{l s='July' mod='smartcoin'}</option>
			<option value="08">{l s='August' mod='smartcoin'}</option>
			<option value="09">{l s='September' mod='smartcoin'}</option>
			<option value="10">{l s='October' mod='smartcoin'}</option>
			<option value="11">{l s='November' mod='smartcoin'}</option>
			<option value="12">{l s='December' mod='smartcoin'}</option>
		</select>
		<span> / </span>
		<select id="year" name="year" class="smartcoin-card-expiry-year">
			{assign var='startyear' value=$smarty.now|date_format:"%Y"}
            		{assign var='endyear' value=($smarty.now|date_format:"%Y" + 10)}

            		{for $i=($startyear+1) to $endyear}
                		<option value="{$i}">{$i}</option>
            		{/for}
        </select>
		<br />
		<button type="submit" class="smartcoin-submit-button">{l s='Submit Payment' mod='smartcoin'}</button>
	</form>
	<div id="smartcoin-translations">
		<span id="smartcoin-wrong-cvc">{l s='Wrong CVC.' mod='smartcoin'}</span>
		<span id="smartcoin-wrong-expiry">{l s='Wrong Credit Card Expiry date.' mod='smartcoin'}</span>
		<span id="smartcoin-wrong-card">{l s='Wrong Credit Card number.' mod='smartcoin'}</span>
		<span id="smartcoin-please-fix">{l s='Please fix it and submit your payment again.' mod='smartcoin'}</span>
		<span id="smartcoin-card-del">{l s='Your Credit Card has been successfully deleted, please enter a new Credit Card:' mod='smartcoin'}</span>
		<span id="smartcoin-card-del-error">{l s='An error occured while trying to delete this Credit card. Please contact us.' mod='smartcoin'}</span>
	</div>
</div>