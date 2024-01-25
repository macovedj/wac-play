const base64Compile = str => WebAssembly.compile(typeof Buffer !== 'undefined' ? Buffer.from(str, 'base64') : Uint8Array.from(atob(str), b => b.charCodeAt(0)));

let dv = new DataView(new ArrayBuffer());
const dataView = mem => dv.buffer === mem.buffer ? dv : dv = new DataView(mem.buffer);

const isNode = typeof process !== 'undefined' && process.versions && process.versions.node;
let _fs;
async function fetchCompile (url) {
  if (isNode) {
    _fs = _fs || await import('fs/promises');
    return WebAssembly.compile(await _fs.readFile(url));
  }
  return fetch(url).then(WebAssembly.compileStreaming);
}

const instantiateCore = WebAssembly.instantiate;

const utf8Decoder = new TextDecoder();

let exports0;
let exports1;
let exports2;
let exports3;
let exports4;
let exports5;
let exports6;
let memory0;
let memory1;
let exports7;
let exports8;
let exports9;
let exports10;
let exports11;
let exports12;
let exports13;
let memory2;
let exports14;
let exports15;
let memory3;
let exports16;
let exports17;
let postReturn0;
function trampoline0(rep) {
  const handle = handleCnt5++;
  handleTable5.set(handle, { rep, own: true });
  return handle;
}
function trampoline1(rep) {
  const handle = handleCnt0++;
  handleTable0.set(handle, { rep, own: true });
  return handle;
}
function trampoline2(rep) {
  const handle = handleCnt3++;
  handleTable3.set(handle, { rep, own: true });
  return handle;
}
function trampoline3(rep) {
  const handle = handleCnt6++;
  handleTable6.set(handle, { rep, own: true });
  return handle;
}
function trampoline4(rep) {
  const handle = handleCnt1++;
  handleTable1.set(handle, { rep, own: true });
  return handle;
}
function trampoline5(rep) {
  const handle = handleCnt2++;
  handleTable2.set(handle, { rep, own: true });
  return handle;
}
function trampoline6(handle) {
  const handleEntry = handleTable2.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  return handleEntry.rep;
}
function trampoline7(handle) {
  const handleEntry = handleTable2.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable2.delete(handle);
  if (handleEntry.own) {
    exports0['2'](handleEntry.rep);
  }
  
}
function trampoline8(rep) {
  const handle = handleCnt4++;
  handleTable4.set(handle, { rep, own: true });
  return handle;
}
function trampoline9(handle) {
  const handleEntry = handleTable1.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable1.delete(handle);
  if (handleEntry.own) {
    exports0['1'](handleEntry.rep);
  }
  
}
function trampoline10(rep) {
  const handle = handleCnt7++;
  handleTable7.set(handle, { rep, own: true });
  return handle;
}
function trampoline11(handle) {
  const handleEntry = handleTable6.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable6.delete(handle);
  if (handleEntry.own) {
    exports0['19'](handleEntry.rep);
  }
  
}
function trampoline12(handle) {
  const handleEntry = handleTable77.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable77.delete(handle);
  if (handleEntry.own) {
    exports0['1'](handleEntry.rep);
  }
  
}
function trampoline13(handle) {
  const handleEntry = handleTable78.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable78.delete(handle);
  if (handleEntry.own) {
    exports0['2'](handleEntry.rep);
  }
  
}
function trampoline14(handle) {
  const handleEntry = handleTable79.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable79.delete(handle);
  if (handleEntry.own) {
    exports0['3'](handleEntry.rep);
  }
  
}
function trampoline15(handle) {
  const handleEntry = handleTable76.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable76.delete(handle);
  if (handleEntry.own) {
    exports0['19'](handleEntry.rep);
  }
  
}
function trampoline16(handle) {
  const handleEntry = handleTable80.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable80.delete(handle);
  if (handleEntry.own) {
    exports0['17'](handleEntry.rep);
  }
  
}
function trampoline17(handle) {
  const handleEntry = handleTable81.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable81.delete(handle);
  if (handleEntry.own) {
    exports0['5'](handleEntry.rep);
  }
  
}
function trampoline18(handle) {
  const handleEntry = handleTable82.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable82.delete(handle);
  if (handleEntry.own) {
    exports0['18'](handleEntry.rep);
  }
  
}
function trampoline19(rep) {
  console.log("transfer own")
}
function trampoline20(from_ptr, len, to_ptr) {
  new Uint8Array(memory1.buffer, to_ptr, len).set(new Uint8Array(memory0.buffer, from_ptr, len));
}

function trampoline21(rep) {
  console.log("transfer own")
}
function trampoline22(rep) {
  console.log("transfer own")
}
function trampoline23(rep) {
  console.log("transfer own")
}
function trampoline24(rep) {
  const handle = handleCnt88++;
  handleTable88.set(handle, { rep, own: true });
  return handle;
}
function trampoline25(rep) {
  const handle = handleCnt83++;
  handleTable83.set(handle, { rep, own: true });
  return handle;
}
function trampoline26(rep) {
  const handle = handleCnt86++;
  handleTable86.set(handle, { rep, own: true });
  return handle;
}
function trampoline27(rep) {
  const handle = handleCnt89++;
  handleTable89.set(handle, { rep, own: true });
  return handle;
}
function trampoline28(rep) {
  const handle = handleCnt84++;
  handleTable84.set(handle, { rep, own: true });
  return handle;
}
function trampoline29(rep) {
  const handle = handleCnt85++;
  handleTable85.set(handle, { rep, own: true });
  return handle;
}
function trampoline30(handle) {
  const handleEntry = handleTable85.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  return handleEntry.rep;
}
function trampoline31(handle) {
  const handleEntry = handleTable85.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable85.delete(handle);
  if (handleEntry.own) {
    exports9['2'](handleEntry.rep);
  }
  
}
function trampoline32(rep) {
  const handle = handleCnt87++;
  handleTable87.set(handle, { rep, own: true });
  return handle;
}
function trampoline33(handle) {
  const handleEntry = handleTable84.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable84.delete(handle);
  if (handleEntry.own) {
    exports9['1'](handleEntry.rep);
  }
  
}
function trampoline34(rep) {
  const handle = handleCnt90++;
  handleTable90.set(handle, { rep, own: true });
  return handle;
}
function trampoline35(handle) {
  const handleEntry = handleTable89.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable89.delete(handle);
  if (handleEntry.own) {
    exports9['19'](handleEntry.rep);
  }
  
}
function trampoline36(handle) {
  const handleEntry = handleTable160.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable160.delete(handle);
  if (handleEntry.own) {
    exports9['1'](handleEntry.rep);
  }
  
}
function trampoline37(handle) {
  const handleEntry = handleTable161.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable161.delete(handle);
  if (handleEntry.own) {
    exports9['2'](handleEntry.rep);
  }
  
}
function trampoline38(handle) {
  const handleEntry = handleTable162.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable162.delete(handle);
  if (handleEntry.own) {
    exports9['3'](handleEntry.rep);
  }
  
}
function trampoline39(handle) {
  const handleEntry = handleTable159.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable159.delete(handle);
  if (handleEntry.own) {
    exports9['19'](handleEntry.rep);
  }
  
}
function trampoline40(handle) {
  const handleEntry = handleTable163.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable163.delete(handle);
  if (handleEntry.own) {
    exports9['17'](handleEntry.rep);
  }
  
}
function trampoline41(handle) {
  const handleEntry = handleTable164.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable164.delete(handle);
  if (handleEntry.own) {
    exports9['5'](handleEntry.rep);
  }
  
}
function trampoline42(handle) {
  const handleEntry = handleTable165.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable165.delete(handle);
  if (handleEntry.own) {
    exports9['18'](handleEntry.rep);
  }
  
}
function trampoline43(from_ptr, len, to_ptr) {
  new Uint8Array(memory2.buffer, to_ptr, len).set(new Uint8Array(memory1.buffer, from_ptr, len));
}

