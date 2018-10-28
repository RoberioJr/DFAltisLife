/*

    Author: RobérioJR

*/

_CI = ppEffectCreate ["ColorInversion", 1];
_WD = ppEffectCreate ["WetDistortion", 2];
_CA = ppEffectCreate ["ChromAberration", 3];

[] Spawn {
    While {True} Do {
	    Sleep 6;
		If (RJ_NivelAlcool > 0) Then {
		    RJ_NivelAlcool = RJ_NivelAlcool - 1;
		};
	};
};

While {True} Do {
_beb = 0;
    If ()
    If (RJ_NivelAlcool > 20) Then {
        [_CA] ppEffectEnable true;
		_beb = 20;
    };
	If (RJ_NivelAlcool > 50 && _beb IsEqualTo 20) Then {
        [_CA] ppEffectEnable true;
		resetCamShake;
		enableCamShake true; 
        addCamShake [9, 9999, 0.5];
		_beb = 50;
    };
	If (RJ_NivelAlcool > 75) Then {
	    [_CA,_WD,_CI] ppEffectEnable true;
	    resetCamShake;
	    enableCamShake true; 
        addCamShake [48, 9999, 0.5];
		_beb = 75;
    };
	
	If (RJ_NivelAlcool < 35 && _beb IsEqualTo 50) Then {
	    [_WD,_CI] ppEffectEnable false;
		enableCamShake false;
		resetCamShake;
	};
	
	If (RJ_NivelAlcool < 65 && _beb IsEqualTo 75) Then {
	    [_WD,_CI] ppEffectEnable false;
		enableCamShake false;
		resetCamShake;
		enableCamShake true; 
        addCamShake [9, 9999, 0.5];
	};
	
	If (RJ_NivelAlcool < 15 && _beb IsEqualTo 20) Then {
	    [_CA,_WD,_CI] ppEffectEnable false;
		enableCamShake false;
		resetCamShake;
		_beb = 0;
	};
	
    WaitUntil {RJ_NivelAlcool > 0}; 
    Sleep 4;
};


