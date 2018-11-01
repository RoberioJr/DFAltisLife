/*

    Author: RobérioJR && Marvinn

*/

Private ['_ob','_cond','_img','_UltimaTex'];

_ob = _This Select 0;
_UltimaTex = "É Nois Mermo Carai!";

While  {true} Do {
    sleep 0.2;
    _cond = true;

    _img = ["IMG1","IMG2","IMG3","IMG4"] Call BIS_fnc_SelectRandom;

    If (_img IsEqualto _UltimaTex) Then {_cond = false;};

    if (_cond) Then {
        _ob setObjectTextureGlobal [0, Format["%1",_img]];
        _UltimaTex = _img;
        sleep 300;
    };
};
