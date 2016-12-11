/*Javascript compiler for my vhdl single cycle CPU mips
assembly instructions*/

function compile(mips_code){
	var complete = [];
	//var cm = 1;
	var code_lines = ((mips_code.toLowerCase()).trim()).split("\n");
	for(var i = 0; i<code_lines.length;i++){
		
		if(code_lines[i].indexOf("#") >= 0){
			code_lines[i] = code_lines[i].replace(code_lines[i].substring(code_lines[i].indexOf("#"),code_lines[i].length),"");
		}
		code_lines[i] = code_lines[i].trim();
		if(code_lines[i] == ""){
			//code_lines.splice(i,1);
			continue;
		}
		var itype = 0;
		console.log(i+1 + ": " + code_lines[i]);
		code_lines[i] = code_lines[i].trim();
		for(var j=0; j<CONVERSION_TABLE.length;j++){
			//do replacement here
			//if i-type
			if(itype == 0 && (code_lines[i].indexOf('i') >= 0 || code_lines[i].indexOf('b') == 0)){
				itype = 1;
				var sam = code_lines[i].split(' ');
				var t = dec2bin(parseInt(sam[sam.length-1]));
				//console.log(t);
				//var q = new RegExp("\\b" + sam[sam.length-1] + "\\b");
				
				code_lines[i] = sam.join();
				var z = new RegExp("\\b" + sam[sam.length-1]+ "\\b")
				code_lines[i] = code_lines[i].replace(z," "+t.substring(16,32));
				
				//for these cases need to fill in blank for rs 
				if(code_lines[i].indexOf("l") == 0){
					//code_lines[i] = code_lines[i].substring(0,2) + " r0, "+ code_lines[i].substring(3,8)+ t.substring(16,32);
					code_lines[i] = sam[0] + " r0, " + sam[1] + " " +t.substring(16,32);
				}
				else{
					code_lines[i] = sam[0] +" "+ sam[1] + sam[2] + t.substring(16,32);
				}
			}
			var t = new RegExp("\\b" + CONVERSION_TABLE[j][0]+ "\\b" , "g");
			code_lines[i] = code_lines[i].replace(t,CONVERSION_TABLE[j][1]);
		}
		//fix register order for R-type
		if(itype == 0){
			code_lines[i] = code_lines[i].split(' ');
			code_lines[i] = code_lines[i][0] + code_lines[i][2] + code_lines[i][3]
							+ code_lines[i][1] + "00000000000";
		}
		
		//remove spaces and commas
		var t = new RegExp("[, ]+","g");
		code_lines[i] = code_lines[i].replace(t, "");
		
		complete.push(code_lines[i]);
		console.log("\t" + code_lines[i]);
		//===========console.log('MEM32X32(' + cm++ +'):= "' + code_lines[i] + '";');
	}
}
function compilePlus(mips_code){
	/*algorithm here
	var re = new RegExp("ab+c");
	*/
	
	//phase one: replace all immidiates
	
	//phase two: replace all commands and registers
	
	//phase three: clean up spaces, commas, etc...
	
}
/*TODO:
-remove all commas and anything from a semi colon and onwards for the line
-remove all spaces
-insert line numbers in editor
-color format editor
-support file handling: saving and loading .asm files
-//known bug, imul does not assemble correctly
*/

function dec2bin(num){
	var temp = "";
	var neg;
	if(num < 0){
		temp = ~num + 1;
		temp = (~temp + 1 >>> 0).toString(2);
	}
	else{
		temp = num.toString(2);
		var w = 32 - temp.length;
		for(var i=0;i<w;i++){
			temp = "0" + temp;
		}
	}
	/*else if(num > 1){
		temp = num.toString(2);
		var w = 32 - temp.length;
		for(var i=0;i<w;i++){
			temp = "0" + temp;
		}
	}
	else if(num == 1){
		temp = "0000000000000000000000000000001";
	}
	else{
		temp = "0000000000000000000000000000000";
	}*/
	//console.log(temp);
	return temp
}
var CONVERSION_TABLE = [
["r0","00000"],
["r1","00001"],
["r2","00010"],
["r3","00011"],
["r4","00100"],
["r5","00101"],
["r6","00110"],
["r7","00111"],
["r8","01000"],
["r9","01001"],
["r10","01010"],
["r11","01011"],
["r12","01100"],
["r13","01101"],
["r14","01110"],
["r15","01111"],
["r16","10000"],
["r17","10001"],
["r18","10010"],
["r19","10011"],
["r20","10100"],
["r21","10101"],
["r22","10110"],
["r23","10111"],
["r24","11000"],
["r25","11001"],
["r26","11010"],
["r27","11011"],
["r28","11100"],
["r29","11101"],
["r30","11110"],
["r31","11111"],
["and","000110"],
["or","000001"],
["not","000010"],
["xor","000011"],
["add","000100"],
["sub","000101"],
["mul","000111"],
["andi","010000"],
["ori","010001"],
["xori","010010"],
["addi","010011"],
["subi","010100"],
["li","010101"],
["lui","010110"],
["imul","010111"],
["beq","100001"],
["bne","100010"]
];



//dec2bin(-2);
//dec2bin(12);


