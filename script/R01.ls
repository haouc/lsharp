//清除画面
Layer.clear(-);
//RPG地图设定开始
RPGMap.start();
//RPG地图初始化开始
initialization.start;
//地图数据设定，包括地形和图片等
addMap(r01.rmap);
//加入人物角色，参数以此为 人物index,动作action,方向direction,坐标x,坐标y,是否可控ishero
RPGCharacter.add(1,stand,right,52,19,true);
RPGCharacter.add(2,stand,down,52,13,false);
RPGCharacter.add(3,stand,down,60,15,false);
RPGCharacter.add(4,stand,up,35,40,false);
RPGCharacter.add(5,stand,left,35,7,false);
//RPG地图初始化结束
initialization.end;
//RPG地图中各函数初始化开始
function.start;
function mapR02();
	//清空画面
	Layer.clear(-);
	//读取下一地图脚本
	Load.script(script/R02.ls);
endfunction;
//函数名称为“characterclick”+人物序号的函数，功能是当点击到某人物的时候，会调用相应的函数
function characterclick2();
	RPGTalk.set(2,0,你知道lufy吗，听说那家伙除了做游戏，啥都不会。);
	RPGTalk.set(1,0,怪不得啊，哈哈哈。);
endfunction;
function characterclick3();
	RPGTalk.set(3,0,。。。。。。);
	RPGTalk.set(1,0,少年，你能帮我捡肥皂吗？);
endfunction;
function characterclick4();
	RPGTalk.set(4,0,请不要跟我说话，我只是过来打酱油的。);
	RPGTalk.set(1,0,不跟我说话是因为看不起我吗？);
endfunction;
function characterclick5();
	RPGTalk.set(5,0,你现在进入的是由lufylegend.js制作的一个虚幻的游戏脚本世界。目前正在执行是对话脚本。);
endfunction;
//RPG地图中各函数初始化结束
function.end;
//RPG地图中实时判定部分
loop.start;
//添加地图坐标区域判定，参数（人物序号，起始坐标x，起始坐标y，终了坐标x，终了坐标y，触发函数名称）
RPGCharacter.atCoordinate(1,43,27,45,29,mapR02);
loop.end;
//RPG地图设定结束
RPGMap.end();
RPGItem.add(entrance,44,28);