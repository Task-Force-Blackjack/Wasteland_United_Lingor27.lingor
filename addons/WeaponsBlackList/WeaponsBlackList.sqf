// No Thermal Weapon Script : By MarKeR

_layer = 85125;
_block = false;

_Weapons = ["SCAR_L_STD_EGLM_TWS","m8_tws","m8_tws_sd","m107_TWS_EP1","AKS_74_GOSHAWK","BAF_AS50_TWS","BAF_L85A2_RIS_SUSAT","PMC_AS50_TWS","M249_TWS_EP1"];

while {true} do
{
        if ({player hasWeapon _x} count _Weapons > 0) then
{
        if (!_block) then
        {
					_layer cutText ["You cannot use this weapon. Use Gear Menu To Drop It!", "BLACK OUT"];
					_block = true;
		};
}
else
{
         if (_block) then
         {
				_layer cutText ["", "PLAIN"];
				_block = false;
				};
};
sleep 1;
};

_layer = 85125;
_block = false;