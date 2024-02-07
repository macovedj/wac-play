import { environment, exit as exit$1, stderr, stdin, stdout, terminalInput, terminalOutput, terminalStderr, terminalStdin, terminalStdout } from '@bytecodealliance/preview2-shim/cli';
import { preopens, types } from '@bytecodealliance/preview2-shim/filesystem';
import { error, streams } from '@bytecodealliance/preview2-shim/io';
const { getEnvironment } = environment;
const { exit } = exit$1;
const { getStderr } = stderr;
const { getStdin } = stdin;
const { getStdout } = stdout;
const { TerminalInput } = terminalInput;
const { TerminalOutput } = terminalOutput;
const { getTerminalStderr } = terminalStderr;
const { getTerminalStdin } = terminalStdin;
const { getTerminalStdout } = terminalStdout;
const { getDirectories } = preopens;
const { Descriptor: Descriptor$1,
  filesystemErrorCode } = types;
const { Error: Error$1 } = error;
const { Error: Error$2,
  InputStream: InputStream$1,
  OutputStream: OutputStream$1 } = streams;

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

function getErrorPayload(e) {
  if (e && hasOwnProperty.call(e, 'payload')) return e.payload;
  return e;
}

const hasOwnProperty = Object.prototype.hasOwnProperty;

const instantiateCore = WebAssembly.instantiate;

const resourceHandleSymbol = Symbol('resource');

const symbolDispose = Symbol.dispose || Symbol.for('dispose');

const toUint64 = val => BigInt.asUintN(64, BigInt(val));

function toUint32(val) {
  return val >>> 0;
}

const utf8Decoder = new TextDecoder();

const utf8Encoder = new TextEncoder();

let utf8EncodedLen = 0;
function utf8Encode(s, realloc, memory) {
  if (typeof s !== 'string') throw new TypeError('expected a string');
  if (s.length === 0) {
    utf8EncodedLen = 0;
    return 1;
  }
  let allocLen = 0;
  let ptr = 0;
  let writtenTotal = 0;
  while (s.length > 0) {
    ptr = realloc(ptr, allocLen, 1, allocLen += s.length * 2);
    const { read, written } = utf8Encoder.encodeInto(
    s,
    new Uint8Array(memory.buffer, ptr + writtenTotal, allocLen - writtenTotal),
    );
    writtenTotal += written;
    s = s.slice(read);
  }
  utf8EncodedLen = writtenTotal;
  return ptr;
}

let exports0;
let exports1;

function trampoline4() {
  const ret = getStderr();
  if (!(ret instanceof OutputStream)) {
    throw new Error('Resource error: Not a valid "OutputStream" resource.');
  }
  var handle0 = handleCnt1++;
  handleTable1.set(handle0, { rep: ret, own: true });
  return handle0;
}

function trampoline5(arg0) {
  let variant0;
  switch (arg0) {
    case 0: {
      variant0= {
        tag: 'ok',
        val: undefined
      };
      break;
    }
    case 1: {
      variant0= {
        tag: 'err',
        val: undefined
      };
      break;
    }
    default: {
      throw new TypeError('invalid variant discriminant for expected');
    }
  }
  exit(variant0);
}

function trampoline6() {
  const ret = getStdin();
  if (!(ret instanceof InputStream)) {
    throw new Error('Resource error: Not a valid "InputStream" resource.');
  }
  var handle0 = handleCnt2++;
  handleTable2.set(handle0, { rep: ret, own: true });
  return handle0;
}

function trampoline7() {
  const ret = getStdout();
  if (!(ret instanceof OutputStream)) {
    throw new Error('Resource error: Not a valid "OutputStream" resource.');
  }
  var handle0 = handleCnt1++;
  handleTable1.set(handle0, { rep: ret, own: true });
  return handle0;
}
let exports2;

function trampoline8(arg0) {
  const ret = getDirectories();
  var vec3 = ret;
  var len3 = vec3.length;
  var result3 = realloc0(0, 0, 4, len3 * 12);
  for (let i = 0; i < vec3.length; i++) {
    const e = vec3[i];
    const base = result3 + i * 12;var [tuple0_0, tuple0_1] = e;
    if (!(tuple0_0 instanceof Descriptor)) {
      throw new Error('Resource error: Not a valid "Descriptor" resource.');
    }
    var handle1 = handleCnt3++;
    handleTable3.set(handle1, { rep: tuple0_0, own: true });
    dataView(memory0).setInt32(base + 0, handle1, true);
    var ptr2 = utf8Encode(tuple0_1, realloc0, memory0);
    var len2 = utf8EncodedLen;
    dataView(memory0).setInt32(base + 8, len2, true);
    dataView(memory0).setInt32(base + 4, ptr2, true);
  }
  dataView(memory0).setInt32(arg0 + 4, len3, true);
  dataView(memory0).setInt32(arg0 + 0, result3, true);
}
let memory0;
let realloc0;

