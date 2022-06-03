_thislist = _this select 0;

while {count _thislist != 0} do {
    _countEnemies = 0;
    {
        if (side _x == east && (_x distance myTrigger < 60) && Alive _x) then {
            _countEnemies = _countEnemies + 1;
        }
    } forEach allunits;
    
    if (_countEnemies < 5) then {
        _randomPos = [[[position myTrigger, 30]], []] call BIS_fnc_randomPos;
        _group = [_randomPos, east, 1] call BIS_fnc_spawngroup;
    };
    
    sleep 1;
};