function trampoline44(from_ptr, len, to_ptr) {
  new Uint8Array(memory2.buffer, to_ptr, len).set(new Uint8Array(memory3.buffer, from_ptr, len));
}


function goodbyeWorld() {
  const ret = exports13['goodbye-world']();
  var ptr0 = dataView(memory2).getInt32(ret + 0, true);
  var len0 = dataView(memory2).getInt32(ret + 4, true);
  var result0 = utf8Decoder.decode(new Uint8Array(memory2.buffer, ptr0, len0));
  postReturn0(ret);
  return result0;
}

const $init = (async() => {
  const module0 = fetchCompile(new URL('./simple.core.wasm', import.meta.url));
  const module1 = fetchCompile(new URL('./simple.core2.wasm', import.meta.url));
  const module2 = base64Compile('AGFzbQEAAAABKQdgAX8AYAN/fn8AYAJ/fwBgBH9/f38AYAR/f39/AX9gAn9/AX9gAX8AAxIRAAECAgICAwMCAAAAAAQFBQYEBQFwARERB1cSATAAAAExAAEBMgACATMAAwE0AAQBNQAFATYABgE3AAcBOAAIATkACQIxMAAKAjExAAsCMTIADAIxMwANAjE0AA4CMTUADwIxNgAQCCRpbXBvcnRzAQAKzwERCQAgAEEAEQAACw0AIAAgASACQQERAQALCwAgACABQQIRAgALCwAgACABQQMRAgALCwAgACABQQQRAgALCwAgACABQQURAgALDwAgACABIAIgA0EGEQMACw8AIAAgASACIANBBxEDAAsLACAAIAFBCBECAAsJACAAQQkRAAALCQAgAEEKEQAACwkAIABBCxEAAAsJACAAQQwRAAALDwAgACABIAIgA0ENEQQACwsAIAAgAUEOEQUACwsAIAAgAUEPEQUACwkAIABBEBEGAAsALglwcm9kdWNlcnMBDHByb2Nlc3NlZC1ieQENd2l0LWNvbXBvbmVudAYwLjE2LjEAxQkEbmFtZQATEndpdC1jb21wb25lbnQ6c2hpbQGoCREARWluZGlyZWN0LXdhc2k6ZmlsZXN5c3RlbS9wcmVvcGVuc0AwLjIuMC1yYy0yMDIzLTEwLTE4LWdldC1kaXJlY3RvcmllcwFWaW5kaXJlY3Qtd2FzaTpmaWxlc3lzdGVtL3R5cGVzQDAuMi4wLXJjLTIwMjMtMTAtMTgtW21ldGhvZF1kZXNjcmlwdG9yLndyaXRlLXZpYS1zdHJlYW0CV2luZGlyZWN0LXdhc2k6ZmlsZXN5c3RlbS90eXBlc0AwLjIuMC1yYy0yMDIzLTEwLTE4LVttZXRob2RdZGVzY3JpcHRvci5hcHBlbmQtdmlhLXN0cmVhbQNOaW5kaXJlY3Qtd2FzaTpmaWxlc3lzdGVtL3R5cGVzQDAuMi4wLXJjLTIwMjMtMTAtMTgtW21ldGhvZF1kZXNjcmlwdG9yLmdldC10eXBlBEhpbmRpcmVjdC13YXNpOmZpbGVzeXN0ZW0vdHlwZXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1maWxlc3lzdGVtLWVycm9yLWNvZGUFTmluZGlyZWN0LXdhc2k6aW8vc3RyZWFtc0AwLjIuMC1yYy0yMDIzLTEwLTE4LVttZXRob2Rdb3V0cHV0LXN0cmVhbS5jaGVjay13cml0ZQZIaW5kaXJlY3Qtd2FzaTppby9zdHJlYW1zQDAuMi4wLXJjLTIwMjMtMTAtMTgtW21ldGhvZF1vdXRwdXQtc3RyZWFtLndyaXRlB1tpbmRpcmVjdC13YXNpOmlvL3N0cmVhbXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1bbWV0aG9kXW91dHB1dC1zdHJlYW0uYmxvY2tpbmctd3JpdGUtYW5kLWZsdXNoCFFpbmRpcmVjdC13YXNpOmlvL3N0cmVhbXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1bbWV0aG9kXW91dHB1dC1zdHJlYW0uYmxvY2tpbmctZmx1c2gJQWluZGlyZWN0LXdhc2k6Y2xpL2Vudmlyb25tZW50QDAuMi4wLXJjLTIwMjMtMTAtMTgtZ2V0LWVudmlyb25tZW50CkdpbmRpcmVjdC13YXNpOmNsaS90ZXJtaW5hbC1zdGRpbkAwLjIuMC1yYy0yMDIzLTEwLTE4LWdldC10ZXJtaW5hbC1zdGRpbgtJaW5kaXJlY3Qtd2FzaTpjbGkvdGVybWluYWwtc3Rkb3V0QDAuMi4wLXJjLTIwMjMtMTAtMTgtZ2V0LXRlcm1pbmFsLXN0ZG91dAxJaW5kaXJlY3Qtd2FzaTpjbGkvdGVybWluYWwtc3RkZXJyQDAuMi4wLXJjLTIwMjMtMTAtMTgtZ2V0LXRlcm1pbmFsLXN0ZGVycg0lYWRhcHQtd2FzaV9zbmFwc2hvdF9wcmV2aWV3MS1mZF93cml0ZQ4oYWRhcHQtd2FzaV9zbmFwc2hvdF9wcmV2aWV3MS1lbnZpcm9uX2dldA8uYWRhcHQtd2FzaV9zbmFwc2hvdF9wcmV2aWV3MS1lbnZpcm9uX3NpemVzX2dldBAmYWRhcHQtd2FzaV9zbmFwc2hvdF9wcmV2aWV3MS1wcm9jX2V4aXQ');
  const module3 = base64Compile('AGFzbQEAAAABKQdgAX8AYAN/fn8AYAJ/fwBgBH9/f38AYAR/f39/AX9gAn9/AX9gAX8AAmwSAAEwAAAAATEAAQABMgACAAEzAAIAATQAAgABNQACAAE2AAMAATcAAwABOAACAAE5AAAAAjEwAAAAAjExAAAAAjEyAAAAAjEzAAQAAjE0AAUAAjE1AAUAAjE2AAYACCRpbXBvcnRzAXABEREJFwEAQQALEQABAgMEBQYHCAkKCwwNDg8QAC4JcHJvZHVjZXJzAQxwcm9jZXNzZWQtYnkBDXdpdC1jb21wb25lbnQGMC4xNi4xABwEbmFtZQAVFHdpdC1jb21wb25lbnQ6Zml4dXBz');
  const module4 = fetchCompile(new URL('./simple.core3.wasm', import.meta.url));
  const module5 = base64Compile('AGFzbQEAAAABBQFgAX8AAxYVAAAAAAAAAAAAAAAAAAAAAAAAAAAABAUBcAEVFQdrFgEwAAABMQABATIAAgEzAAMBNAAEATUABQE2AAYBNwAHATgACAE5AAkCMTAACgIxMQALAjEyAAwCMTMADQIxNAAOAjE1AA8CMTYAEAIxNwARAjE4ABICMTkAEwIyMAAUCCRpbXBvcnRzAQAK0wEVCQAgAEEAEQAACwkAIABBAREAAAsJACAAQQIRAAALCQAgAEEDEQAACwkAIABBBBEAAAsJACAAQQURAAALCQAgAEEGEQAACwkAIABBBxEAAAsJACAAQQgRAAALCQAgAEEJEQAACwkAIABBChEAAAsJACAAQQsRAAALCQAgAEEMEQAACwkAIABBDREAAAsJACAAQQ4RAAALCQAgAEEPEQAACwkAIABBEBEAAAsJACAAQRERAAALCQAgAEESEQAACwkAIABBExEAAAsJACAAQRQRAAALAC4JcHJvZHVjZXJzAQxwcm9jZXNzZWQtYnkBDXdpdC1jb21wb25lbnQGMC4xOC4yAJwLBG5hbWUAExJ3aXQtY29tcG9uZW50OnNoaW0B/woVADZkdG9yLVtleHBvcnRdd2FzaTppby9wb2xsQDAuMi4wLXJjLTIwMjMtMTAtMTgtcG9sbGFibGUBNmR0b3ItW2V4cG9ydF13YXNpOmlvL3N0cmVhbXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1lcnJvcgI9ZHRvci1bZXhwb3J0XXdhc2k6aW8vc3RyZWFtc0AwLjIuMC1yYy0yMDIzLTEwLTE4LWlucHV0LXN0cmVhbQM+ZHRvci1bZXhwb3J0XXdhc2k6aW8vc3RyZWFtc0AwLjIuMC1yYy0yMDIzLTEwLTE4LW91dHB1dC1zdHJlYW0EU2R0b3ItW2V4cG9ydF13YXNpOnNvY2tldHMvaXAtbmFtZS1sb29rdXBAMC4yLjAtcmMtMjAyMy0xMC0xOC1yZXNvbHZlLWFkZHJlc3Mtc3RyZWFtBTxkdG9yLVtleHBvcnRdd2FzaTpzb2NrZXRzL3RjcEAwLjIuMC1yYy0yMDIzLTEwLTE4LXRjcC1zb2NrZXQGPGR0b3ItW2V4cG9ydF13YXNpOnNvY2tldHMvdWRwQDAuMi4wLXJjLTIwMjMtMTAtMTgtdWRwLXNvY2tldAc3ZHRvci1bZXhwb3J0XXdhc2k6aHR0cC90eXBlc0AwLjIuMC1yYy0yMDIzLTEwLTE4LWZpZWxkcwhBZHRvci1bZXhwb3J0XXdhc2k6aHR0cC90eXBlc0AwLjIuMC1yYy0yMDIzLTEwLTE4LWluY29taW5nLXJlcXVlc3QJQWR0b3ItW2V4cG9ydF13YXNpOmh0dHAvdHlwZXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1vdXRnb2luZy1yZXF1ZXN0CkJkdG9yLVtleHBvcnRdd2FzaTpodHRwL3R5cGVzQDAuMi4wLXJjLTIwMjMtMTAtMTgtcmVzcG9uc2Utb3V0cGFyYW0LQmR0b3ItW2V4cG9ydF13YXNpOmh0dHAvdHlwZXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1pbmNvbWluZy1yZXNwb25zZQw+ZHRvci1bZXhwb3J0XXdhc2k6aHR0cC90eXBlc0AwLjIuMC1yYy0yMDIzLTEwLTE4LWluY29taW5nLWJvZHkNQGR0b3ItW2V4cG9ydF13YXNpOmh0dHAvdHlwZXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1mdXR1cmUtdHJhaWxlcnMOQmR0b3ItW2V4cG9ydF13YXNpOmh0dHAvdHlwZXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1vdXRnb2luZy1yZXNwb25zZQ8+ZHRvci1bZXhwb3J0XXdhc2k6aHR0cC90eXBlc0AwLjIuMC1yYy0yMDIzLTEwLTE4LW91dGdvaW5nLWJvZHkQSWR0b3ItW2V4cG9ydF13YXNpOmh0dHAvdHlwZXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1mdXR1cmUtaW5jb21pbmctcmVzcG9uc2URR2R0b3ItW2V4cG9ydF13YXNpOmNsaS90ZXJtaW5hbC1pbnB1dEAwLjIuMC1yYy0yMDIzLTEwLTE4LXRlcm1pbmFsLWlucHV0EklkdG9yLVtleHBvcnRdd2FzaTpjbGkvdGVybWluYWwtb3V0cHV0QDAuMi4wLXJjLTIwMjMtMTAtMTgtdGVybWluYWwtb3V0cHV0E0FkdG9yLVtleHBvcnRdd2FzaTpmaWxlc3lzdGVtL3R5cGVzQDAuMi4wLXJjLTIwMjMtMTAtMTgtZGVzY3JpcHRvchRNZHRvci1bZXhwb3J0XXdhc2k6ZmlsZXN5c3RlbS90eXBlc0AwLjIuMC1yYy0yMDIzLTEwLTE4LWRpcmVjdG9yeS1lbnRyeS1zdHJlYW0');
  const module6 = base64Compile('AGFzbQEAAAABBQFgAX8AAoQBFgABMAAAAAExAAAAATIAAAABMwAAAAE0AAAAATUAAAABNgAAAAE3AAAAATgAAAABOQAAAAIxMAAAAAIxMQAAAAIxMgAAAAIxMwAAAAIxNAAAAAIxNQAAAAIxNgAAAAIxNwAAAAIxOAAAAAIxOQAAAAIyMAAAAAgkaW1wb3J0cwFwARUVCRsBAEEACxUAAQIDBAUGBwgJCgsMDQ4PEBESExQALglwcm9kdWNlcnMBDHByb2Nlc3NlZC1ieQENd2l0LWNvbXBvbmVudAYwLjE4LjIAHARuYW1lABUUd2l0LWNvbXBvbmVudDpmaXh1cHM');
  const module7 = fetchCompile(new URL('./simple.core4.wasm', import.meta.url));
  const module8 = fetchCompile(new URL('./simple.core5.wasm', import.meta.url));
  const module9 = base64Compile('AGFzbQEAAAABKQdgAX8AYAN/fn8AYAJ/fwBgBH9/f38AYAR/f39/AX9gAn9/AX9gAX8AAxMSAAABAgICAgMDAgAAAAAEBQUGBAUBcAESEgdcEwEwAAABMQABATIAAgEzAAMBNAAEATUABQE2AAYBNwAHATgACAE5AAkCMTAACgIxMQALAjEyAAwCMTMADQIxNAAOAjE1AA8CMTYAEAIxNwARCCRpbXBvcnRzAQAK2QESCQAgAEEAEQAACwkAIABBAREAAAsNACAAIAEgAkECEQEACwsAIAAgAUEDEQIACwsAIAAgAUEEEQIACwsAIAAgAUEFEQIACwsAIAAgAUEGEQIACw8AIAAgASACIANBBxEDAAsPACAAIAEgAiADQQgRAwALCwAgACABQQkRAgALCQAgAEEKEQAACwkAIABBCxEAAAsJACAAQQwRAAALCQAgAEENEQAACw8AIAAgASACIANBDhEEAAsLACAAIAFBDxEFAAsLACAAIAFBEBEFAAsJACAAQRERBgALAC4JcHJvZHVjZXJzAQxwcm9jZXNzZWQtYnkBDXdpdC1jb21wb25lbnQGMC4xNi4xAPUJBG5hbWUAExJ3aXQtY29tcG9uZW50OnNoaW0B2AkSAC5pbmRpcmVjdC1jb21wb25lbnQ6Z29vZGJ5ZS9ncmVldGVyLWhlbGxvLXdvcmxkAUVpbmRpcmVjdC13YXNpOmZpbGVzeXN0ZW0vcHJlb3BlbnNAMC4yLjAtcmMtMjAyMy0xMC0xOC1nZXQtZGlyZWN0b3JpZXMCVmluZGlyZWN0LXdhc2k6ZmlsZXN5c3RlbS90eXBlc0AwLjIuMC1yYy0yMDIzLTEwLTE4LVttZXRob2RdZGVzY3JpcHRvci53cml0ZS12aWEtc3RyZWFtA1dpbmRpcmVjdC13YXNpOmZpbGVzeXN0ZW0vdHlwZXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1bbWV0aG9kXWRlc2NyaXB0b3IuYXBwZW5kLXZpYS1zdHJlYW0ETmluZGlyZWN0LXdhc2k6ZmlsZXN5c3RlbS90eXBlc0AwLjIuMC1yYy0yMDIzLTEwLTE4LVttZXRob2RdZGVzY3JpcHRvci5nZXQtdHlwZQVIaW5kaXJlY3Qtd2FzaTpmaWxlc3lzdGVtL3R5cGVzQDAuMi4wLXJjLTIwMjMtMTAtMTgtZmlsZXN5c3RlbS1lcnJvci1jb2RlBk5pbmRpcmVjdC13YXNpOmlvL3N0cmVhbXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1bbWV0aG9kXW91dHB1dC1zdHJlYW0uY2hlY2std3JpdGUHSGluZGlyZWN0LXdhc2k6aW8vc3RyZWFtc0AwLjIuMC1yYy0yMDIzLTEwLTE4LVttZXRob2Rdb3V0cHV0LXN0cmVhbS53cml0ZQhbaW5kaXJlY3Qtd2FzaTppby9zdHJlYW1zQDAuMi4wLXJjLTIwMjMtMTAtMTgtW21ldGhvZF1vdXRwdXQtc3RyZWFtLmJsb2NraW5nLXdyaXRlLWFuZC1mbHVzaAlRaW5kaXJlY3Qtd2FzaTppby9zdHJlYW1zQDAuMi4wLXJjLTIwMjMtMTAtMTgtW21ldGhvZF1vdXRwdXQtc3RyZWFtLmJsb2NraW5nLWZsdXNoCkFpbmRpcmVjdC13YXNpOmNsaS9lbnZpcm9ubWVudEAwLjIuMC1yYy0yMDIzLTEwLTE4LWdldC1lbnZpcm9ubWVudAtHaW5kaXJlY3Qtd2FzaTpjbGkvdGVybWluYWwtc3RkaW5AMC4yLjAtcmMtMjAyMy0xMC0xOC1nZXQtdGVybWluYWwtc3RkaW4MSWluZGlyZWN0LXdhc2k6Y2xpL3Rlcm1pbmFsLXN0ZG91dEAwLjIuMC1yYy0yMDIzLTEwLTE4LWdldC10ZXJtaW5hbC1zdGRvdXQNSWluZGlyZWN0LXdhc2k6Y2xpL3Rlcm1pbmFsLXN0ZGVyckAwLjIuMC1yYy0yMDIzLTEwLTE4LWdldC10ZXJtaW5hbC1zdGRlcnIOJWFkYXB0LXdhc2lfc25hcHNob3RfcHJldmlldzEtZmRfd3JpdGUPKGFkYXB0LXdhc2lfc25hcHNob3RfcHJldmlldzEtZW52aXJvbl9nZXQQLmFkYXB0LXdhc2lfc25hcHNob3RfcHJldmlldzEtZW52aXJvbl9zaXplc19nZXQRJmFkYXB0LXdhc2lfc25hcHNob3RfcHJldmlldzEtcHJvY19leGl0');
  const module10 = base64Compile('AGFzbQEAAAABKQdgAX8AYAN/fn8AYAJ/fwBgBH9/f38AYAR/f39/AX9gAn9/AX9gAX8AAnITAAEwAAAAATEAAAABMgABAAEzAAIAATQAAgABNQACAAE2AAIAATcAAwABOAADAAE5AAIAAjEwAAAAAjExAAAAAjEyAAAAAjEzAAAAAjE0AAQAAjE1AAUAAjE2AAUAAjE3AAYACCRpbXBvcnRzAXABEhIJGAEAQQALEgABAgMEBQYHCAkKCwwNDg8QEQAuCXByb2R1Y2VycwEMcHJvY2Vzc2VkLWJ5AQ13aXQtY29tcG9uZW50BjAuMTYuMQAcBG5hbWUAFRR3aXQtY29tcG9uZW50OmZpeHVwcw');
  const module11 = fetchCompile(new URL('./simple.core6.wasm', import.meta.url));
  const module12 = base64Compile('AGFzbQEAAAABBQFgAX8AAxYVAAAAAAAAAAAAAAAAAAAAAAAAAAAABAUBcAEVFQdrFgEwAAABMQABATIAAgEzAAMBNAAEATUABQE2AAYBNwAHATgACAE5AAkCMTAACgIxMQALAjEyAAwCMTMADQIxNAAOAjE1AA8CMTYAEAIxNwARAjE4ABICMTkAEwIyMAAUCCRpbXBvcnRzAQAK0wEVCQAgAEEAEQAACwkAIABBAREAAAsJACAAQQIRAAALCQAgAEEDEQAACwkAIABBBBEAAAsJACAAQQURAAALCQAgAEEGEQAACwkAIABBBxEAAAsJACAAQQgRAAALCQAgAEEJEQAACwkAIABBChEAAAsJACAAQQsRAAALCQAgAEEMEQAACwkAIABBDREAAAsJACAAQQ4RAAALCQAgAEEPEQAACwkAIABBEBEAAAsJACAAQRERAAALCQAgAEESEQAACwkAIABBExEAAAsJACAAQRQRAAALAC4JcHJvZHVjZXJzAQxwcm9jZXNzZWQtYnkBDXdpdC1jb21wb25lbnQGMC4xOC4yAJwLBG5hbWUAExJ3aXQtY29tcG9uZW50OnNoaW0B/woVADZkdG9yLVtleHBvcnRdd2FzaTppby9wb2xsQDAuMi4wLXJjLTIwMjMtMTAtMTgtcG9sbGFibGUBNmR0b3ItW2V4cG9ydF13YXNpOmlvL3N0cmVhbXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1lcnJvcgI9ZHRvci1bZXhwb3J0XXdhc2k6aW8vc3RyZWFtc0AwLjIuMC1yYy0yMDIzLTEwLTE4LWlucHV0LXN0cmVhbQM+ZHRvci1bZXhwb3J0XXdhc2k6aW8vc3RyZWFtc0AwLjIuMC1yYy0yMDIzLTEwLTE4LW91dHB1dC1zdHJlYW0EU2R0b3ItW2V4cG9ydF13YXNpOnNvY2tldHMvaXAtbmFtZS1sb29rdXBAMC4yLjAtcmMtMjAyMy0xMC0xOC1yZXNvbHZlLWFkZHJlc3Mtc3RyZWFtBTxkdG9yLVtleHBvcnRdd2FzaTpzb2NrZXRzL3RjcEAwLjIuMC1yYy0yMDIzLTEwLTE4LXRjcC1zb2NrZXQGPGR0b3ItW2V4cG9ydF13YXNpOnNvY2tldHMvdWRwQDAuMi4wLXJjLTIwMjMtMTAtMTgtdWRwLXNvY2tldAc3ZHRvci1bZXhwb3J0XXdhc2k6aHR0cC90eXBlc0AwLjIuMC1yYy0yMDIzLTEwLTE4LWZpZWxkcwhBZHRvci1bZXhwb3J0XXdhc2k6aHR0cC90eXBlc0AwLjIuMC1yYy0yMDIzLTEwLTE4LWluY29taW5nLXJlcXVlc3QJQWR0b3ItW2V4cG9ydF13YXNpOmh0dHAvdHlwZXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1vdXRnb2luZy1yZXF1ZXN0CkJkdG9yLVtleHBvcnRdd2FzaTpodHRwL3R5cGVzQDAuMi4wLXJjLTIwMjMtMTAtMTgtcmVzcG9uc2Utb3V0cGFyYW0LQmR0b3ItW2V4cG9ydF13YXNpOmh0dHAvdHlwZXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1pbmNvbWluZy1yZXNwb25zZQw+ZHRvci1bZXhwb3J0XXdhc2k6aHR0cC90eXBlc0AwLjIuMC1yYy0yMDIzLTEwLTE4LWluY29taW5nLWJvZHkNQGR0b3ItW2V4cG9ydF13YXNpOmh0dHAvdHlwZXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1mdXR1cmUtdHJhaWxlcnMOQmR0b3ItW2V4cG9ydF13YXNpOmh0dHAvdHlwZXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1vdXRnb2luZy1yZXNwb25zZQ8+ZHRvci1bZXhwb3J0XXdhc2k6aHR0cC90eXBlc0AwLjIuMC1yYy0yMDIzLTEwLTE4LW91dGdvaW5nLWJvZHkQSWR0b3ItW2V4cG9ydF13YXNpOmh0dHAvdHlwZXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1mdXR1cmUtaW5jb21pbmctcmVzcG9uc2URR2R0b3ItW2V4cG9ydF13YXNpOmNsaS90ZXJtaW5hbC1pbnB1dEAwLjIuMC1yYy0yMDIzLTEwLTE4LXRlcm1pbmFsLWlucHV0EklkdG9yLVtleHBvcnRdd2FzaTpjbGkvdGVybWluYWwtb3V0cHV0QDAuMi4wLXJjLTIwMjMtMTAtMTgtdGVybWluYWwtb3V0cHV0E0FkdG9yLVtleHBvcnRdd2FzaTpmaWxlc3lzdGVtL3R5cGVzQDAuMi4wLXJjLTIwMjMtMTAtMTgtZGVzY3JpcHRvchRNZHRvci1bZXhwb3J0XXdhc2k6ZmlsZXN5c3RlbS90eXBlc0AwLjIuMC1yYy0yMDIzLTEwLTE4LWRpcmVjdG9yeS1lbnRyeS1zdHJlYW0');
  const module13 = base64Compile('AGFzbQEAAAABBQFgAX8AAoQBFgABMAAAAAExAAAAATIAAAABMwAAAAE0AAAAATUAAAABNgAAAAE3AAAAATgAAAABOQAAAAIxMAAAAAIxMQAAAAIxMgAAAAIxMwAAAAIxNAAAAAIxNQAAAAIxNgAAAAIxNwAAAAIxOAAAAAIxOQAAAAIyMAAAAAgkaW1wb3J0cwFwARUVCRsBAEEACxUAAQIDBAUGBwgJCgsMDQ4PEBESExQALglwcm9kdWNlcnMBDHByb2Nlc3NlZC1ieQENd2l0LWNvbXBvbmVudAYwLjE4LjIAHARuYW1lABUUd2l0LWNvbXBvbmVudDpmaXh1cHM');
  const module14 = base64Compile('AGFzbQEAAAABEANgAAF/YAN/f38Bf2ABfwACiAEHBWZsYWdzCWluc3RhbmNlMgN/AQVmbGFncwppbnN0YW5jZTMzA38BBmNhbGxlZQhhZGFwdGVyMAAACHJlc291cmNlDHRyYW5zZmVyLW93bgABBmNhbGxlZQhhZGFwdGVyMQACBmNhbGxlZQhhZGFwdGVyMgAABmNhbGxlZQhhZGFwdGVyMwAAAwUEAAIAAActBAhhZGFwdGVyMAAFCGFkYXB0ZXIxAAYIYWRhcHRlcjIABwhhZGFwdGVyMwAICs4CBE8BAX8jAUEBcUUEQAALIwBBAnFFBEAACyMAQX1xJAAjAEF+cSQAIwBBAXIkABAAIQAjAUF+cSQBIABBA0HPABABIwFBAXIkASMAQQJyJAALXAAjAUEBcUUEQAALIwBBAnFFBEAACyMAQX1xJAAjAEF+cSQAAn8CQAJAAkAgAA4CAQIACwALQQAMAQtBAQsjAEEBciQAEAIjAUF+cSQBIwFBAXIkASMAQQJyJAALTwEBfyMBQQFxRQRAAAsjAEECcUUEQAALIwBBfXEkACMAQX5xJAAjAEEBciQAEAMhACMBQX5xJAEgAEECQc4AEAEjAUEBciQBIwBBAnIkAAtPAQF/IwFBAXFFBEAACyMAQQJxRQRAAAsjAEF9cSQAIwBBfnEkACMAQQFyJAAQBCEAIwFBfnEkASAAQQNBzwAQASMBQQFyJAEjAEECciQACw');
  const module15 = fetchCompile(new URL('./simple.core7.wasm', import.meta.url));
  const module16 = base64Compile('AGFzbQEAAAABKAdgAAF/YAN/f38Bf2ABfwBgBH9/f38Bf2ADf39/AGAAAX9gA39/fwACwgIPBWZsYWdzCmluc3RhbmNlMzUDfwEFZmxhZ3MKaW5zdGFuY2U2NgN/AQZjYWxsZWUJYWRhcHRlcjE2AAAIcmVzb3VyY2UMdHJhbnNmZXItb3duAAEGY2FsbGVlCWFkYXB0ZXIxNwACBmNhbGxlZQlhZGFwdGVyMTgAAAZjYWxsZWUJYWRhcHRlcjE5AAAFZmxhZ3MKaW5zdGFuY2UzMwN/AQZtZW1vcnkCbTACAAAHcmVhbGxvYwJmNQADBmNhbGxlZQlhZGFwdGVyMjAAAAtwb3N0X3JldHVybglhZGFwdGVyMjAAAgl0cmFuc2NvZGUbdXRmOC10by11dGY4IChtZW0wID0+IG1lbTEpAAQIYXVnbWVudHMPbWVtMSBNZW1vcnlTaXplAAUIYXVnbWVudHMNbWVtMSBJMzJTdG9yZQAGAwYFAAIAAAIHPQUJYWRhcHRlcjE2AAsJYWRhcHRlcjE3AAwJYWRhcHRlcjE4AA0JYWRhcHRlcjE5AA4JYWRhcHRlcjIwAA8KogQFUAEBfyMBQQFxRQRAAAsjAEECcUUEQAALIwBBfXEkACMAQX5xJAAjAEEBciQAEAAhACMBQX5xJAEgAEHWAEGiARABIwFBAXIkASMAQQJyJAALXAAjAUEBcUUEQAALIwBBAnFFBEAACyMAQX1xJAAjAEF+cSQAAn8CQAJAAkAgAA4CAQIACwALQQAMAQtBAQsjAEEBciQAEAIjAUF+cSQBIwFBAXIkASMAQQJyJAALUAEBfyMBQQFxRQRAAAsjAEECcUUEQAALIwBBfXEkACMAQX5xJAAjAEEBciQAEAMhACMBQX5xJAEgAEHVAEGhARABIwFBAXIkASMAQQJyJAALUAEBfyMBQQFxRQRAAAsjAEECcUUEQAALIwBBfXEkACMAQX5xJAAjAEEBciQAEAQhACMBQX5xJAEgAEHWAEGiARABIwFBAXIkASMAQQJyJAALzwEBBn8jAUEBcUUEQAALIwJBAnFFBEAACyMCQX1xJAIjAkF+cSQCIwJBAXIkAhAGIQEjAUF+cSQBIAFBA3EEQAALIABBA3EEQAALIAEoAgAgASgCBCECIQMgAkGAgICAeE8EQAALIAIiBCEFQQBBAEEBIAUQBSEGAkACQD8ArUIQhiADrSACrXxaDQELAAsCQAJAEAmtQhCGIAatIAWtfFoNAQsACyADIAIgBhAIIAAgBkEAEAogACAEQQQQCiMBQQFyJAEgARAHIwJBAnIkAgs');
  const module17 = fetchCompile(new URL('./simple.core8.wasm', import.meta.url));
  const instanceFlags2 = new WebAssembly.Global({ value: "i32", mutable: true }, 3);
  const instanceFlags33 = new WebAssembly.Global({ value: "i32", mutable: true }, 3);
  const instanceFlags35 = new WebAssembly.Global({ value: "i32", mutable: true }, 3);
  const instanceFlags66 = new WebAssembly.Global({ value: "i32", mutable: true }, 3);
  ({ exports: exports0 } = await instantiateCore(await module5));
  ({ exports: exports1 } = await instantiateCore(await module4, {
    '[export]wasi:cli/terminal-input@0.2.0-rc-2023-10-18': {
      '[resource-new]terminal-input': trampoline8,
    },
    '[export]wasi:cli/terminal-output@0.2.0-rc-2023-10-18': {
      '[resource-new]terminal-output': trampoline0,
    },
    '[export]wasi:filesystem/types@0.2.0-rc-2023-10-18': {
      '[resource-drop]descriptor': trampoline11,
      '[resource-new]descriptor': trampoline3,
      '[resource-new]directory-entry-stream': trampoline10,
    },
    '[export]wasi:io/poll@0.2.0-rc-2023-10-18': {
      '[resource-new]pollable': trampoline1,
    },
    '[export]wasi:io/streams@0.2.0-rc-2023-10-18': {
      '[resource-drop]error': trampoline9,
      '[resource-drop]input-stream': trampoline7,
      '[resource-new]error': trampoline4,
      '[resource-new]input-stream': trampoline5,
      '[resource-new]output-stream': trampoline2,
      '[resource-rep]input-stream': trampoline6,
    },
  }));
  ({ exports: exports2 } = await instantiateCore(await module6, {
    '': {
      $imports: exports0.$imports,
      '0': exports1['wasi:io/poll@0.2.0-rc-2023-10-18#[dtor]pollable'],
      '1': exports1['wasi:io/streams@0.2.0-rc-2023-10-18#[dtor]error'],
      '10': exports1['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '11': exports1['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '12': exports1['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '13': exports1['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '14': exports1['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '15': exports1['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '16': exports1['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '17': exports1['wasi:cli/terminal-input@0.2.0-rc-2023-10-18#[dtor]terminal-input'],
      '18': exports1['wasi:cli/terminal-input@0.2.0-rc-2023-10-18#[dtor]terminal-input'],
      '19': exports1['wasi:filesystem/types@0.2.0-rc-2023-10-18#[dtor]descriptor'],
      '2': exports1['wasi:io/streams@0.2.0-rc-2023-10-18#[dtor]input-stream'],
      '20': exports1['wasi:filesystem/types@0.2.0-rc-2023-10-18#[dtor]directory-entry-stream'],
      '3': exports1['wasi:io/streams@0.2.0-rc-2023-10-18#[dtor]output-stream'],
      '4': exports1['wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18#[dtor]resolve-address-stream'],
      '5': exports1['wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18#[dtor]resolve-address-stream'],
      '6': exports1['wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18#[dtor]resolve-address-stream'],
      '7': exports1['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '8': exports1['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '9': exports1['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
    },
  }));
  ({ exports: exports3 } = await instantiateCore(await module2));
  ({ exports: exports4 } = await instantiateCore(await module0, {
    wasi_snapshot_preview1: {
      environ_get: exports3['14'],
      environ_sizes_get: exports3['15'],
      fd_write: exports3['13'],
      proc_exit: exports3['16'],
    },
  }));
  ({ exports: exports5 } = await instantiateCore(await module14, {
    callee: {
      adapter0: exports1['wasi:cli/stderr@0.2.0-rc-2023-10-18#get-stderr'],
      adapter1: exports1['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      adapter2: exports1['wasi:cli/stdin@0.2.0-rc-2023-10-18#get-stdin'],
      adapter3: exports1['wasi:cli/stdout@0.2.0-rc-2023-10-18#get-stdout'],
    },
    flags: {
      instance2: instanceFlags2,
      instance33: instanceFlags33,
    },
    resource: {
      'transfer-own': trampoline19,
    },
  }));
  ({ exports: exports6 } = await instantiateCore(await module1, {
    __main_module__: {
      cabi_realloc: exports4.cabi_realloc,
    },
    env: {
      memory: exports4.memory,
    },
    'wasi:cli/environment@0.2.0-rc-2023-10-18': {
      'get-environment': exports3['9'],
    },
    'wasi:cli/exit@0.2.0-rc-2023-10-18': {
      exit: exports5.adapter1,
    },
    'wasi:cli/stderr@0.2.0-rc-2023-10-18': {
      'get-stderr': exports5.adapter0,
    },
    'wasi:cli/stdin@0.2.0-rc-2023-10-18': {
      'get-stdin': exports5.adapter2,
    },
    'wasi:cli/stdout@0.2.0-rc-2023-10-18': {
      'get-stdout': exports5.adapter3,
    },
    'wasi:cli/terminal-input@0.2.0-rc-2023-10-18': {
      '[resource-drop]terminal-input': trampoline16,
    },
    'wasi:cli/terminal-output@0.2.0-rc-2023-10-18': {
      '[resource-drop]terminal-output': trampoline18,
    },
    'wasi:cli/terminal-stderr@0.2.0-rc-2023-10-18': {
      'get-terminal-stderr': exports3['12'],
    },
    'wasi:cli/terminal-stdin@0.2.0-rc-2023-10-18': {
      'get-terminal-stdin': exports3['10'],
    },
    'wasi:cli/terminal-stdout@0.2.0-rc-2023-10-18': {
      'get-terminal-stdout': exports3['11'],
    },
    'wasi:filesystem/preopens@0.2.0-rc-2023-10-18': {
      'get-directories': exports3['0'],
    },
    'wasi:filesystem/types@0.2.0-rc-2023-10-18': {
      '[method]descriptor.append-via-stream': exports3['2'],
      '[method]descriptor.get-type': exports3['3'],
      '[method]descriptor.write-via-stream': exports3['1'],
      '[resource-drop]descriptor': trampoline15,
      'filesystem-error-code': exports3['4'],
    },
    'wasi:io/streams@0.2.0-rc-2023-10-18': {
      '[method]output-stream.blocking-flush': exports3['8'],
      '[method]output-stream.blocking-write-and-flush': exports3['7'],
      '[method]output-stream.check-write': exports3['5'],
      '[method]output-stream.write': exports3['6'],
      '[resource-drop]error': trampoline12,
      '[resource-drop]input-stream': trampoline13,
      '[resource-drop]output-stream': trampoline14,
    },
    'wasi:sockets/tcp@0.2.0-rc-2023-10-18': {
      '[resource-drop]tcp-socket': trampoline17,
    },
  }));
  memory0 = exports1.memory;
  memory1 = exports4.memory;
  ({ exports: exports7 } = await instantiateCore(await module15, {
    augments: {
      'mem1 I32Load8U': (ptr, off) => new DataView(exports4.memory.buffer).getUint8(ptr + off, true),
      'mem1 I32Store': (ptr, val, offset) => {
        new DataView(exports4.memory.buffer).setInt32(ptr + offset, val, true);
      },
      'mem1 I32Store8': (ptr, val, offset) => {
        new DataView(exports4.memory.buffer).setInt8(ptr + offset, val, true);
      },
      'mem1 I64Store': (ptr, val, offset) => {
        new DataView(exports4.memory.buffer).setBigInt64(ptr + offset, val, true);
      },
      'mem1 MemorySize': ptr => exports4.memory.buffer.byteLength / 65536,
    },
    callee: {
      adapter10: exports1['wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.write'],
      adapter11: exports1['wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.flush'],
      adapter12: exports1['wasi:cli/environment@0.2.0-rc-2023-10-18#get-environment'],
      adapter13: exports1['wasi:cli/terminal-stdin@0.2.0-rc-2023-10-18#get-terminal-stdin'],
      adapter14: exports1['wasi:cli/terminal-stdout@0.2.0-rc-2023-10-18#get-terminal-stdout'],
      adapter15: exports1['wasi:cli/terminal-stderr@0.2.0-rc-2023-10-18#get-terminal-stderr'],
      adapter4: exports1['wasi:filesystem/preopens@0.2.0-rc-2023-10-18#get-directories'],
      adapter5: exports1['wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.write-via-stream'],
      adapter6: exports1['wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.append-via-stream'],
      adapter7: exports1['wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.get-type'],
      adapter8: exports1['wasi:filesystem/types@0.2.0-rc-2023-10-18#filesystem-error-code'],
      adapter9: exports1['wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.check-write'],
    },
    flags: {
      instance2: instanceFlags2,
      instance33: instanceFlags33,
    },
    memory: {
      m0: exports1.memory,
    },
    post_return: {
      adapter12: exports1['cabi_post_wasi:cli/environment@0.2.0-rc-2023-10-18#get-environment'],
      adapter4: exports1['cabi_post_wasi:filesystem/preopens@0.2.0-rc-2023-10-18#get-directories'],
    },
    realloc: {
      f0: exports6.cabi_import_realloc,
      f13: exports1.cabi_realloc,
    },
    resource: {
      'enter-call': trampoline21,
      'exit-call': trampoline23,
      'transfer-borrow': trampoline22,
      'transfer-own': trampoline19,
    },
    transcode: {
      'utf8-to-utf8 (mem0 => mem1)': trampoline20,
    },
  }));
  ({ exports: exports8 } = await instantiateCore(await module3, {
    '': {
      $imports: exports3.$imports,
      '0': exports7.adapter4,
      '1': exports7.adapter5,
      '10': exports7.adapter13,
      '11': exports7.adapter14,
      '12': exports7.adapter15,
      '13': exports6.fd_write,
      '14': exports6.environ_get,
      '15': exports6.environ_sizes_get,
      '16': exports6.proc_exit,
      '2': exports7.adapter6,
      '3': exports7.adapter7,
      '4': exports7.adapter8,
      '5': exports7.adapter9,
      '6': exports7.adapter10,
      '7': exports7.adapter10,
      '8': exports7.adapter11,
      '9': exports7.adapter12,
    },
  }));
  ({ exports: exports9 } = await instantiateCore(await module12));
  ({ exports: exports10 } = await instantiateCore(await module11, {
    '[export]wasi:cli/terminal-input@0.2.0-rc-2023-10-18': {
      '[resource-new]terminal-input': trampoline32,
    },
    '[export]wasi:cli/terminal-output@0.2.0-rc-2023-10-18': {
      '[resource-new]terminal-output': trampoline24,
    },
    '[export]wasi:filesystem/types@0.2.0-rc-2023-10-18': {
      '[resource-drop]descriptor': trampoline35,
      '[resource-new]descriptor': trampoline27,
      '[resource-new]directory-entry-stream': trampoline34,
    },
    '[export]wasi:io/poll@0.2.0-rc-2023-10-18': {
      '[resource-new]pollable': trampoline25,
    },
    '[export]wasi:io/streams@0.2.0-rc-2023-10-18': {
      '[resource-drop]error': trampoline33,
      '[resource-drop]input-stream': trampoline31,
      '[resource-new]error': trampoline28,
      '[resource-new]input-stream': trampoline29,
      '[resource-new]output-stream': trampoline26,
      '[resource-rep]input-stream': trampoline30,
    },
  }));
  ({ exports: exports11 } = await instantiateCore(await module13, {
    '': {
      $imports: exports9.$imports,
      '0': exports10['wasi:io/poll@0.2.0-rc-2023-10-18#[dtor]pollable'],
      '1': exports10['wasi:io/streams@0.2.0-rc-2023-10-18#[dtor]error'],
      '10': exports10['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '11': exports10['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '12': exports10['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '13': exports10['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '14': exports10['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '15': exports10['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '16': exports10['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '17': exports10['wasi:cli/terminal-input@0.2.0-rc-2023-10-18#[dtor]terminal-input'],
      '18': exports10['wasi:cli/terminal-input@0.2.0-rc-2023-10-18#[dtor]terminal-input'],
      '19': exports10['wasi:filesystem/types@0.2.0-rc-2023-10-18#[dtor]descriptor'],
      '2': exports10['wasi:io/streams@0.2.0-rc-2023-10-18#[dtor]input-stream'],
      '20': exports10['wasi:filesystem/types@0.2.0-rc-2023-10-18#[dtor]directory-entry-stream'],
      '3': exports10['wasi:io/streams@0.2.0-rc-2023-10-18#[dtor]output-stream'],
      '4': exports10['wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18#[dtor]resolve-address-stream'],
      '5': exports10['wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18#[dtor]resolve-address-stream'],
      '6': exports10['wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18#[dtor]resolve-address-stream'],
      '7': exports10['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '8': exports10['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      '9': exports10['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
    },
  }));
  ({ exports: exports12 } = await instantiateCore(await module9));
  ({ exports: exports13 } = await instantiateCore(await module7, {
    'component:goodbye/greeter': {
      'hello-world': exports12['0'],
    },
    wasi_snapshot_preview1: {
      environ_get: exports12['15'],
      environ_sizes_get: exports12['16'],
      fd_write: exports12['14'],
      proc_exit: exports12['17'],
    },
  }));
  memory2 = exports13.memory;
  ({ exports: exports14 } = await instantiateCore(await module16, {
    augments: {
      'mem1 I32Store': (ptr, val, offset) => {
        new DataView(exports13.memory.buffer).setInt32(ptr + offset, val, true);
      },
      'mem1 MemorySize': ptr => exports13.memory.buffer.byteLength / 65536,
    },
    callee: {
      adapter16: exports10['wasi:cli/stderr@0.2.0-rc-2023-10-18#get-stderr'],
      adapter17: exports10['wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields'],
      adapter18: exports10['wasi:cli/stdin@0.2.0-rc-2023-10-18#get-stdin'],
      adapter19: exports10['wasi:cli/stdout@0.2.0-rc-2023-10-18#get-stdout'],
      adapter20: exports4['hello-world'],
    },
    flags: {
      instance33: instanceFlags33,
      instance35: instanceFlags35,
      instance66: instanceFlags66,
    },
    memory: {
      m0: exports4.memory,
    },
    post_return: {
      adapter20: exports4['cabi_post_hello-world'],
    },
    realloc: {
      f5: exports13.cabi_realloc,
    },
    resource: {
      'transfer-own': trampoline19,
    },
    transcode: {
      'utf8-to-utf8 (mem0 => mem1)': trampoline43,
    },
  }));
  ({ exports: exports15 } = await instantiateCore(await module8, {
    __main_module__: {
      cabi_realloc: exports13.cabi_realloc,
    },
    env: {
      memory: exports13.memory,
    },
    'wasi:cli/environment@0.2.0-rc-2023-10-18': {
      'get-environment': exports12['10'],
    },
    'wasi:cli/exit@0.2.0-rc-2023-10-18': {
      exit: exports14.adapter17,
    },
    'wasi:cli/stderr@0.2.0-rc-2023-10-18': {
      'get-stderr': exports14.adapter16,
    },
    'wasi:cli/stdin@0.2.0-rc-2023-10-18': {
      'get-stdin': exports14.adapter18,
    },
    'wasi:cli/stdout@0.2.0-rc-2023-10-18': {
      'get-stdout': exports14.adapter19,
    },
    'wasi:cli/terminal-input@0.2.0-rc-2023-10-18': {
      '[resource-drop]terminal-input': trampoline40,
    },
    'wasi:cli/terminal-output@0.2.0-rc-2023-10-18': {
      '[resource-drop]terminal-output': trampoline42,
    },
    'wasi:cli/terminal-stderr@0.2.0-rc-2023-10-18': {
      'get-terminal-stderr': exports12['13'],
    },
    'wasi:cli/terminal-stdin@0.2.0-rc-2023-10-18': {
      'get-terminal-stdin': exports12['11'],
    },
    'wasi:cli/terminal-stdout@0.2.0-rc-2023-10-18': {
      'get-terminal-stdout': exports12['12'],
    },
    'wasi:filesystem/preopens@0.2.0-rc-2023-10-18': {
      'get-directories': exports12['1'],
    },
    'wasi:filesystem/types@0.2.0-rc-2023-10-18': {
      '[method]descriptor.append-via-stream': exports12['3'],
      '[method]descriptor.get-type': exports12['4'],
      '[method]descriptor.write-via-stream': exports12['2'],
      '[resource-drop]descriptor': trampoline39,
      'filesystem-error-code': exports12['5'],
    },
    'wasi:io/streams@0.2.0-rc-2023-10-18': {
      '[method]output-stream.blocking-flush': exports12['9'],
      '[method]output-stream.blocking-write-and-flush': exports12['8'],
      '[method]output-stream.check-write': exports12['6'],
      '[method]output-stream.write': exports12['7'],
      '[resource-drop]error': trampoline36,
      '[resource-drop]input-stream': trampoline37,
      '[resource-drop]output-stream': trampoline38,
    },
    'wasi:sockets/tcp@0.2.0-rc-2023-10-18': {
      '[resource-drop]tcp-socket': trampoline41,
    },
  }));
  memory3 = exports10.memory;
  ({ exports: exports16 } = await instantiateCore(await module17, {
    augments: {
      'mem1 I32Load8U': (ptr, off) => new DataView(exports13.memory.buffer).getUint8(ptr + off, true),
      'mem1 I32Store': (ptr, val, offset) => {
        new DataView(exports13.memory.buffer).setInt32(ptr + offset, val, true);
      },
      'mem1 I32Store8': (ptr, val, offset) => {
        new DataView(exports13.memory.buffer).setInt8(ptr + offset, val, true);
      },
      'mem1 I64Store': (ptr, val, offset) => {
        new DataView(exports13.memory.buffer).setBigInt64(ptr + offset, val, true);
      },
      'mem1 MemorySize': ptr => exports13.memory.buffer.byteLength / 65536,
    },
    callee: {
      adapter21: exports10['wasi:filesystem/preopens@0.2.0-rc-2023-10-18#get-directories'],
      adapter22: exports10['wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.write-via-stream'],
      adapter23: exports10['wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.append-via-stream'],
      adapter24: exports10['wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.get-type'],
      adapter25: exports10['wasi:filesystem/types@0.2.0-rc-2023-10-18#filesystem-error-code'],
      adapter26: exports10['wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.check-write'],
      adapter27: exports10['wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.write'],
      adapter28: exports10['wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.flush'],
      adapter29: exports10['wasi:cli/environment@0.2.0-rc-2023-10-18#get-environment'],
      adapter30: exports10['wasi:cli/terminal-stdin@0.2.0-rc-2023-10-18#get-terminal-stdin'],
      adapter31: exports10['wasi:cli/terminal-stdout@0.2.0-rc-2023-10-18#get-terminal-stdout'],
      adapter32: exports10['wasi:cli/terminal-stderr@0.2.0-rc-2023-10-18#get-terminal-stderr'],
    },
    flags: {
      instance35: instanceFlags35,
      instance66: instanceFlags66,
    },
    memory: {
      m0: exports10.memory,
    },
    post_return: {
      adapter21: exports10['cabi_post_wasi:filesystem/preopens@0.2.0-rc-2023-10-18#get-directories'],
      adapter29: exports10['cabi_post_wasi:cli/environment@0.2.0-rc-2023-10-18#get-environment'],
    },
    realloc: {
      f0: exports15.cabi_import_realloc,
      f13: exports10.cabi_realloc,
    },
    resource: {
      'enter-call': trampoline21,
      'exit-call': trampoline23,
      'transfer-borrow': trampoline22,
      'transfer-own': trampoline19,
    },
    transcode: {
      'utf8-to-utf8 (mem0 => mem1)': trampoline44,
    },
  }));
  ({ exports: exports17 } = await instantiateCore(await module10, {
    '': {
      $imports: exports12.$imports,
      '0': exports14.adapter20,
      '1': exports16.adapter21,
      '10': exports16.adapter29,
      '11': exports16.adapter30,
      '12': exports16.adapter31,
      '13': exports16.adapter32,
      '14': exports15.fd_write,
      '15': exports15.environ_get,
      '16': exports15.environ_sizes_get,
      '17': exports15.proc_exit,
      '2': exports16.adapter22,
      '3': exports16.adapter23,
      '4': exports16.adapter24,
      '5': exports16.adapter25,
      '6': exports16.adapter26,
      '7': exports16.adapter27,
      '8': exports16.adapter27,
      '9': exports16.adapter28,
    },
  }));
  postReturn0 = exports13['cabi_post_goodbye-world'];
})();

await $init;
const salutation = {
  goodbyeWorld: goodbyeWorld,
  
};

export { salutation,  }