function trampoline9(arg0, arg1, arg2) {
  var handle1 = arg0;
  var rsc0 = handleTable3.get(handle1).rep;
  let ret;
  try {
    ret = { tag: 'ok', val: Descriptor.prototype.writeViaStream.call(rsc0, BigInt.asUintN(64, arg1)) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  var variant4 = ret;
  switch (variant4.tag) {
    case 'ok': {
      const e = variant4.val;
      dataView(memory0).setInt8(arg2 + 0, 0, true);
      if (!(e instanceof OutputStream)) {
        throw new Error('Resource error: Not a valid "OutputStream" resource.');
      }
      var handle2 = handleCnt1++;
      handleTable1.set(handle2, { rep: e, own: true });
      dataView(memory0).setInt32(arg2 + 4, handle2, true);
      break;
    }
    case 'err': {
      const e = variant4.val;
      dataView(memory0).setInt8(arg2 + 0, 1, true);
      var val3 = e;
      let enum3;
      switch (val3) {
        case 'access': {
          enum3 = 0;
          break;
        }
        case 'would-block': {
          enum3 = 1;
          break;
        }
        case 'already': {
          enum3 = 2;
          break;
        }
        case 'bad-descriptor': {
          enum3 = 3;
          break;
        }
        case 'busy': {
          enum3 = 4;
          break;
        }
        case 'deadlock': {
          enum3 = 5;
          break;
        }
        case 'quota': {
          enum3 = 6;
          break;
        }
        case 'exist': {
          enum3 = 7;
          break;
        }
        case 'file-too-large': {
          enum3 = 8;
          break;
        }
        case 'illegal-byte-sequence': {
          enum3 = 9;
          break;
        }
        case 'in-progress': {
          enum3 = 10;
          break;
        }
        case 'interrupted': {
          enum3 = 11;
          break;
        }
        case 'invalid': {
          enum3 = 12;
          break;
        }
        case 'io': {
          enum3 = 13;
          break;
        }
        case 'is-directory': {
          enum3 = 14;
          break;
        }
        case 'loop': {
          enum3 = 15;
          break;
        }
        case 'too-many-links': {
          enum3 = 16;
          break;
        }
        case 'message-size': {
          enum3 = 17;
          break;
        }
        case 'name-too-long': {
          enum3 = 18;
          break;
        }
        case 'no-device': {
          enum3 = 19;
          break;
        }
        case 'no-entry': {
          enum3 = 20;
          break;
        }
        case 'no-lock': {
          enum3 = 21;
          break;
        }
        case 'insufficient-memory': {
          enum3 = 22;
          break;
        }
        case 'insufficient-space': {
          enum3 = 23;
          break;
        }
        case 'not-directory': {
          enum3 = 24;
          break;
        }
        case 'not-empty': {
          enum3 = 25;
          break;
        }
        case 'not-recoverable': {
          enum3 = 26;
          break;
        }
        case 'unsupported': {
          enum3 = 27;
          break;
        }
        case 'no-tty': {
          enum3 = 28;
          break;
        }
        case 'no-such-device': {
          enum3 = 29;
          break;
        }
        case 'overflow': {
          enum3 = 30;
          break;
        }
        case 'not-permitted': {
          enum3 = 31;
          break;
        }
        case 'pipe': {
          enum3 = 32;
          break;
        }
        case 'read-only': {
          enum3 = 33;
          break;
        }
        case 'invalid-seek': {
          enum3 = 34;
          break;
        }
        case 'text-file-busy': {
          enum3 = 35;
          break;
        }
        case 'cross-device': {
          enum3 = 36;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val3}" is not one of the cases of error-code`);
        }
      }
      dataView(memory0).setInt8(arg2 + 4, enum3, true);
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function trampoline10(arg0, arg1) {
  var handle1 = arg0;
  var rsc0 = handleTable3.get(handle1).rep;
  let ret;
  try {
    ret = { tag: 'ok', val: Descriptor.prototype.appendViaStream.call(rsc0) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  var variant4 = ret;
  switch (variant4.tag) {
    case 'ok': {
      const e = variant4.val;
      dataView(memory0).setInt8(arg1 + 0, 0, true);
      if (!(e instanceof OutputStream)) {
        throw new Error('Resource error: Not a valid "OutputStream" resource.');
      }
      var handle2 = handleCnt1++;
      handleTable1.set(handle2, { rep: e, own: true });
      dataView(memory0).setInt32(arg1 + 4, handle2, true);
      break;
    }
    case 'err': {
      const e = variant4.val;
      dataView(memory0).setInt8(arg1 + 0, 1, true);
      var val3 = e;
      let enum3;
      switch (val3) {
        case 'access': {
          enum3 = 0;
          break;
        }
        case 'would-block': {
          enum3 = 1;
          break;
        }
        case 'already': {
          enum3 = 2;
          break;
        }
        case 'bad-descriptor': {
          enum3 = 3;
          break;
        }
        case 'busy': {
          enum3 = 4;
          break;
        }
        case 'deadlock': {
          enum3 = 5;
          break;
        }
        case 'quota': {
          enum3 = 6;
          break;
        }
        case 'exist': {
          enum3 = 7;
          break;
        }
        case 'file-too-large': {
          enum3 = 8;
          break;
        }
        case 'illegal-byte-sequence': {
          enum3 = 9;
          break;
        }
        case 'in-progress': {
          enum3 = 10;
          break;
        }
        case 'interrupted': {
          enum3 = 11;
          break;
        }
        case 'invalid': {
          enum3 = 12;
          break;
        }
        case 'io': {
          enum3 = 13;
          break;
        }
        case 'is-directory': {
          enum3 = 14;
          break;
        }
        case 'loop': {
          enum3 = 15;
          break;
        }
        case 'too-many-links': {
          enum3 = 16;
          break;
        }
        case 'message-size': {
          enum3 = 17;
          break;
        }
        case 'name-too-long': {
          enum3 = 18;
          break;
        }
        case 'no-device': {
          enum3 = 19;
          break;
        }
        case 'no-entry': {
          enum3 = 20;
          break;
        }
        case 'no-lock': {
          enum3 = 21;
          break;
        }
        case 'insufficient-memory': {
          enum3 = 22;
          break;
        }
        case 'insufficient-space': {
          enum3 = 23;
          break;
        }
        case 'not-directory': {
          enum3 = 24;
          break;
        }
        case 'not-empty': {
          enum3 = 25;
          break;
        }
        case 'not-recoverable': {
          enum3 = 26;
          break;
        }
        case 'unsupported': {
          enum3 = 27;
          break;
        }
        case 'no-tty': {
          enum3 = 28;
          break;
        }
        case 'no-such-device': {
          enum3 = 29;
          break;
        }
        case 'overflow': {
          enum3 = 30;
          break;
        }
        case 'not-permitted': {
          enum3 = 31;
          break;
        }
        case 'pipe': {
          enum3 = 32;
          break;
        }
        case 'read-only': {
          enum3 = 33;
          break;
        }
        case 'invalid-seek': {
          enum3 = 34;
          break;
        }
        case 'text-file-busy': {
          enum3 = 35;
          break;
        }
        case 'cross-device': {
          enum3 = 36;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val3}" is not one of the cases of error-code`);
        }
      }
      dataView(memory0).setInt8(arg1 + 4, enum3, true);
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function trampoline11(arg0, arg1) {
  var handle1 = arg0;
  var rsc0 = handleTable3.get(handle1).rep;
  let ret;
  try {
    ret = { tag: 'ok', val: Descriptor.prototype.getType.call(rsc0) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  var variant4 = ret;
  switch (variant4.tag) {
    case 'ok': {
      const e = variant4.val;
      dataView(memory0).setInt8(arg1 + 0, 0, true);
      var val2 = e;
      let enum2;
      switch (val2) {
        case 'unknown': {
          enum2 = 0;
          break;
        }
        case 'block-device': {
          enum2 = 1;
          break;
        }
        case 'character-device': {
          enum2 = 2;
          break;
        }
        case 'directory': {
          enum2 = 3;
          break;
        }
        case 'fifo': {
          enum2 = 4;
          break;
        }
        case 'symbolic-link': {
          enum2 = 5;
          break;
        }
        case 'regular-file': {
          enum2 = 6;
          break;
        }
        case 'socket': {
          enum2 = 7;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val2}" is not one of the cases of descriptor-type`);
        }
      }
      dataView(memory0).setInt8(arg1 + 1, enum2, true);
      break;
    }
    case 'err': {
      const e = variant4.val;
      dataView(memory0).setInt8(arg1 + 0, 1, true);
      var val3 = e;
      let enum3;
      switch (val3) {
        case 'access': {
          enum3 = 0;
          break;
        }
        case 'would-block': {
          enum3 = 1;
          break;
        }
        case 'already': {
          enum3 = 2;
          break;
        }
        case 'bad-descriptor': {
          enum3 = 3;
          break;
        }
        case 'busy': {
          enum3 = 4;
          break;
        }
        case 'deadlock': {
          enum3 = 5;
          break;
        }
        case 'quota': {
          enum3 = 6;
          break;
        }
        case 'exist': {
          enum3 = 7;
          break;
        }
        case 'file-too-large': {
          enum3 = 8;
          break;
        }
        case 'illegal-byte-sequence': {
          enum3 = 9;
          break;
        }
        case 'in-progress': {
          enum3 = 10;
          break;
        }
        case 'interrupted': {
          enum3 = 11;
          break;
        }
        case 'invalid': {
          enum3 = 12;
          break;
        }
        case 'io': {
          enum3 = 13;
          break;
        }
        case 'is-directory': {
          enum3 = 14;
          break;
        }
        case 'loop': {
          enum3 = 15;
          break;
        }
        case 'too-many-links': {
          enum3 = 16;
          break;
        }
        case 'message-size': {
          enum3 = 17;
          break;
        }
        case 'name-too-long': {
          enum3 = 18;
          break;
        }
        case 'no-device': {
          enum3 = 19;
          break;
        }
        case 'no-entry': {
          enum3 = 20;
          break;
        }
        case 'no-lock': {
          enum3 = 21;
          break;
        }
        case 'insufficient-memory': {
          enum3 = 22;
          break;
        }
        case 'insufficient-space': {
          enum3 = 23;
          break;
        }
        case 'not-directory': {
          enum3 = 24;
          break;
        }
        case 'not-empty': {
          enum3 = 25;
          break;
        }
        case 'not-recoverable': {
          enum3 = 26;
          break;
        }
        case 'unsupported': {
          enum3 = 27;
          break;
        }
        case 'no-tty': {
          enum3 = 28;
          break;
        }
        case 'no-such-device': {
          enum3 = 29;
          break;
        }
        case 'overflow': {
          enum3 = 30;
          break;
        }
        case 'not-permitted': {
          enum3 = 31;
          break;
        }
        case 'pipe': {
          enum3 = 32;
          break;
        }
        case 'read-only': {
          enum3 = 33;
          break;
        }
        case 'invalid-seek': {
          enum3 = 34;
          break;
        }
        case 'text-file-busy': {
          enum3 = 35;
          break;
        }
        case 'cross-device': {
          enum3 = 36;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val3}" is not one of the cases of error-code`);
        }
      }
      dataView(memory0).setInt8(arg1 + 1, enum3, true);
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function trampoline12(arg0, arg1) {
  var handle1 = arg0;
  var rsc0 = handleTable3.get(handle1).rep;
  let ret;
  try {
    ret = { tag: 'ok', val: Descriptor.prototype.stat.call(rsc0) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  var variant11 = ret;
  switch (variant11.tag) {
    case 'ok': {
      const e = variant11.val;
      dataView(memory0).setInt8(arg1 + 0, 0, true);
      var {type: v2_0, linkCount: v2_1, size: v2_2, dataAccessTimestamp: v2_3, dataModificationTimestamp: v2_4, statusChangeTimestamp: v2_5 } = e;
      var val3 = v2_0;
      let enum3;
      switch (val3) {
        case 'unknown': {
          enum3 = 0;
          break;
        }
        case 'block-device': {
          enum3 = 1;
          break;
        }
        case 'character-device': {
          enum3 = 2;
          break;
        }
        case 'directory': {
          enum3 = 3;
          break;
        }
        case 'fifo': {
          enum3 = 4;
          break;
        }
        case 'symbolic-link': {
          enum3 = 5;
          break;
        }
        case 'regular-file': {
          enum3 = 6;
          break;
        }
        case 'socket': {
          enum3 = 7;
          break;
        }
        default: {
          if ((v2_0) instanceof Error) {
            console.error(v2_0);
          }
          
          throw new TypeError(`"${val3}" is not one of the cases of descriptor-type`);
        }
      }
      dataView(memory0).setInt8(arg1 + 8, enum3, true);
      dataView(memory0).setBigInt64(arg1 + 16, toUint64(v2_1), true);
      dataView(memory0).setBigInt64(arg1 + 24, toUint64(v2_2), true);
      var variant5 = v2_3;
      if (variant5 === null || variant5=== undefined) {
        dataView(memory0).setInt8(arg1 + 32, 0, true);
      } else {
        const e = variant5;
        dataView(memory0).setInt8(arg1 + 32, 1, true);
        var {seconds: v4_0, nanoseconds: v4_1 } = e;
        dataView(memory0).setBigInt64(arg1 + 40, toUint64(v4_0), true);
        dataView(memory0).setInt32(arg1 + 48, toUint32(v4_1), true);
      }
      var variant7 = v2_4;
      if (variant7 === null || variant7=== undefined) {
        dataView(memory0).setInt8(arg1 + 56, 0, true);
      } else {
        const e = variant7;
        dataView(memory0).setInt8(arg1 + 56, 1, true);
        var {seconds: v6_0, nanoseconds: v6_1 } = e;
        dataView(memory0).setBigInt64(arg1 + 64, toUint64(v6_0), true);
        dataView(memory0).setInt32(arg1 + 72, toUint32(v6_1), true);
      }
      var variant9 = v2_5;
      if (variant9 === null || variant9=== undefined) {
        dataView(memory0).setInt8(arg1 + 80, 0, true);
      } else {
        const e = variant9;
        dataView(memory0).setInt8(arg1 + 80, 1, true);
        var {seconds: v8_0, nanoseconds: v8_1 } = e;
        dataView(memory0).setBigInt64(arg1 + 88, toUint64(v8_0), true);
        dataView(memory0).setInt32(arg1 + 96, toUint32(v8_1), true);
      }
      break;
    }
    case 'err': {
      const e = variant11.val;
      dataView(memory0).setInt8(arg1 + 0, 1, true);
      var val10 = e;
      let enum10;
      switch (val10) {
        case 'access': {
          enum10 = 0;
          break;
        }
        case 'would-block': {
          enum10 = 1;
          break;
        }
        case 'already': {
          enum10 = 2;
          break;
        }
        case 'bad-descriptor': {
          enum10 = 3;
          break;
        }
        case 'busy': {
          enum10 = 4;
          break;
        }
        case 'deadlock': {
          enum10 = 5;
          break;
        }
        case 'quota': {
          enum10 = 6;
          break;
        }
        case 'exist': {
          enum10 = 7;
          break;
        }
        case 'file-too-large': {
          enum10 = 8;
          break;
        }
        case 'illegal-byte-sequence': {
          enum10 = 9;
          break;
        }
        case 'in-progress': {
          enum10 = 10;
          break;
        }
        case 'interrupted': {
          enum10 = 11;
          break;
        }
        case 'invalid': {
          enum10 = 12;
          break;
        }
        case 'io': {
          enum10 = 13;
          break;
        }
        case 'is-directory': {
          enum10 = 14;
          break;
        }
        case 'loop': {
          enum10 = 15;
          break;
        }
        case 'too-many-links': {
          enum10 = 16;
          break;
        }
        case 'message-size': {
          enum10 = 17;
          break;
        }
        case 'name-too-long': {
          enum10 = 18;
          break;
        }
        case 'no-device': {
          enum10 = 19;
          break;
        }
        case 'no-entry': {
          enum10 = 20;
          break;
        }
        case 'no-lock': {
          enum10 = 21;
          break;
        }
        case 'insufficient-memory': {
          enum10 = 22;
          break;
        }
        case 'insufficient-space': {
          enum10 = 23;
          break;
        }
        case 'not-directory': {
          enum10 = 24;
          break;
        }
        case 'not-empty': {
          enum10 = 25;
          break;
        }
        case 'not-recoverable': {
          enum10 = 26;
          break;
        }
        case 'unsupported': {
          enum10 = 27;
          break;
        }
        case 'no-tty': {
          enum10 = 28;
          break;
        }
        case 'no-such-device': {
          enum10 = 29;
          break;
        }
        case 'overflow': {
          enum10 = 30;
          break;
        }
        case 'not-permitted': {
          enum10 = 31;
          break;
        }
        case 'pipe': {
          enum10 = 32;
          break;
        }
        case 'read-only': {
          enum10 = 33;
          break;
        }
        case 'invalid-seek': {
          enum10 = 34;
          break;
        }
        case 'text-file-busy': {
          enum10 = 35;
          break;
        }
        case 'cross-device': {
          enum10 = 36;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val10}" is not one of the cases of error-code`);
        }
      }
      dataView(memory0).setInt8(arg1 + 8, enum10, true);
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function trampoline13(arg0, arg1) {
  var handle1 = arg0;
  var rsc0 = handleTable0.get(handle1).rep;
  const ret = filesystemErrorCode(rsc0);
  var variant3 = ret;
  if (variant3 === null || variant3=== undefined) {
    dataView(memory0).setInt8(arg1 + 0, 0, true);
  } else {
    const e = variant3;
    dataView(memory0).setInt8(arg1 + 0, 1, true);
    var val2 = e;
    let enum2;
    switch (val2) {
      case 'access': {
        enum2 = 0;
        break;
      }
      case 'would-block': {
        enum2 = 1;
        break;
      }
      case 'already': {
        enum2 = 2;
        break;
      }
      case 'bad-descriptor': {
        enum2 = 3;
        break;
      }
      case 'busy': {
        enum2 = 4;
        break;
      }
      case 'deadlock': {
        enum2 = 5;
        break;
      }
      case 'quota': {
        enum2 = 6;
        break;
      }
      case 'exist': {
        enum2 = 7;
        break;
      }
      case 'file-too-large': {
        enum2 = 8;
        break;
      }
      case 'illegal-byte-sequence': {
        enum2 = 9;
        break;
      }
      case 'in-progress': {
        enum2 = 10;
        break;
      }
      case 'interrupted': {
        enum2 = 11;
        break;
      }
      case 'invalid': {
        enum2 = 12;
        break;
      }
      case 'io': {
        enum2 = 13;
        break;
      }
      case 'is-directory': {
        enum2 = 14;
        break;
      }
      case 'loop': {
        enum2 = 15;
        break;
      }
      case 'too-many-links': {
        enum2 = 16;
        break;
      }
      case 'message-size': {
        enum2 = 17;
        break;
      }
      case 'name-too-long': {
        enum2 = 18;
        break;
      }
      case 'no-device': {
        enum2 = 19;
        break;
      }
      case 'no-entry': {
        enum2 = 20;
        break;
      }
      case 'no-lock': {
        enum2 = 21;
        break;
      }
      case 'insufficient-memory': {
        enum2 = 22;
        break;
      }
      case 'insufficient-space': {
        enum2 = 23;
        break;
      }
      case 'not-directory': {
        enum2 = 24;
        break;
      }
      case 'not-empty': {
        enum2 = 25;
        break;
      }
      case 'not-recoverable': {
        enum2 = 26;
        break;
      }
      case 'unsupported': {
        enum2 = 27;
        break;
      }
      case 'no-tty': {
        enum2 = 28;
        break;
      }
      case 'no-such-device': {
        enum2 = 29;
        break;
      }
      case 'overflow': {
        enum2 = 30;
        break;
      }
      case 'not-permitted': {
        enum2 = 31;
        break;
      }
      case 'pipe': {
        enum2 = 32;
        break;
      }
      case 'read-only': {
        enum2 = 33;
        break;
      }
      case 'invalid-seek': {
        enum2 = 34;
        break;
      }
      case 'text-file-busy': {
        enum2 = 35;
        break;
      }
      case 'cross-device': {
        enum2 = 36;
        break;
      }
      default: {
        if ((e) instanceof Error) {
          console.error(e);
        }
        
        throw new TypeError(`"${val2}" is not one of the cases of error-code`);
      }
    }
    dataView(memory0).setInt8(arg1 + 1, enum2, true);
  }
}

function trampoline14(arg0, arg1) {
  var handle1 = arg0;
  var rsc0 = handleTable1.get(handle1).rep;
  let ret;
  try {
    ret = { tag: 'ok', val: OutputStream.prototype.checkWrite.call(rsc0) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  var variant4 = ret;
  switch (variant4.tag) {
    case 'ok': {
      const e = variant4.val;
      dataView(memory0).setInt8(arg1 + 0, 0, true);
      dataView(memory0).setBigInt64(arg1 + 8, toUint64(e), true);
      break;
    }
    case 'err': {
      const e = variant4.val;
      dataView(memory0).setInt8(arg1 + 0, 1, true);
      var variant3 = e;
      switch (variant3.tag) {
        case 'last-operation-failed': {
          const e = variant3.val;
          dataView(memory0).setInt8(arg1 + 8, 0, true);
          if (!(e instanceof Error$1)) {
            throw new Error('Resource error: Not a valid "Error" resource.');
          }
          var handle2 = handleCnt0++;
          handleTable0.set(handle2, { rep: e, own: true });
          dataView(memory0).setInt32(arg1 + 12, handle2, true);
          break;
        }
        case 'closed': {
          dataView(memory0).setInt8(arg1 + 8, 1, true);
          break;
        }
        default: {
          throw new TypeError(`invalid variant tag value \`${JSON.stringify(variant3.tag)}\` (received \`${variant3}\`) specified for \`StreamError\``);
        }
      }
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function trampoline15(arg0, arg1, arg2, arg3) {
  var handle1 = arg0;
  var rsc0 = handleTable1.get(handle1).rep;
  var ptr2 = arg1;
  var len2 = arg2;
  var result2 = new Uint8Array(memory0.buffer.slice(ptr2, ptr2 + len2 * 1));
  let ret;
  try {
    ret = { tag: 'ok', val: OutputStream.prototype.write.call(rsc0, result2) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  var variant5 = ret;
  switch (variant5.tag) {
    case 'ok': {
      const e = variant5.val;
      dataView(memory0).setInt8(arg3 + 0, 0, true);
      break;
    }
    case 'err': {
      const e = variant5.val;
      dataView(memory0).setInt8(arg3 + 0, 1, true);
      var variant4 = e;
      switch (variant4.tag) {
        case 'last-operation-failed': {
          const e = variant4.val;
          dataView(memory0).setInt8(arg3 + 4, 0, true);
          if (!(e instanceof Error$1)) {
            throw new Error('Resource error: Not a valid "Error" resource.');
          }
          var handle3 = handleCnt0++;
          handleTable0.set(handle3, { rep: e, own: true });
          dataView(memory0).setInt32(arg3 + 8, handle3, true);
          break;
        }
        case 'closed': {
          dataView(memory0).setInt8(arg3 + 4, 1, true);
          break;
        }
        default: {
          throw new TypeError(`invalid variant tag value \`${JSON.stringify(variant4.tag)}\` (received \`${variant4}\`) specified for \`StreamError\``);
        }
      }
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function trampoline16(arg0, arg1, arg2, arg3) {
  var handle1 = arg0;
  var rsc0 = handleTable1.get(handle1).rep;
  var ptr2 = arg1;
  var len2 = arg2;
  var result2 = new Uint8Array(memory0.buffer.slice(ptr2, ptr2 + len2 * 1));
  let ret;
  try {
    ret = { tag: 'ok', val: OutputStream.prototype.blockingWriteAndFlush.call(rsc0, result2) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  var variant5 = ret;
  switch (variant5.tag) {
    case 'ok': {
      const e = variant5.val;
      dataView(memory0).setInt8(arg3 + 0, 0, true);
      break;
    }
    case 'err': {
      const e = variant5.val;
      dataView(memory0).setInt8(arg3 + 0, 1, true);
      var variant4 = e;
      switch (variant4.tag) {
        case 'last-operation-failed': {
          const e = variant4.val;
          dataView(memory0).setInt8(arg3 + 4, 0, true);
          if (!(e instanceof Error$1)) {
            throw new Error('Resource error: Not a valid "Error" resource.');
          }
          var handle3 = handleCnt0++;
          handleTable0.set(handle3, { rep: e, own: true });
          dataView(memory0).setInt32(arg3 + 8, handle3, true);
          break;
        }
        case 'closed': {
          dataView(memory0).setInt8(arg3 + 4, 1, true);
          break;
        }
        default: {
          throw new TypeError(`invalid variant tag value \`${JSON.stringify(variant4.tag)}\` (received \`${variant4}\`) specified for \`StreamError\``);
        }
      }
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function trampoline17(arg0, arg1) {
  var handle1 = arg0;
  var rsc0 = handleTable1.get(handle1).rep;
  let ret;
  try {
    ret = { tag: 'ok', val: OutputStream.prototype.blockingFlush.call(rsc0) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  var variant4 = ret;
  switch (variant4.tag) {
    case 'ok': {
      const e = variant4.val;
      dataView(memory0).setInt8(arg1 + 0, 0, true);
      break;
    }
    case 'err': {
      const e = variant4.val;
      dataView(memory0).setInt8(arg1 + 0, 1, true);
      var variant3 = e;
      switch (variant3.tag) {
        case 'last-operation-failed': {
          const e = variant3.val;
          dataView(memory0).setInt8(arg1 + 4, 0, true);
          if (!(e instanceof Error$1)) {
            throw new Error('Resource error: Not a valid "Error" resource.');
          }
          var handle2 = handleCnt0++;
          handleTable0.set(handle2, { rep: e, own: true });
          dataView(memory0).setInt32(arg1 + 8, handle2, true);
          break;
        }
        case 'closed': {
          dataView(memory0).setInt8(arg1 + 4, 1, true);
          break;
        }
        default: {
          throw new TypeError(`invalid variant tag value \`${JSON.stringify(variant3.tag)}\` (received \`${variant3}\`) specified for \`StreamError\``);
        }
      }
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function trampoline18(arg0) {
  const ret = getEnvironment();
  var vec3 = ret;
  var len3 = vec3.length;
  var result3 = realloc0(0, 0, 4, len3 * 16);
  for (let i = 0; i < vec3.length; i++) {
    const e = vec3[i];
    const base = result3 + i * 16;var [tuple0_0, tuple0_1] = e;
    var ptr1 = utf8Encode(tuple0_0, realloc0, memory0);
    var len1 = utf8EncodedLen;
    dataView(memory0).setInt32(base + 4, len1, true);
    dataView(memory0).setInt32(base + 0, ptr1, true);
    var ptr2 = utf8Encode(tuple0_1, realloc0, memory0);
    var len2 = utf8EncodedLen;
    dataView(memory0).setInt32(base + 12, len2, true);
    dataView(memory0).setInt32(base + 8, ptr2, true);
  }
  dataView(memory0).setInt32(arg0 + 4, len3, true);
  dataView(memory0).setInt32(arg0 + 0, result3, true);
}
let exports3;
let exports4;
let exports5;

function trampoline26() {
  const ret = getStderr();
  if (!(ret instanceof OutputStream$1)) {
    throw new Error('Resource error: Not a valid "OutputStream" resource.');
  }
  var handle0 = handleCnt4++;
  handleTable4.set(handle0, { rep: ret, own: true });
  return handle0;
}

function trampoline27(arg0) {
  let variant0;
  switch (arg0) {
    case 0: {
      variant0= {
        tag: 'ok',
        val: undefined
      };
      break;
    }
    case 1: {
      variant0= {
        tag: 'err',
        val: undefined
      };
      break;
    }
    default: {
      throw new TypeError('invalid variant discriminant for expected');
    }
  }
  exit(variant0);
}

function trampoline28() {
  const ret = getStdin();
  if (!(ret instanceof InputStream$1)) {
    throw new Error('Resource error: Not a valid "InputStream" resource.');
  }
  var handle0 = handleCnt6++;
  handleTable6.set(handle0, { rep: ret, own: true });
  return handle0;
}

function trampoline29() {
  const ret = getStdout();
  if (!(ret instanceof OutputStream$1)) {
    throw new Error('Resource error: Not a valid "OutputStream" resource.');
  }
  var handle0 = handleCnt4++;
  handleTable4.set(handle0, { rep: ret, own: true });
  return handle0;
}
let exports6;
let memory1;
let exports7;

function trampoline31(arg0) {
  const ret = getDirectories();
  var vec3 = ret;
  var len3 = vec3.length;
  var result3 = realloc1(0, 0, 4, len3 * 12);
  for (let i = 0; i < vec3.length; i++) {
    const e = vec3[i];
    const base = result3 + i * 12;var [tuple0_0, tuple0_1] = e;
    if (!(tuple0_0 instanceof Descriptor$1)) {
      throw new Error('Resource error: Not a valid "Descriptor" resource.');
    }
    var handle1 = handleCnt7++;
    handleTable7.set(handle1, { rep: tuple0_0, own: true });
    dataView(memory1).setInt32(base + 0, handle1, true);
    var ptr2 = utf8Encode(tuple0_1, realloc1, memory1);
    var len2 = utf8EncodedLen;
    dataView(memory1).setInt32(base + 8, len2, true);
    dataView(memory1).setInt32(base + 4, ptr2, true);
  }
  dataView(memory1).setInt32(arg0 + 4, len3, true);
  dataView(memory1).setInt32(arg0 + 0, result3, true);
}
let realloc1;

function trampoline32(arg0, arg1, arg2) {
  var handle1 = arg0;
  var rsc0 = handleTable7.get(handle1).rep;
  let ret;
  try {
    ret = { tag: 'ok', val: Descriptor$1.prototype.writeViaStream.call(rsc0, BigInt.asUintN(64, arg1)) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  var variant4 = ret;
  switch (variant4.tag) {
    case 'ok': {
      const e = variant4.val;
      dataView(memory1).setInt8(arg2 + 0, 0, true);
      if (!(e instanceof OutputStream$1)) {
        throw new Error('Resource error: Not a valid "OutputStream" resource.');
      }
      var handle2 = handleCnt4++;
      handleTable4.set(handle2, { rep: e, own: true });
      dataView(memory1).setInt32(arg2 + 4, handle2, true);
      break;
    }
    case 'err': {
      const e = variant4.val;
      dataView(memory1).setInt8(arg2 + 0, 1, true);
      var val3 = e;
      let enum3;
      switch (val3) {
        case 'access': {
          enum3 = 0;
          break;
        }
        case 'would-block': {
          enum3 = 1;
          break;
        }
        case 'already': {
          enum3 = 2;
          break;
        }
        case 'bad-descriptor': {
          enum3 = 3;
          break;
        }
        case 'busy': {
          enum3 = 4;
          break;
        }
        case 'deadlock': {
          enum3 = 5;
          break;
        }
        case 'quota': {
          enum3 = 6;
          break;
        }
        case 'exist': {
          enum3 = 7;
          break;
        }
        case 'file-too-large': {
          enum3 = 8;
          break;
        }
        case 'illegal-byte-sequence': {
          enum3 = 9;
          break;
        }
        case 'in-progress': {
          enum3 = 10;
          break;
        }
        case 'interrupted': {
          enum3 = 11;
          break;
        }
        case 'invalid': {
          enum3 = 12;
          break;
        }
        case 'io': {
          enum3 = 13;
          break;
        }
        case 'is-directory': {
          enum3 = 14;
          break;
        }
        case 'loop': {
          enum3 = 15;
          break;
        }
        case 'too-many-links': {
          enum3 = 16;
          break;
        }
        case 'message-size': {
          enum3 = 17;
          break;
        }
        case 'name-too-long': {
          enum3 = 18;
          break;
        }
        case 'no-device': {
          enum3 = 19;
          break;
        }
        case 'no-entry': {
          enum3 = 20;
          break;
        }
        case 'no-lock': {
          enum3 = 21;
          break;
        }
        case 'insufficient-memory': {
          enum3 = 22;
          break;
        }
        case 'insufficient-space': {
          enum3 = 23;
          break;
        }
        case 'not-directory': {
          enum3 = 24;
          break;
        }
        case 'not-empty': {
          enum3 = 25;
          break;
        }
        case 'not-recoverable': {
          enum3 = 26;
          break;
        }
        case 'unsupported': {
          enum3 = 27;
          break;
        }
        case 'no-tty': {
          enum3 = 28;
          break;
        }
        case 'no-such-device': {
          enum3 = 29;
          break;
        }
        case 'overflow': {
          enum3 = 30;
          break;
        }
        case 'not-permitted': {
          enum3 = 31;
          break;
        }
        case 'pipe': {
          enum3 = 32;
          break;
        }
        case 'read-only': {
          enum3 = 33;
          break;
        }
        case 'invalid-seek': {
          enum3 = 34;
          break;
        }
        case 'text-file-busy': {
          enum3 = 35;
          break;
        }
        case 'cross-device': {
          enum3 = 36;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val3}" is not one of the cases of error-code`);
        }
      }
      dataView(memory1).setInt8(arg2 + 4, enum3, true);
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function trampoline33(arg0, arg1) {
  var handle1 = arg0;
  var rsc0 = handleTable7.get(handle1).rep;
  let ret;
  try {
    ret = { tag: 'ok', val: Descriptor$1.prototype.appendViaStream.call(rsc0) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  var variant4 = ret;
  switch (variant4.tag) {
    case 'ok': {
      const e = variant4.val;
      dataView(memory1).setInt8(arg1 + 0, 0, true);
      if (!(e instanceof OutputStream$1)) {
        throw new Error('Resource error: Not a valid "OutputStream" resource.');
      }
      var handle2 = handleCnt4++;
      handleTable4.set(handle2, { rep: e, own: true });
      dataView(memory1).setInt32(arg1 + 4, handle2, true);
      break;
    }
    case 'err': {
      const e = variant4.val;
      dataView(memory1).setInt8(arg1 + 0, 1, true);
      var val3 = e;
      let enum3;
      switch (val3) {
        case 'access': {
          enum3 = 0;
          break;
        }
        case 'would-block': {
          enum3 = 1;
          break;
        }
        case 'already': {
          enum3 = 2;
          break;
        }
        case 'bad-descriptor': {
          enum3 = 3;
          break;
        }
        case 'busy': {
          enum3 = 4;
          break;
        }
        case 'deadlock': {
          enum3 = 5;
          break;
        }
        case 'quota': {
          enum3 = 6;
          break;
        }
        case 'exist': {
          enum3 = 7;
          break;
        }
        case 'file-too-large': {
          enum3 = 8;
          break;
        }
        case 'illegal-byte-sequence': {
          enum3 = 9;
          break;
        }
        case 'in-progress': {
          enum3 = 10;
          break;
        }
        case 'interrupted': {
          enum3 = 11;
          break;
        }
        case 'invalid': {
          enum3 = 12;
          break;
        }
        case 'io': {
          enum3 = 13;
          break;
        }
        case 'is-directory': {
          enum3 = 14;
          break;
        }
        case 'loop': {
          enum3 = 15;
          break;
        }
        case 'too-many-links': {
          enum3 = 16;
          break;
        }
        case 'message-size': {
          enum3 = 17;
          break;
        }
        case 'name-too-long': {
          enum3 = 18;
          break;
        }
        case 'no-device': {
          enum3 = 19;
          break;
        }
        case 'no-entry': {
          enum3 = 20;
          break;
        }
        case 'no-lock': {
          enum3 = 21;
          break;
        }
        case 'insufficient-memory': {
          enum3 = 22;
          break;
        }
        case 'insufficient-space': {
          enum3 = 23;
          break;
        }
        case 'not-directory': {
          enum3 = 24;
          break;
        }
        case 'not-empty': {
          enum3 = 25;
          break;
        }
        case 'not-recoverable': {
          enum3 = 26;
          break;
        }
        case 'unsupported': {
          enum3 = 27;
          break;
        }
        case 'no-tty': {
          enum3 = 28;
          break;
        }
        case 'no-such-device': {
          enum3 = 29;
          break;
        }
        case 'overflow': {
          enum3 = 30;
          break;
        }
        case 'not-permitted': {
          enum3 = 31;
          break;
        }
        case 'pipe': {
          enum3 = 32;
          break;
        }
        case 'read-only': {
          enum3 = 33;
          break;
        }
        case 'invalid-seek': {
          enum3 = 34;
          break;
        }
        case 'text-file-busy': {
          enum3 = 35;
          break;
        }
        case 'cross-device': {
          enum3 = 36;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val3}" is not one of the cases of error-code`);
        }
      }
      dataView(memory1).setInt8(arg1 + 4, enum3, true);
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function trampoline34(arg0, arg1) {
  var handle1 = arg0;
  var rsc0 = handleTable7.get(handle1).rep;
  let ret;
  try {
    ret = { tag: 'ok', val: Descriptor$1.prototype.getType.call(rsc0) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  var variant4 = ret;
  switch (variant4.tag) {
    case 'ok': {
      const e = variant4.val;
      dataView(memory1).setInt8(arg1 + 0, 0, true);
      var val2 = e;
      let enum2;
      switch (val2) {
        case 'unknown': {
          enum2 = 0;
          break;
        }
        case 'block-device': {
          enum2 = 1;
          break;
        }
        case 'character-device': {
          enum2 = 2;
          break;
        }
        case 'directory': {
          enum2 = 3;
          break;
        }
        case 'fifo': {
          enum2 = 4;
          break;
        }
        case 'symbolic-link': {
          enum2 = 5;
          break;
        }
        case 'regular-file': {
          enum2 = 6;
          break;
        }
        case 'socket': {
          enum2 = 7;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val2}" is not one of the cases of descriptor-type`);
        }
      }
      dataView(memory1).setInt8(arg1 + 1, enum2, true);
      break;
    }
    case 'err': {
      const e = variant4.val;
      dataView(memory1).setInt8(arg1 + 0, 1, true);
      var val3 = e;
      let enum3;
      switch (val3) {
        case 'access': {
          enum3 = 0;
          break;
        }
        case 'would-block': {
          enum3 = 1;
          break;
        }
        case 'already': {
          enum3 = 2;
          break;
        }
        case 'bad-descriptor': {
          enum3 = 3;
          break;
        }
        case 'busy': {
          enum3 = 4;
          break;
        }
        case 'deadlock': {
          enum3 = 5;
          break;
        }
        case 'quota': {
          enum3 = 6;
          break;
        }
        case 'exist': {
          enum3 = 7;
          break;
        }
        case 'file-too-large': {
          enum3 = 8;
          break;
        }
        case 'illegal-byte-sequence': {
          enum3 = 9;
          break;
        }
        case 'in-progress': {
          enum3 = 10;
          break;
        }
        case 'interrupted': {
          enum3 = 11;
          break;
        }
        case 'invalid': {
          enum3 = 12;
          break;
        }
        case 'io': {
          enum3 = 13;
          break;
        }
        case 'is-directory': {
          enum3 = 14;
          break;
        }
        case 'loop': {
          enum3 = 15;
          break;
        }
        case 'too-many-links': {
          enum3 = 16;
          break;
        }
        case 'message-size': {
          enum3 = 17;
          break;
        }
        case 'name-too-long': {
          enum3 = 18;
          break;
        }
        case 'no-device': {
          enum3 = 19;
          break;
        }
        case 'no-entry': {
          enum3 = 20;
          break;
        }
        case 'no-lock': {
          enum3 = 21;
          break;
        }
        case 'insufficient-memory': {
          enum3 = 22;
          break;
        }
        case 'insufficient-space': {
          enum3 = 23;
          break;
        }
        case 'not-directory': {
          enum3 = 24;
          break;
        }
        case 'not-empty': {
          enum3 = 25;
          break;
        }
        case 'not-recoverable': {
          enum3 = 26;
          break;
        }
        case 'unsupported': {
          enum3 = 27;
          break;
        }
        case 'no-tty': {
          enum3 = 28;
          break;
        }
        case 'no-such-device': {
          enum3 = 29;
          break;
        }
        case 'overflow': {
          enum3 = 30;
          break;
        }
        case 'not-permitted': {
          enum3 = 31;
          break;
        }
        case 'pipe': {
          enum3 = 32;
          break;
        }
        case 'read-only': {
          enum3 = 33;
          break;
        }
        case 'invalid-seek': {
          enum3 = 34;
          break;
        }
        case 'text-file-busy': {
          enum3 = 35;
          break;
        }
        case 'cross-device': {
          enum3 = 36;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val3}" is not one of the cases of error-code`);
        }
      }
      dataView(memory1).setInt8(arg1 + 1, enum3, true);
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function trampoline35(arg0, arg1) {
  var handle1 = arg0;
  var rsc0 = handleTable5.get(handle1).rep;
  const ret = filesystemErrorCode(rsc0);
  var variant3 = ret;
  if (variant3 === null || variant3=== undefined) {
    dataView(memory1).setInt8(arg1 + 0, 0, true);
  } else {
    const e = variant3;
    dataView(memory1).setInt8(arg1 + 0, 1, true);
    var val2 = e;
    let enum2;
    switch (val2) {
      case 'access': {
        enum2 = 0;
        break;
      }
      case 'would-block': {
        enum2 = 1;
        break;
      }
      case 'already': {
        enum2 = 2;
        break;
      }
      case 'bad-descriptor': {
        enum2 = 3;
        break;
      }
      case 'busy': {
        enum2 = 4;
        break;
      }
      case 'deadlock': {
        enum2 = 5;
        break;
      }
      case 'quota': {
        enum2 = 6;
        break;
      }
      case 'exist': {
        enum2 = 7;
        break;
      }
      case 'file-too-large': {
        enum2 = 8;
        break;
      }
      case 'illegal-byte-sequence': {
        enum2 = 9;
        break;
      }
      case 'in-progress': {
        enum2 = 10;
        break;
      }
      case 'interrupted': {
        enum2 = 11;
        break;
      }
      case 'invalid': {
        enum2 = 12;
        break;
      }
      case 'io': {
        enum2 = 13;
        break;
      }
      case 'is-directory': {
        enum2 = 14;
        break;
      }
      case 'loop': {
        enum2 = 15;
        break;
      }
      case 'too-many-links': {
        enum2 = 16;
        break;
      }
      case 'message-size': {
        enum2 = 17;
        break;
      }
      case 'name-too-long': {
        enum2 = 18;
        break;
      }
      case 'no-device': {
        enum2 = 19;
        break;
      }
      case 'no-entry': {
        enum2 = 20;
        break;
      }
      case 'no-lock': {
        enum2 = 21;
        break;
      }
      case 'insufficient-memory': {
        enum2 = 22;
        break;
      }
      case 'insufficient-space': {
        enum2 = 23;
        break;
      }
      case 'not-directory': {
        enum2 = 24;
        break;
      }
      case 'not-empty': {
        enum2 = 25;
        break;
      }
      case 'not-recoverable': {
        enum2 = 26;
        break;
      }
      case 'unsupported': {
        enum2 = 27;
        break;
      }
      case 'no-tty': {
        enum2 = 28;
        break;
      }
      case 'no-such-device': {
        enum2 = 29;
        break;
      }
      case 'overflow': {
        enum2 = 30;
        break;
      }
      case 'not-permitted': {
        enum2 = 31;
        break;
      }
      case 'pipe': {
        enum2 = 32;
        break;
      }
      case 'read-only': {
        enum2 = 33;
        break;
      }
      case 'invalid-seek': {
        enum2 = 34;
        break;
      }
      case 'text-file-busy': {
        enum2 = 35;
        break;
      }
      case 'cross-device': {
        enum2 = 36;
        break;
      }
      default: {
        if ((e) instanceof Error) {
          console.error(e);
        }
        
        throw new TypeError(`"${val2}" is not one of the cases of error-code`);
      }
    }
    dataView(memory1).setInt8(arg1 + 1, enum2, true);
  }
}

function trampoline36(arg0, arg1) {
  var handle1 = arg0;
  var rsc0 = handleTable4.get(handle1).rep;
  let ret;
  try {
    ret = { tag: 'ok', val: OutputStream$1.prototype.checkWrite.call(rsc0) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  var variant4 = ret;
  switch (variant4.tag) {
    case 'ok': {
      const e = variant4.val;
      dataView(memory1).setInt8(arg1 + 0, 0, true);
      dataView(memory1).setBigInt64(arg1 + 8, toUint64(e), true);
      break;
    }
    case 'err': {
      const e = variant4.val;
      dataView(memory1).setInt8(arg1 + 0, 1, true);
      var variant3 = e;
      switch (variant3.tag) {
        case 'last-operation-failed': {
          const e = variant3.val;
          dataView(memory1).setInt8(arg1 + 8, 0, true);
          if (!(e instanceof Error$2)) {
            throw new Error('Resource error: Not a valid "Error" resource.');
          }
          var handle2 = handleCnt5++;
          handleTable5.set(handle2, { rep: e, own: true });
          dataView(memory1).setInt32(arg1 + 12, handle2, true);
          break;
        }
        case 'closed': {
          dataView(memory1).setInt8(arg1 + 8, 1, true);
          break;
        }
        default: {
          throw new TypeError(`invalid variant tag value \`${JSON.stringify(variant3.tag)}\` (received \`${variant3}\`) specified for \`StreamError\``);
        }
      }
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function trampoline37(arg0, arg1, arg2, arg3) {
  var handle1 = arg0;
  var rsc0 = handleTable4.get(handle1).rep;
  var ptr2 = arg1;
  var len2 = arg2;
  var result2 = new Uint8Array(memory1.buffer.slice(ptr2, ptr2 + len2 * 1));
  let ret;
  try {
    ret = { tag: 'ok', val: OutputStream$1.prototype.write.call(rsc0, result2) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  var variant5 = ret;
  switch (variant5.tag) {
    case 'ok': {
      const e = variant5.val;
      dataView(memory1).setInt8(arg3 + 0, 0, true);
      break;
    }
    case 'err': {
      const e = variant5.val;
      dataView(memory1).setInt8(arg3 + 0, 1, true);
      var variant4 = e;
      switch (variant4.tag) {
        case 'last-operation-failed': {
          const e = variant4.val;
          dataView(memory1).setInt8(arg3 + 4, 0, true);
          if (!(e instanceof Error$2)) {
            throw new Error('Resource error: Not a valid "Error" resource.');
          }
          var handle3 = handleCnt5++;
          handleTable5.set(handle3, { rep: e, own: true });
          dataView(memory1).setInt32(arg3 + 8, handle3, true);
          break;
        }
        case 'closed': {
          dataView(memory1).setInt8(arg3 + 4, 1, true);
          break;
        }
        default: {
          throw new TypeError(`invalid variant tag value \`${JSON.stringify(variant4.tag)}\` (received \`${variant4}\`) specified for \`StreamError\``);
        }
      }
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function trampoline38(arg0, arg1, arg2, arg3) {
  var handle1 = arg0;
  var rsc0 = handleTable4.get(handle1).rep;
  var ptr2 = arg1;
  var len2 = arg2;
  var result2 = new Uint8Array(memory1.buffer.slice(ptr2, ptr2 + len2 * 1));
  let ret;
  try {
    ret = { tag: 'ok', val: OutputStream$1.prototype.blockingWriteAndFlush.call(rsc0, result2) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  var variant5 = ret;
  switch (variant5.tag) {
    case 'ok': {
      const e = variant5.val;
      dataView(memory1).setInt8(arg3 + 0, 0, true);
      break;
    }
    case 'err': {
      const e = variant5.val;
      dataView(memory1).setInt8(arg3 + 0, 1, true);
      var variant4 = e;
      switch (variant4.tag) {
        case 'last-operation-failed': {
          const e = variant4.val;
          dataView(memory1).setInt8(arg3 + 4, 0, true);
          if (!(e instanceof Error$2)) {
            throw new Error('Resource error: Not a valid "Error" resource.');
          }
          var handle3 = handleCnt5++;
          handleTable5.set(handle3, { rep: e, own: true });
          dataView(memory1).setInt32(arg3 + 8, handle3, true);
          break;
        }
        case 'closed': {
          dataView(memory1).setInt8(arg3 + 4, 1, true);
          break;
        }
        default: {
          throw new TypeError(`invalid variant tag value \`${JSON.stringify(variant4.tag)}\` (received \`${variant4}\`) specified for \`StreamError\``);
        }
      }
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function trampoline39(arg0, arg1) {
  var handle1 = arg0;
  var rsc0 = handleTable4.get(handle1).rep;
  let ret;
  try {
    ret = { tag: 'ok', val: OutputStream$1.prototype.blockingFlush.call(rsc0) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  var variant4 = ret;
  switch (variant4.tag) {
    case 'ok': {
      const e = variant4.val;
      dataView(memory1).setInt8(arg1 + 0, 0, true);
      break;
    }
    case 'err': {
      const e = variant4.val;
      dataView(memory1).setInt8(arg1 + 0, 1, true);
      var variant3 = e;
      switch (variant3.tag) {
        case 'last-operation-failed': {
          const e = variant3.val;
          dataView(memory1).setInt8(arg1 + 4, 0, true);
          if (!(e instanceof Error$2)) {
            throw new Error('Resource error: Not a valid "Error" resource.');
          }
          var handle2 = handleCnt5++;
          handleTable5.set(handle2, { rep: e, own: true });
          dataView(memory1).setInt32(arg1 + 8, handle2, true);
          break;
        }
        case 'closed': {
          dataView(memory1).setInt8(arg1 + 4, 1, true);
          break;
        }
        default: {
          throw new TypeError(`invalid variant tag value \`${JSON.stringify(variant3.tag)}\` (received \`${variant3}\`) specified for \`StreamError\``);
        }
      }
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function trampoline40(arg0) {
  const ret = getEnvironment();
  var vec3 = ret;
  var len3 = vec3.length;
  var result3 = realloc1(0, 0, 4, len3 * 16);
  for (let i = 0; i < vec3.length; i++) {
    const e = vec3[i];
    const base = result3 + i * 16;var [tuple0_0, tuple0_1] = e;
    var ptr1 = utf8Encode(tuple0_0, realloc1, memory1);
    var len1 = utf8EncodedLen;
    dataView(memory1).setInt32(base + 4, len1, true);
    dataView(memory1).setInt32(base + 0, ptr1, true);
    var ptr2 = utf8Encode(tuple0_1, realloc1, memory1);
    var len2 = utf8EncodedLen;
    dataView(memory1).setInt32(base + 12, len2, true);
    dataView(memory1).setInt32(base + 8, ptr2, true);
  }
  dataView(memory1).setInt32(arg0 + 4, len3, true);
  dataView(memory1).setInt32(arg0 + 0, result3, true);
}

function trampoline41(arg0) {
  const ret = getTerminalStdin();
  var variant1 = ret;
  if (variant1 === null || variant1=== undefined) {
    dataView(memory1).setInt8(arg0 + 0, 0, true);
  } else {
    const e = variant1;
    dataView(memory1).setInt8(arg0 + 0, 1, true);
    if (!(e instanceof TerminalInput)) {
      throw new Error('Resource error: Not a valid "TerminalInput" resource.');
    }
    var handle0 = handleCnt9++;
    handleTable9.set(handle0, { rep: e, own: true });
    dataView(memory1).setInt32(arg0 + 4, handle0, true);
  }
}

function trampoline42(arg0) {
  const ret = getTerminalStdout();
  var variant1 = ret;
  if (variant1 === null || variant1=== undefined) {
    dataView(memory1).setInt8(arg0 + 0, 0, true);
  } else {
    const e = variant1;
    dataView(memory1).setInt8(arg0 + 0, 1, true);
    if (!(e instanceof TerminalOutput)) {
      throw new Error('Resource error: Not a valid "TerminalOutput" resource.');
    }
    var handle0 = handleCnt10++;
    handleTable10.set(handle0, { rep: e, own: true });
    dataView(memory1).setInt32(arg0 + 4, handle0, true);
  }
}

function trampoline43(arg0) {
  const ret = getTerminalStderr();
  var variant1 = ret;
  if (variant1 === null || variant1=== undefined) {
    dataView(memory1).setInt8(arg0 + 0, 0, true);
  } else {
    const e = variant1;
    dataView(memory1).setInt8(arg0 + 0, 1, true);
    if (!(e instanceof TerminalOutput)) {
      throw new Error('Resource error: Not a valid "TerminalOutput" resource.');
    }
    var handle0 = handleCnt10++;
    handleTable10.set(handle0, { rep: e, own: true });
    dataView(memory1).setInt32(arg0 + 4, handle0, true);
  }
}
let exports8;
let postReturn0;
function trampoline0(handle) {
  const handleEntry = handleTable12.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable12.delete(handle);
  if (handleEntry.own && handleEntry.rep[symbolDispose]) {
    handleEntry.rep[symbolDispose]();
  }
}
function trampoline1(handle) {
  const handleEntry = handleTable13.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable13.delete(handle);
  if (handleEntry.own && handleEntry.rep[symbolDispose]) {
    handleEntry.rep[symbolDispose]();
  }
}
function trampoline2(handle) {
  const handleEntry = handleTable14.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable14.delete(handle);
  if (handleEntry.own && handleEntry.rep[symbolDispose]) {
    handleEntry.rep[symbolDispose]();
  }
}
function trampoline3(handle) {
  const handleEntry = handleTable11.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable11.delete(handle);
  if (handleEntry.own && handleEntry.rep[symbolDispose]) {
    handleEntry.rep[symbolDispose]();
  }
}
function trampoline19(handle) {
  const handleEntry = handleTable16.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable16.delete(handle);
  if (handleEntry.own && handleEntry.rep[symbolDispose]) {
    handleEntry.rep[symbolDispose]();
  }
}
function trampoline20(handle) {
  const handleEntry = handleTable17.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable17.delete(handle);
  if (handleEntry.own && handleEntry.rep[symbolDispose]) {
    handleEntry.rep[symbolDispose]();
  }
}
function trampoline21(handle) {
  const handleEntry = handleTable18.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable18.delete(handle);
  if (handleEntry.own && handleEntry.rep[symbolDispose]) {
    handleEntry.rep[symbolDispose]();
  }
}
function trampoline22(handle) {
  const handleEntry = handleTable15.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable15.delete(handle);
  if (handleEntry.own && handleEntry.rep[symbolDispose]) {
    handleEntry.rep[symbolDispose]();
  }
}
function trampoline23(handle) {
  const handleEntry = handleTable19.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable19.delete(handle);
  if (handleEntry.own && handleEntry.rep[symbolDispose]) {
    handleEntry.rep[symbolDispose]();
  }
}
function trampoline24(handle) {
  const handleEntry = handleTable20.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable20.delete(handle);
  if (handleEntry.own && handleEntry.rep[symbolDispose]) {
    handleEntry.rep[symbolDispose]();
  }
}
function trampoline25(handle) {
  const handleEntry = handleTable21.get(handle);
  if (!handleEntry) {
    throw new Error(`Resource error: Invalid handle ${handle}`);
  }
  handleTable21.delete(handle);
  if (handleEntry.own && handleEntry.rep[symbolDispose]) {
    handleEntry.rep[symbolDispose]();
  }
}
function trampoline30(from_ptr, len, to_ptr) {
  new Uint8Array(memory1.buffer, to_ptr, len).set(new Uint8Array(memory0.buffer, from_ptr, len));
}


function goodbyeWorld() {
  const ret = exports5['goodbye-world']();
  var ptr0 = dataView(memory1).getInt32(ret + 0, true);
  var len0 = dataView(memory1).getInt32(ret + 4, true);
  var result0 = utf8Decoder.decode(new Uint8Array(memory1.buffer, ptr0, len0));
  postReturn0(ret);
  return result0;
}
const handleTable0= new Map();
let handleCnt0 = 0;
const handleTable1= new Map();
let handleCnt1 = 0;
const handleTable2= new Map();
let handleCnt2 = 0;
const handleTable3= new Map();
let handleCnt3 = 0;
const handleTable4= new Map();
let handleCnt4 = 0;
const handleTable5= new Map();
let handleCnt5 = 0;
const handleTable6= new Map();
let handleCnt6 = 0;
const handleTable7= new Map();
let handleCnt7 = 0;
const handleTable8= new Map();
let handleCnt8 = 0;
const handleTable9= new Map();
let handleCnt9 = 0;
const handleTable10= new Map();
let handleCnt10 = 0;

const $init = (async() => {
  const module0 = fetchCompile(new URL('./simple.core.wasm', import.meta.url));
  const module1 = fetchCompile(new URL('./simple.core2.wasm', import.meta.url));
  const module2 = base64Compile('AGFzbQEAAAABKQdgAX8AYAN/fn8AYAJ/fwBgBH9/f38AYAR/f39/AX9gAn9/AX9gAX8AAxAPAAECAgICAgMDAgAEBQUGBAUBcAEPDwdNEAEwAAABMQABATIAAgEzAAMBNAAEATUABQE2AAYBNwAHATgACAE5AAkCMTAACgIxMQALAjEyAAwCMTMADQIxNAAOCCRpbXBvcnRzAQAKvQEPCQAgAEEAEQAACw0AIAAgASACQQERAQALCwAgACABQQIRAgALCwAgACABQQMRAgALCwAgACABQQQRAgALCwAgACABQQURAgALCwAgACABQQYRAgALDwAgACABIAIgA0EHEQMACw8AIAAgASACIANBCBEDAAsLACAAIAFBCRECAAsJACAAQQoRAAALDwAgACABIAIgA0ELEQQACwsAIAAgAUEMEQUACwsAIAAgAUENEQUACwkAIABBDhEGAAsALglwcm9kdWNlcnMBDHByb2Nlc3NlZC1ieQENd2l0LWNvbXBvbmVudAYwLjIwLjAAmAcEbmFtZQATEndpdC1jb21wb25lbnQ6c2hpbQH7Bg8AN2luZGlyZWN0LXdhc2k6ZmlsZXN5c3RlbS9wcmVvcGVuc0AwLjIuMC1nZXQtZGlyZWN0b3JpZXMBSGluZGlyZWN0LXdhc2k6ZmlsZXN5c3RlbS90eXBlc0AwLjIuMC1bbWV0aG9kXWRlc2NyaXB0b3Iud3JpdGUtdmlhLXN0cmVhbQJJaW5kaXJlY3Qtd2FzaTpmaWxlc3lzdGVtL3R5cGVzQDAuMi4wLVttZXRob2RdZGVzY3JpcHRvci5hcHBlbmQtdmlhLXN0cmVhbQNAaW5kaXJlY3Qtd2FzaTpmaWxlc3lzdGVtL3R5cGVzQDAuMi4wLVttZXRob2RdZGVzY3JpcHRvci5nZXQtdHlwZQQ8aW5kaXJlY3Qtd2FzaTpmaWxlc3lzdGVtL3R5cGVzQDAuMi4wLVttZXRob2RdZGVzY3JpcHRvci5zdGF0BTppbmRpcmVjdC13YXNpOmZpbGVzeXN0ZW0vdHlwZXNAMC4yLjAtZmlsZXN5c3RlbS1lcnJvci1jb2RlBkBpbmRpcmVjdC13YXNpOmlvL3N0cmVhbXNAMC4yLjAtW21ldGhvZF1vdXRwdXQtc3RyZWFtLmNoZWNrLXdyaXRlBzppbmRpcmVjdC13YXNpOmlvL3N0cmVhbXNAMC4yLjAtW21ldGhvZF1vdXRwdXQtc3RyZWFtLndyaXRlCE1pbmRpcmVjdC13YXNpOmlvL3N0cmVhbXNAMC4yLjAtW21ldGhvZF1vdXRwdXQtc3RyZWFtLmJsb2NraW5nLXdyaXRlLWFuZC1mbHVzaAlDaW5kaXJlY3Qtd2FzaTppby9zdHJlYW1zQDAuMi4wLVttZXRob2Rdb3V0cHV0LXN0cmVhbS5ibG9ja2luZy1mbHVzaAozaW5kaXJlY3Qtd2FzaTpjbGkvZW52aXJvbm1lbnRAMC4yLjAtZ2V0LWVudmlyb25tZW50CyVhZGFwdC13YXNpX3NuYXBzaG90X3ByZXZpZXcxLWZkX3dyaXRlDChhZGFwdC13YXNpX3NuYXBzaG90X3ByZXZpZXcxLWVudmlyb25fZ2V0DS5hZGFwdC13YXNpX3NuYXBzaG90X3ByZXZpZXcxLWVudmlyb25fc2l6ZXNfZ2V0DiZhZGFwdC13YXNpX3NuYXBzaG90X3ByZXZpZXcxLXByb2NfZXhpdA');
  const module3 = base64Compile('AGFzbQEAAAABKQdgAX8AYAN/fn8AYAJ/fwBgBH9/f38AYAR/f39/AX9gAn9/AX9gAX8AAmAQAAEwAAAAATEAAQABMgACAAEzAAIAATQAAgABNQACAAE2AAIAATcAAwABOAADAAE5AAIAAjEwAAAAAjExAAQAAjEyAAUAAjEzAAUAAjE0AAYACCRpbXBvcnRzAXABDw8JFQEAQQALDwABAgMEBQYHCAkKCwwNDgAuCXByb2R1Y2VycwEMcHJvY2Vzc2VkLWJ5AQ13aXQtY29tcG9uZW50BjAuMjAuMAAcBG5hbWUAFRR3aXQtY29tcG9uZW50OmZpeHVwcw');
  const module4 = fetchCompile(new URL('./simple.core3.wasm', import.meta.url));
  const module5 = fetchCompile(new URL('./simple.core4.wasm', import.meta.url));
  const module6 = base64Compile('AGFzbQEAAAABKQdgAX8AYAN/fn8AYAJ/fwBgBH9/f38AYAR/f39/AX9gAn9/AX9gAX8AAxMSAAABAgICAgMDAgAAAAAEBQUGBAUBcAESEgdcEwEwAAABMQABATIAAgEzAAMBNAAEATUABQE2AAYBNwAHATgACAE5AAkCMTAACgIxMQALAjEyAAwCMTMADQIxNAAOAjE1AA8CMTYAEAIxNwARCCRpbXBvcnRzAQAK2QESCQAgAEEAEQAACwkAIABBAREAAAsNACAAIAEgAkECEQEACwsAIAAgAUEDEQIACwsAIAAgAUEEEQIACwsAIAAgAUEFEQIACwsAIAAgAUEGEQIACw8AIAAgASACIANBBxEDAAsPACAAIAEgAiADQQgRAwALCwAgACABQQkRAgALCQAgAEEKEQAACwkAIABBCxEAAAsJACAAQQwRAAALCQAgAEENEQAACw8AIAAgASACIANBDhEEAAsLACAAIAFBDxEFAAsLACAAIAFBEBEFAAsJACAAQRERBgALAC4JcHJvZHVjZXJzAQxwcm9jZXNzZWQtYnkBDXdpdC1jb21wb25lbnQGMC4xNi4xAOkJBG5hbWUAExJ3aXQtY29tcG9uZW50OnNoaW0BzAkSACJpbmRpcmVjdC1oZWxsby1ncmVldGVyLWhlbGxvLXdvcmxkAUVpbmRpcmVjdC13YXNpOmZpbGVzeXN0ZW0vcHJlb3BlbnNAMC4yLjAtcmMtMjAyMy0xMC0xOC1nZXQtZGlyZWN0b3JpZXMCVmluZGlyZWN0LXdhc2k6ZmlsZXN5c3RlbS90eXBlc0AwLjIuMC1yYy0yMDIzLTEwLTE4LVttZXRob2RdZGVzY3JpcHRvci53cml0ZS12aWEtc3RyZWFtA1dpbmRpcmVjdC13YXNpOmZpbGVzeXN0ZW0vdHlwZXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1bbWV0aG9kXWRlc2NyaXB0b3IuYXBwZW5kLXZpYS1zdHJlYW0ETmluZGlyZWN0LXdhc2k6ZmlsZXN5c3RlbS90eXBlc0AwLjIuMC1yYy0yMDIzLTEwLTE4LVttZXRob2RdZGVzY3JpcHRvci5nZXQtdHlwZQVIaW5kaXJlY3Qtd2FzaTpmaWxlc3lzdGVtL3R5cGVzQDAuMi4wLXJjLTIwMjMtMTAtMTgtZmlsZXN5c3RlbS1lcnJvci1jb2RlBk5pbmRpcmVjdC13YXNpOmlvL3N0cmVhbXNAMC4yLjAtcmMtMjAyMy0xMC0xOC1bbWV0aG9kXW91dHB1dC1zdHJlYW0uY2hlY2std3JpdGUHSGluZGlyZWN0LXdhc2k6aW8vc3RyZWFtc0AwLjIuMC1yYy0yMDIzLTEwLTE4LVttZXRob2Rdb3V0cHV0LXN0cmVhbS53cml0ZQhbaW5kaXJlY3Qtd2FzaTppby9zdHJlYW1zQDAuMi4wLXJjLTIwMjMtMTAtMTgtW21ldGhvZF1vdXRwdXQtc3RyZWFtLmJsb2NraW5nLXdyaXRlLWFuZC1mbHVzaAlRaW5kaXJlY3Qtd2FzaTppby9zdHJlYW1zQDAuMi4wLXJjLTIwMjMtMTAtMTgtW21ldGhvZF1vdXRwdXQtc3RyZWFtLmJsb2NraW5nLWZsdXNoCkFpbmRpcmVjdC13YXNpOmNsaS9lbnZpcm9ubWVudEAwLjIuMC1yYy0yMDIzLTEwLTE4LWdldC1lbnZpcm9ubWVudAtHaW5kaXJlY3Qtd2FzaTpjbGkvdGVybWluYWwtc3RkaW5AMC4yLjAtcmMtMjAyMy0xMC0xOC1nZXQtdGVybWluYWwtc3RkaW4MSWluZGlyZWN0LXdhc2k6Y2xpL3Rlcm1pbmFsLXN0ZG91dEAwLjIuMC1yYy0yMDIzLTEwLTE4LWdldC10ZXJtaW5hbC1zdGRvdXQNSWluZGlyZWN0LXdhc2k6Y2xpL3Rlcm1pbmFsLXN0ZGVyckAwLjIuMC1yYy0yMDIzLTEwLTE4LWdldC10ZXJtaW5hbC1zdGRlcnIOJWFkYXB0LXdhc2lfc25hcHNob3RfcHJldmlldzEtZmRfd3JpdGUPKGFkYXB0LXdhc2lfc25hcHNob3RfcHJldmlldzEtZW52aXJvbl9nZXQQLmFkYXB0LXdhc2lfc25hcHNob3RfcHJldmlldzEtZW52aXJvbl9zaXplc19nZXQRJmFkYXB0LXdhc2lfc25hcHNob3RfcHJldmlldzEtcHJvY19leGl0');
  const module7 = base64Compile('AGFzbQEAAAABKQdgAX8AYAN/fn8AYAJ/fwBgBH9/f38AYAR/f39/AX9gAn9/AX9gAX8AAnITAAEwAAAAATEAAAABMgABAAEzAAIAATQAAgABNQACAAE2AAIAATcAAwABOAADAAE5AAIAAjEwAAAAAjExAAAAAjEyAAAAAjEzAAAAAjE0AAQAAjE1AAUAAjE2AAUAAjE3AAYACCRpbXBvcnRzAXABEhIJGAEAQQALEgABAgMEBQYHCAkKCwwNDg8QEQAuCXByb2R1Y2VycwEMcHJvY2Vzc2VkLWJ5AQ13aXQtY29tcG9uZW50BjAuMTYuMQAcBG5hbWUAFRR3aXQtY29tcG9uZW50OmZpeHVwcw');
  const module8 = base64Compile('AGFzbQEAAAABIQZgBH9/f38Bf2AAAX9gAX8AYAN/f38AYAABf2ADf39/AALGAQkFZmxhZ3MJaW5zdGFuY2UxA38BBm1lbW9yeQJtMAIAAAVmbGFncwlpbnN0YW5jZTMDfwEHcmVhbGxvYwJmMAAABmNhbGxlZQhhZGFwdGVyMAABC3Bvc3RfcmV0dXJuCGFkYXB0ZXIwAAIJdHJhbnNjb2RlG3V0ZjgtdG8tdXRmOCAobWVtMCA9PiBtZW0xKQADCGF1Z21lbnRzD21lbTEgTWVtb3J5U2l6ZQAECGF1Z21lbnRzDW1lbTEgSTMyU3RvcmUABQMCAQIHDAEIYWRhcHRlcjAABgrSAQHPAQEGfyMBQQFxRQRAAAsjAEECcUUEQAALIwBBfXEkACMAQX5xJAAjAEEBciQAEAEhASMBQX5xJAEgAUEDcQRAAAsgAEEDcQRAAAsgASgCACABKAIEIQIhAyACQYCAgIB4TwRAAAsgAiIEIQVBAEEAQQEgBRAAIQYCQAJAPwCtQhCGIAOtIAKtfFoNAQsACwJAAkAQBK1CEIYgBq0gBa18Wg0BCwALIAMgAiAGEAMgACAGQQAQBSAAIARBBBAFIwFBAXIkASABEAIjAEECciQACw');
  const instanceFlags1 = new WebAssembly.Global({ value: "i32", mutable: true }, 3);
  const instanceFlags3 = new WebAssembly.Global({ value: "i32", mutable: true }, 3);
  ({ exports: exports0 } = await instantiateCore(await module2));
  ({ exports: exports1 } = await instantiateCore(await module0, {
    wasi_snapshot_preview1: {
      environ_get: exports0['12'],
      environ_sizes_get: exports0['13'],
      fd_write: exports0['11'],
      proc_exit: exports0['14'],
    },
  }));
  ({ exports: exports2 } = await instantiateCore(await module1, {
    __main_module__: {
      cabi_realloc: exports1.cabi_realloc,
    },
    env: {
      memory: exports1.memory,
    },
    'wasi:cli/environment@0.2.0': {
      'get-environment': exports0['10'],
    },
    'wasi:cli/exit@0.2.0': {
      exit: trampoline5,
    },
    'wasi:cli/stderr@0.2.0': {
      'get-stderr': trampoline4,
    },
    'wasi:cli/stdin@0.2.0': {
      'get-stdin': trampoline6,
    },
    'wasi:cli/stdout@0.2.0': {
      'get-stdout': trampoline7,
    },
    'wasi:filesystem/preopens@0.2.0': {
      'get-directories': exports0['0'],
    },
    'wasi:filesystem/types@0.2.0': {
      '[method]descriptor.append-via-stream': exports0['2'],
      '[method]descriptor.get-type': exports0['3'],
      '[method]descriptor.stat': exports0['4'],
      '[method]descriptor.write-via-stream': exports0['1'],
      '[resource-drop]descriptor': trampoline3,
      'filesystem-error-code': exports0['5'],
    },
    'wasi:io/error@0.2.0': {
      '[resource-drop]error': trampoline0,
    },
    'wasi:io/streams@0.2.0': {
      '[method]output-stream.blocking-flush': exports0['9'],
      '[method]output-stream.blocking-write-and-flush': exports0['8'],
      '[method]output-stream.check-write': exports0['6'],
      '[method]output-stream.write': exports0['7'],
      '[resource-drop]input-stream': trampoline1,
      '[resource-drop]output-stream': trampoline2,
    },
  }));
  memory0 = exports1.memory;
  realloc0 = exports2.cabi_import_realloc;
  ({ exports: exports3 } = await instantiateCore(await module3, {
    '': {
      $imports: exports0.$imports,
      '0': trampoline8,
      '1': trampoline9,
      '10': trampoline18,
      '11': exports2.fd_write,
      '12': exports2.environ_get,
      '13': exports2.environ_sizes_get,
      '14': exports2.proc_exit,
      '2': trampoline10,
      '3': trampoline11,
      '4': trampoline12,
      '5': trampoline13,
      '6': trampoline14,
      '7': trampoline15,
      '8': trampoline16,
      '9': trampoline17,
    },
  }));
  ({ exports: exports4 } = await instantiateCore(await module6));
  ({ exports: exports5 } = await instantiateCore(await module4, {
    'hello-greeter': {
      'hello-world': exports4['0'],
    },
    wasi_snapshot_preview1: {
      environ_get: exports4['15'],
      environ_sizes_get: exports4['16'],
      fd_write: exports4['14'],
      proc_exit: exports4['17'],
    },
  }));
  ({ exports: exports6 } = await instantiateCore(await module5, {
    __main_module__: {
      cabi_realloc: exports5.cabi_realloc,
    },
    env: {
      memory: exports5.memory,
    },
    'wasi:cli/environment@0.2.0-rc-2023-10-18': {
      'get-environment': exports4['10'],
    },
    'wasi:cli/exit@0.2.0-rc-2023-10-18': {
      exit: trampoline27,
    },
    'wasi:cli/stderr@0.2.0-rc-2023-10-18': {
      'get-stderr': trampoline26,
    },
    'wasi:cli/stdin@0.2.0-rc-2023-10-18': {
      'get-stdin': trampoline28,
    },
    'wasi:cli/stdout@0.2.0-rc-2023-10-18': {
      'get-stdout': trampoline29,
    },
    'wasi:cli/terminal-input@0.2.0-rc-2023-10-18': {
      '[resource-drop]terminal-input': trampoline23,
    },
    'wasi:cli/terminal-output@0.2.0-rc-2023-10-18': {
      '[resource-drop]terminal-output': trampoline25,
    },
    'wasi:cli/terminal-stderr@0.2.0-rc-2023-10-18': {
      'get-terminal-stderr': exports4['13'],
    },
    'wasi:cli/terminal-stdin@0.2.0-rc-2023-10-18': {
      'get-terminal-stdin': exports4['11'],
    },
    'wasi:cli/terminal-stdout@0.2.0-rc-2023-10-18': {
      'get-terminal-stdout': exports4['12'],
    },
    'wasi:filesystem/preopens@0.2.0-rc-2023-10-18': {
      'get-directories': exports4['1'],
    },
    'wasi:filesystem/types@0.2.0-rc-2023-10-18': {
      '[method]descriptor.append-via-stream': exports4['3'],
      '[method]descriptor.get-type': exports4['4'],
      '[method]descriptor.write-via-stream': exports4['2'],
      '[resource-drop]descriptor': trampoline22,
      'filesystem-error-code': exports4['5'],
    },
    'wasi:io/streams@0.2.0-rc-2023-10-18': {
      '[method]output-stream.blocking-flush': exports4['9'],
      '[method]output-stream.blocking-write-and-flush': exports4['8'],
      '[method]output-stream.check-write': exports4['6'],
      '[method]output-stream.write': exports4['7'],
      '[resource-drop]error': trampoline19,
      '[resource-drop]input-stream': trampoline20,
      '[resource-drop]output-stream': trampoline21,
    },
    'wasi:sockets/tcp@0.2.0-rc-2023-10-18': {
      '[resource-drop]tcp-socket': trampoline24,
    },
  }));
  memory1 = exports5.memory;
  ({ exports: exports7 } = await instantiateCore(await module8, {
    augments: {
      'mem1 I32Store': (ptr, val, offset) => {
        new DataView(exports5.memory.buffer).setInt32(ptr + offset, val, true);
      },
      'mem1 MemorySize': ptr => exports5.memory.buffer.byteLength / 65536,
    },
    callee: {
      adapter0: exports1['component:hello/greeter#hello-world'],
    },
    flags: {
      instance1: instanceFlags1,
      instance3: instanceFlags3,
    },
    memory: {
      m0: exports1.memory,
    },
    post_return: {
      adapter0: exports1['cabi_post_component:hello/greeter#hello-world'],
    },
    realloc: {
      f0: exports5.cabi_realloc,
    },
    transcode: {
      'utf8-to-utf8 (mem0 => mem1)': trampoline30,
    },
  }));
  realloc1 = exports6.cabi_import_realloc;
  ({ exports: exports8 } = await instantiateCore(await module7, {
    '': {
      $imports: exports4.$imports,
      '0': exports7.adapter0,
      '1': trampoline31,
      '10': trampoline40,
      '11': trampoline41,
      '12': trampoline42,
      '13': trampoline43,
      '14': exports6.fd_write,
      '15': exports6.environ_get,
      '16': exports6.environ_sizes_get,
      '17': exports6.proc_exit,
      '2': trampoline32,
      '3': trampoline33,
      '4': trampoline34,
      '5': trampoline35,
      '6': trampoline36,
      '7': trampoline37,
      '8': trampoline38,
      '9': trampoline39,
    },
  }));
  postReturn0 = exports5['cabi_post_goodbye-world'];
})();

await $init;
const salutation = {
  goodbyeWorld: goodbyeWorld,
  
};

export { salutation,  }