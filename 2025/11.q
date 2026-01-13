i:read0`:2025/input/11t.txt;
d:(!). flip`$" "vs/:/:": "vs/:i;
data:()
fn:{[deviceList;thisDevice]
 if[thisDevice~`out;:deviceList,thisDevice];
 nextDevice:d[thisDevice];
 `data upsert enlist`devicCount`deviceList`thisDevice`nextDevice!(count deviceList;deviceList;thisDevice;nextDevice);
 if[0=count nextDevice;:()];
 .z.s[raze deviceList,thisDevice;] each distinct nextDevice
 }
res:fn[();`you];
sum `out in/: data[`nextDevice]