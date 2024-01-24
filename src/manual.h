typedef char    *string;
#define QUOTE(...) #__VA_ARGS__

const string MANUAL = QUOTE(\n\n\n\n\n\n\n\n\n
--------------------------------------------------------------------------------------------------------------------------------------------\n
|`DEVICE`MANUAL````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|``````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`REGISTERS:```````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`rA,`rB,`rC,`...`rO,`rP``````````````````````````````````````16`registers`provided,`each`a`16-bit`unsigned`int,```````````````````````````|\n
|`all`initialized`to`zero.`````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|``````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`MEMORY:``````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`131072kb`of`memory``````````````````````````````````````````0-based`indexing,`the`first`16384``bytes`are`dedicated`to`system`code.```````|\n
|``````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`ADDRESSING`MODES:````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`1`CONSTANT`<constant>```````````````````````````````````````Constant`number.`````````````````````````````````````````````````````````````|\n
|`01`REGISTER`<register>``````````````````````````````````````Value`taken`from`said`register.``````````````````````````````````````````````|\n
|`00`MEMORY```<register>``````````````````````````````````````Value`from`memory`address`in`register.```````````````````````````````````````|\n
|`data`is`just`addr`without`consts`or`zeros````````````````````````````````````````````````````````````````````````````````````````````````|\n
|``````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`INSTRUCTIONS:````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`00`HLT``````````````````````````````````````````````````````Stops`the`program`execution.`````````````````````````````````````````````````|\n
|`01`MOV`<from:data>`<to:addr>````````````````````````````````Moves`data`between`regsiters,`Memory`addresses`and`constants.````````````````|\n
|`10`JUMP`<on:`zero/less/more>`<to:adrr>``````````````````````Jumps`on`said`conditions`(or`gate)`to`said`address.``````````````````````````|\n
|`11`MATH`<op:`+/N>`<left:data>`<right:data>`<dest:addr>``````Performs`math`on`two`numbers`and`puts`the`result`in`the`destination.`````````|\n
|``````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`ENCODING:````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`Addressing`mode:`[2]`````````````````[28]````````````````````````````````````````````````````````````````````````````````````````````````|\n
|``````````````````^`address`mode``````^`value`{0`..`268435456}````````````````````````````````````````````````````````````````````````````|\n
|``=`2`bytes```````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|`Instruction:`[2]`+``````````````[62]`````````````````````````````````````````````````````````````````````````````````````````````````````|\n
|``````````````^`instruction``````^`data```````````````````````````````````````````````````````````````````````````````````````````````````|\n
--------------------------------------------------------------------------------------------------------------------------------------------\n
\n\n\n\n\n\n\n\n\n
);