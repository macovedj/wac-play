(component
  (type (;0;)
    (component
      (type (;0;)
        (instance
          (export (;0;) "output-stream" (type (sub resource)))
          (export (;1;) "error" (type (sub resource)))
          (type (;2;) (own 1))
          (type (;3;) (variant (case "last-operation-failed" 2) (case "closed")))
          (export (;4;) "stream-error" (type (eq 3)))
          (export (;5;) "input-stream" (type (sub resource)))
          (type (;6;) (borrow 0))
          (type (;7;) (result u64 (error 4)))
          (type (;8;) (func (param "self" 6) (result 7)))
          (export (;0;) "[method]output-stream.check-write" (func (type 8)))
          (type (;9;) (list u8))
          (type (;10;) (result (error 4)))
          (type (;11;) (func (param "self" 6) (param "contents" 9) (result 10)))
          (export (;1;) "[method]output-stream.write" (func (type 11)))
          (export (;2;) "[method]output-stream.blocking-write-and-flush" (func (type 11)))
          (type (;12;) (func (param "self" 6) (result 10)))
          (export (;3;) "[method]output-stream.blocking-flush" (func (type 12)))
        )
      )
      (import "wasi:io/streams@0.2.0-rc-2023-10-18" (instance (;0;) (type 0)))
      (alias export 0 "output-stream" (type (;1;)))
      (alias export 0 "error" (type (;2;)))
      (type (;3;)
        (instance
          (export (;0;) "descriptor" (type (sub resource)))
          (type (;1;) u64)
          (export (;2;) "filesize" (type (eq 1)))
          (alias outer 1 1 (type (;3;)))
          (export (;4;) "output-stream" (type (eq 3)))
          (type (;5;) (enum "access" "would-block" "already" "bad-descriptor" "busy" "deadlock" "quota" "exist" "file-too-large" "illegal-byte-sequence" "in-progress" "interrupted" "invalid" "io" "is-directory" "loop" "too-many-links" "message-size" "name-too-long" "no-device" "no-entry" "no-lock" "insufficient-memory" "insufficient-space" "not-directory" "not-empty" "not-recoverable" "unsupported" "no-tty" "no-such-device" "overflow" "not-permitted" "pipe" "read-only" "invalid-seek" "text-file-busy" "cross-device"))
          (export (;6;) "error-code" (type (eq 5)))
          (type (;7;) (enum "unknown" "block-device" "character-device" "directory" "fifo" "symbolic-link" "regular-file" "socket"))
          (export (;8;) "descriptor-type" (type (eq 7)))
          (alias outer 1 2 (type (;9;)))
          (export (;10;) "error" (type (eq 9)))
          (type (;11;) (borrow 0))
          (type (;12;) (own 4))
          (type (;13;) (result 12 (error 6)))
          (type (;14;) (func (param "self" 11) (param "offset" 2) (result 13)))
          (export (;0;) "[method]descriptor.write-via-stream" (func (type 14)))
          (type (;15;) (func (param "self" 11) (result 13)))
          (export (;1;) "[method]descriptor.append-via-stream" (func (type 15)))
          (type (;16;) (result 8 (error 6)))
          (type (;17;) (func (param "self" 11) (result 16)))
          (export (;2;) "[method]descriptor.get-type" (func (type 17)))
          (type (;18;) (borrow 10))
          (type (;19;) (option 6))
          (type (;20;) (func (param "err" 18) (result 19)))
          (export (;3;) "filesystem-error-code" (func (type 20)))
        )
      )
      (import "wasi:filesystem/types@0.2.0-rc-2023-10-18" (instance (;1;) (type 3)))
      (alias export 1 "descriptor" (type (;4;)))
      (type (;5;)
        (instance
          (alias outer 1 4 (type (;0;)))
          (export (;1;) "descriptor" (type (eq 0)))
          (type (;2;) (own 1))
          (type (;3;) (tuple 2 string))
          (type (;4;) (list 3))
          (type (;5;) (func (result 4)))
          (export (;0;) "get-directories" (func (type 5)))
        )
      )
      (import "wasi:filesystem/preopens@0.2.0-rc-2023-10-18" (instance (;2;) (type 5)))
      (type (;6;)
        (instance
          (export (;0;) "tcp-socket" (type (sub resource)))
        )
      )
      (import "wasi:sockets/tcp@0.2.0-rc-2023-10-18" (instance (;3;) (type 6)))
      (type (;7;)
        (instance
          (type (;0;) (tuple string string))
          (type (;1;) (list 0))
          (type (;2;) (func (result 1)))
          (export (;0;) "get-environment" (func (type 2)))
        )
      )
      (import "wasi:cli/environment@0.2.0-rc-2023-10-18" (instance (;4;) (type 7)))
      (type (;8;)
        (instance
          (type (;0;) (result))
          (type (;1;) (func (param "status" 0)))
          (export (;0;) "exit" (func (type 1)))
        )
      )
      (import "wasi:cli/exit@0.2.0-rc-2023-10-18" (instance (;5;) (type 8)))
      (alias export 0 "input-stream" (type (;9;)))
      (type (;10;)
        (instance
          (alias outer 1 9 (type (;0;)))
          (export (;1;) "input-stream" (type (eq 0)))
          (type (;2;) (own 1))
          (type (;3;) (func (result 2)))
          (export (;0;) "get-stdin" (func (type 3)))
        )
      )
      (import "wasi:cli/stdin@0.2.0-rc-2023-10-18" (instance (;6;) (type 10)))
      (alias export 0 "output-stream" (type (;11;)))
      (type (;12;)
        (instance
          (alias outer 1 11 (type (;0;)))
          (export (;1;) "output-stream" (type (eq 0)))
          (type (;2;) (own 1))
          (type (;3;) (func (result 2)))
          (export (;0;) "get-stdout" (func (type 3)))
        )
      )
      (import "wasi:cli/stdout@0.2.0-rc-2023-10-18" (instance (;7;) (type 12)))
      (alias export 0 "output-stream" (type (;13;)))
      (type (;14;)
        (instance
          (alias outer 1 13 (type (;0;)))
          (export (;1;) "output-stream" (type (eq 0)))
          (type (;2;) (own 1))
          (type (;3;) (func (result 2)))
          (export (;0;) "get-stderr" (func (type 3)))
        )
      )
      (import "wasi:cli/stderr@0.2.0-rc-2023-10-18" (instance (;8;) (type 14)))
      (type (;15;)
        (instance
          (export (;0;) "terminal-input" (type (sub resource)))
        )
      )
      (import "wasi:cli/terminal-input@0.2.0-rc-2023-10-18" (instance (;9;) (type 15)))
      (type (;16;)
        (instance
          (export (;0;) "terminal-output" (type (sub resource)))
        )
      )
      (import "wasi:cli/terminal-output@0.2.0-rc-2023-10-18" (instance (;10;) (type 16)))
      (alias export 9 "terminal-input" (type (;17;)))
      (type (;18;)
        (instance
          (alias outer 1 17 (type (;0;)))
          (export (;1;) "terminal-input" (type (eq 0)))
          (type (;2;) (own 1))
          (type (;3;) (option 2))
          (type (;4;) (func (result 3)))
          (export (;0;) "get-terminal-stdin" (func (type 4)))
        )
      )
      (import "wasi:cli/terminal-stdin@0.2.0-rc-2023-10-18" (instance (;11;) (type 18)))
      (alias export 10 "terminal-output" (type (;19;)))
      (type (;20;)
        (instance
          (alias outer 1 19 (type (;0;)))
          (export (;1;) "terminal-output" (type (eq 0)))
          (type (;2;) (own 1))
          (type (;3;) (option 2))
          (type (;4;) (func (result 3)))
          (export (;0;) "get-terminal-stdout" (func (type 4)))
        )
      )
      (import "wasi:cli/terminal-stdout@0.2.0-rc-2023-10-18" (instance (;12;) (type 20)))
      (alias export 10 "terminal-output" (type (;21;)))
      (type (;22;)
        (instance
          (alias outer 1 21 (type (;0;)))
          (export (;1;) "terminal-output" (type (eq 0)))
          (type (;2;) (own 1))
          (type (;3;) (option 2))
          (type (;4;) (func (result 3)))
          (export (;0;) "get-terminal-stderr" (func (type 4)))
        )
      )
      (import "wasi:cli/terminal-stderr@0.2.0-rc-2023-10-18" (instance (;13;) (type 22)))
      (type (;23;)
        (instance
          (type (;0;) (func (result string)))
          (export (;0;) "hello-world" (func (type 0)))
        )
      )
      (export (;14;) "component:hello/greeter" (instance (type 23)))
    )
  )
  (import "unlocked-dep=<wasi:hello>" (component (;0;) (type 0)))
  (type (;1;)
    (component
      (type (;0;)
        (instance
          (type (;0;) (func (result string)))
          (export (;0;) "hello-world" (func (type 0)))
        )
      )
      (import "hello-greeter" (instance (;0;) (type 0)))
      (type (;1;)
        (instance
          (export (;0;) "output-stream" (type (sub resource)))
          (export (;1;) "error" (type (sub resource)))
          (type (;2;) (own 1))
          (type (;3;) (variant (case "last-operation-failed" 2) (case "closed")))
          (export (;4;) "stream-error" (type (eq 3)))
          (export (;5;) "input-stream" (type (sub resource)))
          (type (;6;) (borrow 0))
          (type (;7;) (result u64 (error 4)))
          (type (;8;) (func (param "self" 6) (result 7)))
          (export (;0;) "[method]output-stream.check-write" (func (type 8)))
          (type (;9;) (list u8))
          (type (;10;) (result (error 4)))
          (type (;11;) (func (param "self" 6) (param "contents" 9) (result 10)))
          (export (;1;) "[method]output-stream.write" (func (type 11)))
          (export (;2;) "[method]output-stream.blocking-write-and-flush" (func (type 11)))
          (type (;12;) (func (param "self" 6) (result 10)))
          (export (;3;) "[method]output-stream.blocking-flush" (func (type 12)))
        )
      )
      (import "wasi:io/streams@0.2.0-rc-2023-10-18" (instance (;1;) (type 1)))
      (alias export 1 "output-stream" (type (;2;)))
      (alias export 1 "error" (type (;3;)))
      (type (;4;)
        (instance
          (export (;0;) "descriptor" (type (sub resource)))
          (type (;1;) u64)
          (export (;2;) "filesize" (type (eq 1)))
          (alias outer 1 2 (type (;3;)))
          (export (;4;) "output-stream" (type (eq 3)))
          (type (;5;) (enum "access" "would-block" "already" "bad-descriptor" "busy" "deadlock" "quota" "exist" "file-too-large" "illegal-byte-sequence" "in-progress" "interrupted" "invalid" "io" "is-directory" "loop" "too-many-links" "message-size" "name-too-long" "no-device" "no-entry" "no-lock" "insufficient-memory" "insufficient-space" "not-directory" "not-empty" "not-recoverable" "unsupported" "no-tty" "no-such-device" "overflow" "not-permitted" "pipe" "read-only" "invalid-seek" "text-file-busy" "cross-device"))
          (export (;6;) "error-code" (type (eq 5)))
          (type (;7;) (enum "unknown" "block-device" "character-device" "directory" "fifo" "symbolic-link" "regular-file" "socket"))
          (export (;8;) "descriptor-type" (type (eq 7)))
          (alias outer 1 3 (type (;9;)))
          (export (;10;) "error" (type (eq 9)))
          (type (;11;) (borrow 0))
          (type (;12;) (own 4))
          (type (;13;) (result 12 (error 6)))
          (type (;14;) (func (param "self" 11) (param "offset" 2) (result 13)))
          (export (;0;) "[method]descriptor.write-via-stream" (func (type 14)))
          (type (;15;) (func (param "self" 11) (result 13)))
          (export (;1;) "[method]descriptor.append-via-stream" (func (type 15)))
          (type (;16;) (result 8 (error 6)))
          (type (;17;) (func (param "self" 11) (result 16)))
          (export (;2;) "[method]descriptor.get-type" (func (type 17)))
          (type (;18;) (borrow 10))
          (type (;19;) (option 6))
          (type (;20;) (func (param "err" 18) (result 19)))
          (export (;3;) "filesystem-error-code" (func (type 20)))
        )
      )
      (import "wasi:filesystem/types@0.2.0-rc-2023-10-18" (instance (;2;) (type 4)))
      (alias export 2 "descriptor" (type (;5;)))
      (type (;6;)
        (instance
          (alias outer 1 5 (type (;0;)))
          (export (;1;) "descriptor" (type (eq 0)))
          (type (;2;) (own 1))
          (type (;3;) (tuple 2 string))
          (type (;4;) (list 3))
          (type (;5;) (func (result 4)))
          (export (;0;) "get-directories" (func (type 5)))
        )
      )
      (import "wasi:filesystem/preopens@0.2.0-rc-2023-10-18" (instance (;3;) (type 6)))
      (type (;7;)
        (instance
          (export (;0;) "tcp-socket" (type (sub resource)))
        )
      )
      (import "wasi:sockets/tcp@0.2.0-rc-2023-10-18" (instance (;4;) (type 7)))
      (type (;8;)
        (instance
          (type (;0;) (tuple string string))
          (type (;1;) (list 0))
          (type (;2;) (func (result 1)))
          (export (;0;) "get-environment" (func (type 2)))
        )
      )
      (import "wasi:cli/environment@0.2.0-rc-2023-10-18" (instance (;5;) (type 8)))
      (type (;9;)
        (instance
          (type (;0;) (result))
          (type (;1;) (func (param "status" 0)))
          (export (;0;) "exit" (func (type 1)))
        )
      )
      (import "wasi:cli/exit@0.2.0-rc-2023-10-18" (instance (;6;) (type 9)))
      (alias export 1 "input-stream" (type (;10;)))
      (type (;11;)
        (instance
          (alias outer 1 10 (type (;0;)))
          (export (;1;) "input-stream" (type (eq 0)))
          (type (;2;) (own 1))
          (type (;3;) (func (result 2)))
          (export (;0;) "get-stdin" (func (type 3)))
        )
      )
      (import "wasi:cli/stdin@0.2.0-rc-2023-10-18" (instance (;7;) (type 11)))
      (alias export 1 "output-stream" (type (;12;)))
      (type (;13;)
        (instance
          (alias outer 1 12 (type (;0;)))
          (export (;1;) "output-stream" (type (eq 0)))
          (type (;2;) (own 1))
          (type (;3;) (func (result 2)))
          (export (;0;) "get-stdout" (func (type 3)))
        )
      )
      (import "wasi:cli/stdout@0.2.0-rc-2023-10-18" (instance (;8;) (type 13)))
      (alias export 1 "output-stream" (type (;14;)))
      (type (;15;)
        (instance
          (alias outer 1 14 (type (;0;)))
          (export (;1;) "output-stream" (type (eq 0)))
          (type (;2;) (own 1))
          (type (;3;) (func (result 2)))
          (export (;0;) "get-stderr" (func (type 3)))
        )
      )
      (import "wasi:cli/stderr@0.2.0-rc-2023-10-18" (instance (;9;) (type 15)))
      (type (;16;)
        (instance
          (export (;0;) "terminal-input" (type (sub resource)))
        )
      )
      (import "wasi:cli/terminal-input@0.2.0-rc-2023-10-18" (instance (;10;) (type 16)))
      (type (;17;)
        (instance
          (export (;0;) "terminal-output" (type (sub resource)))
        )
      )
      (import "wasi:cli/terminal-output@0.2.0-rc-2023-10-18" (instance (;11;) (type 17)))
      (alias export 10 "terminal-input" (type (;18;)))
      (type (;19;)
        (instance
          (alias outer 1 18 (type (;0;)))
          (export (;1;) "terminal-input" (type (eq 0)))
          (type (;2;) (own 1))
          (type (;3;) (option 2))
          (type (;4;) (func (result 3)))
          (export (;0;) "get-terminal-stdin" (func (type 4)))
        )
      )
      (import "wasi:cli/terminal-stdin@0.2.0-rc-2023-10-18" (instance (;12;) (type 19)))
      (alias export 11 "terminal-output" (type (;20;)))
      (type (;21;)
        (instance
          (alias outer 1 20 (type (;0;)))
          (export (;1;) "terminal-output" (type (eq 0)))
          (type (;2;) (own 1))
          (type (;3;) (option 2))
          (type (;4;) (func (result 3)))
          (export (;0;) "get-terminal-stdout" (func (type 4)))
        )
      )
      (import "wasi:cli/terminal-stdout@0.2.0-rc-2023-10-18" (instance (;13;) (type 21)))
      (alias export 11 "terminal-output" (type (;22;)))
      (type (;23;)
        (instance
          (alias outer 1 22 (type (;0;)))
          (export (;1;) "terminal-output" (type (eq 0)))
          (type (;2;) (own 1))
          (type (;3;) (option 2))
          (type (;4;) (func (result 3)))
          (export (;0;) "get-terminal-stderr" (func (type 4)))
        )
      )
      (import "wasi:cli/terminal-stderr@0.2.0-rc-2023-10-18" (instance (;14;) (type 23)))
      (type (;24;) (func (result string)))
      (export (;0;) "goodbye-world" (func (type 24)))
    )
  )
  (import "unlocked-dep=<wasi:goodbye>" (component (;1;) (type 1)))
  (component (;2;)
    (type (;0;)
      (instance
        (export (;0;) "output-stream" (type (sub resource)))
        (export (;1;) "error" (type (sub resource)))
        (type (;2;) (own 1))
        (type (;3;) (variant (case "last-operation-failed" 2) (case "closed")))
        (export (;4;) "stream-error" (type (eq 3)))
        (export (;5;) "input-stream" (type (sub resource)))
        (type (;6;) (borrow 0))
        (type (;7;) (result u64 (error 4)))
        (type (;8;) (func (param "self" 6) (result 7)))
        (export (;0;) "[method]output-stream.check-write" (func (type 8)))
        (type (;9;) (list u8))
        (type (;10;) (result (error 4)))
        (type (;11;) (func (param "self" 6) (param "contents" 9) (result 10)))
        (export (;1;) "[method]output-stream.write" (func (type 11)))
        (export (;2;) "[method]output-stream.blocking-write-and-flush" (func (type 11)))
        (type (;12;) (func (param "self" 6) (result 10)))
        (export (;3;) "[method]output-stream.blocking-flush" (func (type 12)))
      )
    )
    (import "wasi:io/streams@0.2.0-rc-2023-10-18" (instance (;0;) (type 0)))
    (alias export 0 "output-stream" (type (;1;)))
    (alias export 0 "error" (type (;2;)))
    (type (;3;)
      (instance
        (export (;0;) "descriptor" (type (sub resource)))
        (type (;1;) u64)
        (export (;2;) "filesize" (type (eq 1)))
        (alias outer 1 1 (type (;3;)))
        (export (;4;) "output-stream" (type (eq 3)))
        (type (;5;) (enum "access" "would-block" "already" "bad-descriptor" "busy" "deadlock" "quota" "exist" "file-too-large" "illegal-byte-sequence" "in-progress" "interrupted" "invalid" "io" "is-directory" "loop" "too-many-links" "message-size" "name-too-long" "no-device" "no-entry" "no-lock" "insufficient-memory" "insufficient-space" "not-directory" "not-empty" "not-recoverable" "unsupported" "no-tty" "no-such-device" "overflow" "not-permitted" "pipe" "read-only" "invalid-seek" "text-file-busy" "cross-device"))
        (export (;6;) "error-code" (type (eq 5)))
        (type (;7;) (enum "unknown" "block-device" "character-device" "directory" "fifo" "symbolic-link" "regular-file" "socket"))
        (export (;8;) "descriptor-type" (type (eq 7)))
        (alias outer 1 2 (type (;9;)))
        (export (;10;) "error" (type (eq 9)))
        (type (;11;) (borrow 0))
        (type (;12;) (own 4))
        (type (;13;) (result 12 (error 6)))
        (type (;14;) (func (param "self" 11) (param "offset" 2) (result 13)))
        (export (;0;) "[method]descriptor.write-via-stream" (func (type 14)))
        (type (;15;) (func (param "self" 11) (result 13)))
        (export (;1;) "[method]descriptor.append-via-stream" (func (type 15)))
        (type (;16;) (result 8 (error 6)))
        (type (;17;) (func (param "self" 11) (result 16)))
        (export (;2;) "[method]descriptor.get-type" (func (type 17)))
        (type (;18;) (borrow 10))
        (type (;19;) (option 6))
        (type (;20;) (func (param "err" 18) (result 19)))
        (export (;3;) "filesystem-error-code" (func (type 20)))
      )
    )
    (import "wasi:filesystem/types@0.2.0-rc-2023-10-18" (instance (;1;) (type 3)))
    (alias export 1 "descriptor" (type (;4;)))
    (type (;5;)
      (instance
        (alias outer 1 4 (type (;0;)))
        (export (;1;) "descriptor" (type (eq 0)))
        (type (;2;) (own 1))
        (type (;3;) (tuple 2 string))
        (type (;4;) (list 3))
        (type (;5;) (func (result 4)))
        (export (;0;) "get-directories" (func (type 5)))
      )
    )
    (import "wasi:filesystem/preopens@0.2.0-rc-2023-10-18" (instance (;2;) (type 5)))
    (type (;6;)
      (instance
        (export (;0;) "tcp-socket" (type (sub resource)))
      )
    )
    (import "wasi:sockets/tcp@0.2.0-rc-2023-10-18" (instance (;3;) (type 6)))
    (type (;7;)
      (instance
        (type (;0;) (tuple string string))
        (type (;1;) (list 0))
        (type (;2;) (func (result 1)))
        (export (;0;) "get-environment" (func (type 2)))
      )
    )
    (import "wasi:cli/environment@0.2.0-rc-2023-10-18" (instance (;4;) (type 7)))
    (type (;8;)
      (instance
        (type (;0;) (result))
        (type (;1;) (func (param "status" 0)))
        (export (;0;) "exit" (func (type 1)))
      )
    )
    (import "wasi:cli/exit@0.2.0-rc-2023-10-18" (instance (;5;) (type 8)))
    (alias export 0 "input-stream" (type (;9;)))
    (type (;10;)
      (instance
        (alias outer 1 9 (type (;0;)))
        (export (;1;) "input-stream" (type (eq 0)))
        (type (;2;) (own 1))
        (type (;3;) (func (result 2)))
        (export (;0;) "get-stdin" (func (type 3)))
      )
    )
    (import "wasi:cli/stdin@0.2.0-rc-2023-10-18" (instance (;6;) (type 10)))
    (alias export 0 "output-stream" (type (;11;)))
    (type (;12;)
      (instance
        (alias outer 1 11 (type (;0;)))
        (export (;1;) "output-stream" (type (eq 0)))
        (type (;2;) (own 1))
        (type (;3;) (func (result 2)))
        (export (;0;) "get-stdout" (func (type 3)))
      )
    )
    (import "wasi:cli/stdout@0.2.0-rc-2023-10-18" (instance (;7;) (type 12)))
    (alias export 0 "output-stream" (type (;13;)))
    (type (;14;)
      (instance
        (alias outer 1 13 (type (;0;)))
        (export (;1;) "output-stream" (type (eq 0)))
        (type (;2;) (own 1))
        (type (;3;) (func (result 2)))
        (export (;0;) "get-stderr" (func (type 3)))
      )
    )
    (import "wasi:cli/stderr@0.2.0-rc-2023-10-18" (instance (;8;) (type 14)))
    (type (;15;)
      (instance
        (export (;0;) "terminal-input" (type (sub resource)))
      )
    )
    (import "wasi:cli/terminal-input@0.2.0-rc-2023-10-18" (instance (;9;) (type 15)))
    (type (;16;)
      (instance
        (export (;0;) "terminal-output" (type (sub resource)))
      )
    )
    (import "wasi:cli/terminal-output@0.2.0-rc-2023-10-18" (instance (;10;) (type 16)))
    (alias export 9 "terminal-input" (type (;17;)))
    (type (;18;)
      (instance
        (alias outer 1 17 (type (;0;)))
        (export (;1;) "terminal-input" (type (eq 0)))
        (type (;2;) (own 1))
        (type (;3;) (option 2))
        (type (;4;) (func (result 3)))
        (export (;0;) "get-terminal-stdin" (func (type 4)))
      )
    )
    (import "wasi:cli/terminal-stdin@0.2.0-rc-2023-10-18" (instance (;11;) (type 18)))
    (alias export 10 "terminal-output" (type (;19;)))
    (type (;20;)
      (instance
        (alias outer 1 19 (type (;0;)))
        (export (;1;) "terminal-output" (type (eq 0)))
        (type (;2;) (own 1))
        (type (;3;) (option 2))
        (type (;4;) (func (result 3)))
        (export (;0;) "get-terminal-stdout" (func (type 4)))
      )
    )
    (import "wasi:cli/terminal-stdout@0.2.0-rc-2023-10-18" (instance (;12;) (type 20)))
    (alias export 10 "terminal-output" (type (;21;)))
    (type (;22;)
      (instance
        (alias outer 1 21 (type (;0;)))
        (export (;1;) "terminal-output" (type (eq 0)))
        (type (;2;) (own 1))
        (type (;3;) (option 2))
        (type (;4;) (func (result 3)))
        (export (;0;) "get-terminal-stderr" (func (type 4)))
      )
    )
    (import "wasi:cli/terminal-stderr@0.2.0-rc-2023-10-18" (instance (;13;) (type 22)))
    (type (;23;)
      (component
        (type (;0;)
          (instance
            (export (;0;) "output-stream" (type (sub resource)))
            (export (;1;) "error" (type (sub resource)))
            (type (;2;) (own 1))
            (type (;3;) (variant (case "last-operation-failed" 2) (case "closed")))
            (export (;4;) "stream-error" (type (eq 3)))
            (export (;5;) "input-stream" (type (sub resource)))
            (type (;6;) (borrow 0))
            (type (;7;) (result u64 (error 4)))
            (type (;8;) (func (param "self" 6) (result 7)))
            (export (;0;) "[method]output-stream.check-write" (func (type 8)))
            (type (;9;) (list u8))
            (type (;10;) (result (error 4)))
            (type (;11;) (func (param "self" 6) (param "contents" 9) (result 10)))
            (export (;1;) "[method]output-stream.write" (func (type 11)))
            (export (;2;) "[method]output-stream.blocking-write-and-flush" (func (type 11)))
            (type (;12;) (func (param "self" 6) (result 10)))
            (export (;3;) "[method]output-stream.blocking-flush" (func (type 12)))
          )
        )
        (import "wasi:io/streams@0.2.0-rc-2023-10-18" (instance (;0;) (type 0)))
        (alias export 0 "output-stream" (type (;1;)))
        (alias export 0 "error" (type (;2;)))
        (type (;3;)
          (instance
            (export (;0;) "descriptor" (type (sub resource)))
            (type (;1;) u64)
            (export (;2;) "filesize" (type (eq 1)))
            (alias outer 1 1 (type (;3;)))
            (export (;4;) "output-stream" (type (eq 3)))
            (type (;5;) (enum "access" "would-block" "already" "bad-descriptor" "busy" "deadlock" "quota" "exist" "file-too-large" "illegal-byte-sequence" "in-progress" "interrupted" "invalid" "io" "is-directory" "loop" "too-many-links" "message-size" "name-too-long" "no-device" "no-entry" "no-lock" "insufficient-memory" "insufficient-space" "not-directory" "not-empty" "not-recoverable" "unsupported" "no-tty" "no-such-device" "overflow" "not-permitted" "pipe" "read-only" "invalid-seek" "text-file-busy" "cross-device"))
            (export (;6;) "error-code" (type (eq 5)))
            (type (;7;) (enum "unknown" "block-device" "character-device" "directory" "fifo" "symbolic-link" "regular-file" "socket"))
            (export (;8;) "descriptor-type" (type (eq 7)))
            (alias outer 1 2 (type (;9;)))
            (export (;10;) "error" (type (eq 9)))
            (type (;11;) (borrow 0))
            (type (;12;) (own 4))
            (type (;13;) (result 12 (error 6)))
            (type (;14;) (func (param "self" 11) (param "offset" 2) (result 13)))
            (export (;0;) "[method]descriptor.write-via-stream" (func (type 14)))
            (type (;15;) (func (param "self" 11) (result 13)))
            (export (;1;) "[method]descriptor.append-via-stream" (func (type 15)))
            (type (;16;) (result 8 (error 6)))
            (type (;17;) (func (param "self" 11) (result 16)))
            (export (;2;) "[method]descriptor.get-type" (func (type 17)))
            (type (;18;) (borrow 10))
            (type (;19;) (option 6))
            (type (;20;) (func (param "err" 18) (result 19)))
            (export (;3;) "filesystem-error-code" (func (type 20)))
          )
        )
        (import "wasi:filesystem/types@0.2.0-rc-2023-10-18" (instance (;1;) (type 3)))
        (alias export 1 "descriptor" (type (;4;)))
        (type (;5;)
          (instance
            (alias outer 1 4 (type (;0;)))
            (export (;1;) "descriptor" (type (eq 0)))
            (type (;2;) (own 1))
            (type (;3;) (tuple 2 string))
            (type (;4;) (list 3))
            (type (;5;) (func (result 4)))
            (export (;0;) "get-directories" (func (type 5)))
          )
        )
        (import "wasi:filesystem/preopens@0.2.0-rc-2023-10-18" (instance (;2;) (type 5)))
        (type (;6;)
          (instance
            (export (;0;) "tcp-socket" (type (sub resource)))
          )
        )
        (import "wasi:sockets/tcp@0.2.0-rc-2023-10-18" (instance (;3;) (type 6)))
        (type (;7;)
          (instance
            (type (;0;) (tuple string string))
            (type (;1;) (list 0))
            (type (;2;) (func (result 1)))
            (export (;0;) "get-environment" (func (type 2)))
          )
        )
        (import "wasi:cli/environment@0.2.0-rc-2023-10-18" (instance (;4;) (type 7)))
        (type (;8;)
          (instance
            (type (;0;) (result))
            (type (;1;) (func (param "status" 0)))
            (export (;0;) "exit" (func (type 1)))
          )
        )
        (import "wasi:cli/exit@0.2.0-rc-2023-10-18" (instance (;5;) (type 8)))
        (alias export 0 "input-stream" (type (;9;)))
        (type (;10;)
          (instance
            (alias outer 1 9 (type (;0;)))
            (export (;1;) "input-stream" (type (eq 0)))
            (type (;2;) (own 1))
            (type (;3;) (func (result 2)))
            (export (;0;) "get-stdin" (func (type 3)))
          )
        )
        (import "wasi:cli/stdin@0.2.0-rc-2023-10-18" (instance (;6;) (type 10)))
        (alias export 0 "output-stream" (type (;11;)))
        (type (;12;)
          (instance
            (alias outer 1 11 (type (;0;)))
            (export (;1;) "output-stream" (type (eq 0)))
            (type (;2;) (own 1))
            (type (;3;) (func (result 2)))
            (export (;0;) "get-stdout" (func (type 3)))
          )
        )
        (import "wasi:cli/stdout@0.2.0-rc-2023-10-18" (instance (;7;) (type 12)))
        (alias export 0 "output-stream" (type (;13;)))
        (type (;14;)
          (instance
            (alias outer 1 13 (type (;0;)))
            (export (;1;) "output-stream" (type (eq 0)))
            (type (;2;) (own 1))
            (type (;3;) (func (result 2)))
            (export (;0;) "get-stderr" (func (type 3)))
          )
        )
        (import "wasi:cli/stderr@0.2.0-rc-2023-10-18" (instance (;8;) (type 14)))
        (type (;15;)
          (instance
            (export (;0;) "terminal-input" (type (sub resource)))
          )
        )
        (import "wasi:cli/terminal-input@0.2.0-rc-2023-10-18" (instance (;9;) (type 15)))
        (type (;16;)
          (instance
            (export (;0;) "terminal-output" (type (sub resource)))
          )
        )
        (import "wasi:cli/terminal-output@0.2.0-rc-2023-10-18" (instance (;10;) (type 16)))
        (alias export 9 "terminal-input" (type (;17;)))
        (type (;18;)
          (instance
            (alias outer 1 17 (type (;0;)))
            (export (;1;) "terminal-input" (type (eq 0)))
            (type (;2;) (own 1))
            (type (;3;) (option 2))
            (type (;4;) (func (result 3)))
            (export (;0;) "get-terminal-stdin" (func (type 4)))
          )
        )
        (import "wasi:cli/terminal-stdin@0.2.0-rc-2023-10-18" (instance (;11;) (type 18)))
        (alias export 10 "terminal-output" (type (;19;)))
        (type (;20;)
          (instance
            (alias outer 1 19 (type (;0;)))
            (export (;1;) "terminal-output" (type (eq 0)))
            (type (;2;) (own 1))
            (type (;3;) (option 2))
            (type (;4;) (func (result 3)))
            (export (;0;) "get-terminal-stdout" (func (type 4)))
          )
        )
        (import "wasi:cli/terminal-stdout@0.2.0-rc-2023-10-18" (instance (;12;) (type 20)))
        (alias export 10 "terminal-output" (type (;21;)))
        (type (;22;)
          (instance
            (alias outer 1 21 (type (;0;)))
            (export (;1;) "terminal-output" (type (eq 0)))
            (type (;2;) (own 1))
            (type (;3;) (option 2))
            (type (;4;) (func (result 3)))
            (export (;0;) "get-terminal-stderr" (func (type 4)))
          )
        )
        (import "wasi:cli/terminal-stderr@0.2.0-rc-2023-10-18" (instance (;13;) (type 22)))
        (type (;23;)
          (instance
            (type (;0;) (func (result string)))
            (export (;0;) "hello-world" (func (type 0)))
          )
        )
        (export (;14;) "component:hello/greeter" (instance (type 23)))
      )
    )
    (import "unlocked-dep=<wasi:hello>" (component (;0;) (type 23)))
    (instance (;14;) (instantiate 0
        (with "wasi:io/streams@0.2.0-rc-2023-10-18" (instance 0))
        (with "wasi:filesystem/types@0.2.0-rc-2023-10-18" (instance 1))
        (with "wasi:filesystem/preopens@0.2.0-rc-2023-10-18" (instance 2))
        (with "wasi:sockets/tcp@0.2.0-rc-2023-10-18" (instance 3))
        (with "wasi:cli/environment@0.2.0-rc-2023-10-18" (instance 4))
        (with "wasi:cli/exit@0.2.0-rc-2023-10-18" (instance 5))
        (with "wasi:cli/stdin@0.2.0-rc-2023-10-18" (instance 6))
        (with "wasi:cli/stdout@0.2.0-rc-2023-10-18" (instance 7))
        (with "wasi:cli/stderr@0.2.0-rc-2023-10-18" (instance 8))
        (with "wasi:cli/terminal-input@0.2.0-rc-2023-10-18" (instance 9))
        (with "wasi:cli/terminal-output@0.2.0-rc-2023-10-18" (instance 10))
        (with "wasi:cli/terminal-stdin@0.2.0-rc-2023-10-18" (instance 11))
        (with "wasi:cli/terminal-stdout@0.2.0-rc-2023-10-18" (instance 12))
        (with "wasi:cli/terminal-stderr@0.2.0-rc-2023-10-18" (instance 13))
      )
    )
    (alias export 14 "component:hello/greeter" (instance (;15;)))
    (type (;24;)
      (component
        (type (;0;)
          (instance
            (type (;0;) (func (result string)))
            (export (;0;) "hello-world" (func (type 0)))
          )
        )
        (import "hello-greeter" (instance (;0;) (type 0)))
        (type (;1;)
          (instance
            (export (;0;) "output-stream" (type (sub resource)))
            (export (;1;) "error" (type (sub resource)))
            (type (;2;) (own 1))
            (type (;3;) (variant (case "last-operation-failed" 2) (case "closed")))
            (export (;4;) "stream-error" (type (eq 3)))
            (export (;5;) "input-stream" (type (sub resource)))
            (type (;6;) (borrow 0))
            (type (;7;) (result u64 (error 4)))
            (type (;8;) (func (param "self" 6) (result 7)))
            (export (;0;) "[method]output-stream.check-write" (func (type 8)))
            (type (;9;) (list u8))
            (type (;10;) (result (error 4)))
            (type (;11;) (func (param "self" 6) (param "contents" 9) (result 10)))
            (export (;1;) "[method]output-stream.write" (func (type 11)))
            (export (;2;) "[method]output-stream.blocking-write-and-flush" (func (type 11)))
            (type (;12;) (func (param "self" 6) (result 10)))
            (export (;3;) "[method]output-stream.blocking-flush" (func (type 12)))
          )
        )
        (import "wasi:io/streams@0.2.0-rc-2023-10-18" (instance (;1;) (type 1)))
        (alias export 1 "output-stream" (type (;2;)))
        (alias export 1 "error" (type (;3;)))
        (type (;4;)
          (instance
            (export (;0;) "descriptor" (type (sub resource)))
            (type (;1;) u64)
            (export (;2;) "filesize" (type (eq 1)))
            (alias outer 1 2 (type (;3;)))
            (export (;4;) "output-stream" (type (eq 3)))
            (type (;5;) (enum "access" "would-block" "already" "bad-descriptor" "busy" "deadlock" "quota" "exist" "file-too-large" "illegal-byte-sequence" "in-progress" "interrupted" "invalid" "io" "is-directory" "loop" "too-many-links" "message-size" "name-too-long" "no-device" "no-entry" "no-lock" "insufficient-memory" "insufficient-space" "not-directory" "not-empty" "not-recoverable" "unsupported" "no-tty" "no-such-device" "overflow" "not-permitted" "pipe" "read-only" "invalid-seek" "text-file-busy" "cross-device"))
            (export (;6;) "error-code" (type (eq 5)))
            (type (;7;) (enum "unknown" "block-device" "character-device" "directory" "fifo" "symbolic-link" "regular-file" "socket"))
            (export (;8;) "descriptor-type" (type (eq 7)))
            (alias outer 1 3 (type (;9;)))
            (export (;10;) "error" (type (eq 9)))
            (type (;11;) (borrow 0))
            (type (;12;) (own 4))
            (type (;13;) (result 12 (error 6)))
            (type (;14;) (func (param "self" 11) (param "offset" 2) (result 13)))
            (export (;0;) "[method]descriptor.write-via-stream" (func (type 14)))
            (type (;15;) (func (param "self" 11) (result 13)))
            (export (;1;) "[method]descriptor.append-via-stream" (func (type 15)))
            (type (;16;) (result 8 (error 6)))
            (type (;17;) (func (param "self" 11) (result 16)))
            (export (;2;) "[method]descriptor.get-type" (func (type 17)))
            (type (;18;) (borrow 10))
            (type (;19;) (option 6))
            (type (;20;) (func (param "err" 18) (result 19)))
            (export (;3;) "filesystem-error-code" (func (type 20)))
          )
        )
        (import "wasi:filesystem/types@0.2.0-rc-2023-10-18" (instance (;2;) (type 4)))
        (alias export 2 "descriptor" (type (;5;)))
        (type (;6;)
          (instance
            (alias outer 1 5 (type (;0;)))
            (export (;1;) "descriptor" (type (eq 0)))
            (type (;2;) (own 1))
            (type (;3;) (tuple 2 string))
            (type (;4;) (list 3))
            (type (;5;) (func (result 4)))
            (export (;0;) "get-directories" (func (type 5)))
          )
        )
        (import "wasi:filesystem/preopens@0.2.0-rc-2023-10-18" (instance (;3;) (type 6)))
        (type (;7;)
          (instance
            (export (;0;) "tcp-socket" (type (sub resource)))
          )
        )
        (import "wasi:sockets/tcp@0.2.0-rc-2023-10-18" (instance (;4;) (type 7)))
        (type (;8;)
          (instance
            (type (;0;) (tuple string string))
            (type (;1;) (list 0))
            (type (;2;) (func (result 1)))
            (export (;0;) "get-environment" (func (type 2)))
          )
        )
        (import "wasi:cli/environment@0.2.0-rc-2023-10-18" (instance (;5;) (type 8)))
        (type (;9;)
          (instance
            (type (;0;) (result))
            (type (;1;) (func (param "status" 0)))
            (export (;0;) "exit" (func (type 1)))
          )
        )
        (import "wasi:cli/exit@0.2.0-rc-2023-10-18" (instance (;6;) (type 9)))
        (alias export 1 "input-stream" (type (;10;)))
        (type (;11;)
          (instance
            (alias outer 1 10 (type (;0;)))
            (export (;1;) "input-stream" (type (eq 0)))
            (type (;2;) (own 1))
            (type (;3;) (func (result 2)))
            (export (;0;) "get-stdin" (func (type 3)))
          )
        )
        (import "wasi:cli/stdin@0.2.0-rc-2023-10-18" (instance (;7;) (type 11)))
        (alias export 1 "output-stream" (type (;12;)))
        (type (;13;)
          (instance
            (alias outer 1 12 (type (;0;)))
            (export (;1;) "output-stream" (type (eq 0)))
            (type (;2;) (own 1))
            (type (;3;) (func (result 2)))
            (export (;0;) "get-stdout" (func (type 3)))
          )
        )
        (import "wasi:cli/stdout@0.2.0-rc-2023-10-18" (instance (;8;) (type 13)))
        (alias export 1 "output-stream" (type (;14;)))
        (type (;15;)
          (instance
            (alias outer 1 14 (type (;0;)))
            (export (;1;) "output-stream" (type (eq 0)))
            (type (;2;) (own 1))
            (type (;3;) (func (result 2)))
            (export (;0;) "get-stderr" (func (type 3)))
          )
        )
        (import "wasi:cli/stderr@0.2.0-rc-2023-10-18" (instance (;9;) (type 15)))
        (type (;16;)
          (instance
            (export (;0;) "terminal-input" (type (sub resource)))
          )
        )
        (import "wasi:cli/terminal-input@0.2.0-rc-2023-10-18" (instance (;10;) (type 16)))
        (type (;17;)
          (instance
            (export (;0;) "terminal-output" (type (sub resource)))
          )
        )
        (import "wasi:cli/terminal-output@0.2.0-rc-2023-10-18" (instance (;11;) (type 17)))
        (alias export 10 "terminal-input" (type (;18;)))
        (type (;19;)
          (instance
            (alias outer 1 18 (type (;0;)))
            (export (;1;) "terminal-input" (type (eq 0)))
            (type (;2;) (own 1))
            (type (;3;) (option 2))
            (type (;4;) (func (result 3)))
            (export (;0;) "get-terminal-stdin" (func (type 4)))
          )
        )
        (import "wasi:cli/terminal-stdin@0.2.0-rc-2023-10-18" (instance (;12;) (type 19)))
        (alias export 11 "terminal-output" (type (;20;)))
        (type (;21;)
          (instance
            (alias outer 1 20 (type (;0;)))
            (export (;1;) "terminal-output" (type (eq 0)))
            (type (;2;) (own 1))
            (type (;3;) (option 2))
            (type (;4;) (func (result 3)))
            (export (;0;) "get-terminal-stdout" (func (type 4)))
          )
        )
        (import "wasi:cli/terminal-stdout@0.2.0-rc-2023-10-18" (instance (;13;) (type 21)))
        (alias export 11 "terminal-output" (type (;22;)))
        (type (;23;)
          (instance
            (alias outer 1 22 (type (;0;)))
            (export (;1;) "terminal-output" (type (eq 0)))
            (type (;2;) (own 1))
            (type (;3;) (option 2))
            (type (;4;) (func (result 3)))
            (export (;0;) "get-terminal-stderr" (func (type 4)))
          )
        )
        (import "wasi:cli/terminal-stderr@0.2.0-rc-2023-10-18" (instance (;14;) (type 23)))
        (type (;24;) (func (result string)))
        (export (;0;) "goodbye-world" (func (type 24)))
      )
    )
    (import "unlocked-dep=<wasi:goodbye>" (component (;1;) (type 24)))
    (instance (;16;) (instantiate 1
        (with "hello-greeter" (instance 15))
        (with "wasi:io/streams@0.2.0-rc-2023-10-18" (instance 0))
        (with "wasi:filesystem/types@0.2.0-rc-2023-10-18" (instance 1))
        (with "wasi:filesystem/preopens@0.2.0-rc-2023-10-18" (instance 2))
        (with "wasi:sockets/tcp@0.2.0-rc-2023-10-18" (instance 3))
        (with "wasi:cli/environment@0.2.0-rc-2023-10-18" (instance 4))
        (with "wasi:cli/exit@0.2.0-rc-2023-10-18" (instance 5))
        (with "wasi:cli/stdin@0.2.0-rc-2023-10-18" (instance 6))
        (with "wasi:cli/stdout@0.2.0-rc-2023-10-18" (instance 7))
        (with "wasi:cli/stderr@0.2.0-rc-2023-10-18" (instance 8))
        (with "wasi:cli/terminal-input@0.2.0-rc-2023-10-18" (instance 9))
        (with "wasi:cli/terminal-output@0.2.0-rc-2023-10-18" (instance 10))
        (with "wasi:cli/terminal-stdin@0.2.0-rc-2023-10-18" (instance 11))
        (with "wasi:cli/terminal-stdout@0.2.0-rc-2023-10-18" (instance 12))
        (with "wasi:cli/terminal-stderr@0.2.0-rc-2023-10-18" (instance 13))
      )
    )
    (export (;17;) "salutation" (instance 16))
    (@producers
      (processed-by "wac-parser" "0.1.0")
    )
  )
  (component (;3;)
    (core module (;0;)
      (type (;0;) (func (param i32 i32) (result i32)))
      (type (;1;) (func (param i32 i32 i32) (result i32)))
      (type (;2;) (func (param i32) (result i32)))
      (type (;3;) (func (param i32)))
      (type (;4;) (func (param i32 i32)))
      (type (;5;) (func (result i32)))
      (type (;6;) (func (param i32 i32 i32 i32)))
      (type (;7;) (func (param i32 i64) (result i32)))
      (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
      (type (;9;) (func (param i32 i32 i32)))
      (type (;10;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
      (type (;11;) (func (param i32 i32 i32 i32 i32) (result i32)))
      (type (;12;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
      (type (;13;) (func (param i32 i32 i32 i32 i32)))
      (type (;14;) (func (param i32 i32 i64)))
      (type (;15;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
      (type (;16;) (func (param i64) (result i32)))
      (type (;17;) (func (param i64 i32 i32) (result i32)))
      (type (;18;) (func (param i32 i32 i64) (result i32)))
      (type (;19;) (func (param i32 i64 i64) (result i32)))
      (type (;20;) (func (param i32 i32 i32 i64)))
      (type (;21;) (func (param i32 i32 i32 i64) (result i32)))
      (type (;22;) (func (param i32 i32 i32 i32 i32 i64 i32 i32 i64 i32) (result i32)))
      (type (;23;) (func (param i32 i32 i64 i32 i32 i64 i32) (result i32)))
      (type (;24;) (func))
      (type (;25;) (func (param i32 i64 i64 i32) (result i32)))
      (type (;26;) (func (result i64)))
      (type (;27;) (func (param i64 i32) (result i32)))
      (type (;28;) (func (param i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
      (import "[export]wasi:cli/terminal-output@0.2.0-rc-2023-10-18" "[resource-new]terminal-output" (func (;0;) (type 2)))
      (import "[export]wasi:io/poll@0.2.0-rc-2023-10-18" "[resource-new]pollable" (func (;1;) (type 2)))
      (import "[export]wasi:io/streams@0.2.0-rc-2023-10-18" "[resource-new]output-stream" (func (;2;) (type 2)))
      (import "[export]wasi:filesystem/types@0.2.0-rc-2023-10-18" "[resource-new]descriptor" (func (;3;) (type 2)))
      (import "[export]wasi:io/streams@0.2.0-rc-2023-10-18" "[resource-new]error" (func (;4;) (type 2)))
      (import "[export]wasi:io/streams@0.2.0-rc-2023-10-18" "[resource-new]input-stream" (func (;5;) (type 2)))
      (import "[export]wasi:io/streams@0.2.0-rc-2023-10-18" "[resource-rep]input-stream" (func (;6;) (type 2)))
      (import "[export]wasi:io/streams@0.2.0-rc-2023-10-18" "[resource-drop]input-stream" (func (;7;) (type 3)))
      (import "[export]wasi:cli/terminal-input@0.2.0-rc-2023-10-18" "[resource-new]terminal-input" (func (;8;) (type 2)))
      (import "[export]wasi:io/streams@0.2.0-rc-2023-10-18" "[resource-drop]error" (func (;9;) (type 3)))
      (import "[export]wasi:filesystem/types@0.2.0-rc-2023-10-18" "[resource-new]directory-entry-stream" (func (;10;) (type 2)))
      (import "[export]wasi:filesystem/types@0.2.0-rc-2023-10-18" "[resource-drop]descriptor" (func (;11;) (type 3)))
      (func (;12;) (type 2) (param i32) (result i32)
        (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 11
        global.set 0
        block ;; label = @1
          i32.const 1054268
          i32.load
          local.tee 8
          br_if 0 (;@1;)
          block ;; label = @2
            i32.const 1054716
            i32.load
            local.tee 4
            if ;; label = @3
              i32.const 1054720
              i32.load
              drop
              br 1 (;@2;)
            end
            i32.const 1054728
            i64.const -1
            i64.store align=4
            i32.const 1054720
            i64.const 281474976776192
            i64.store align=4
            i32.const 1054716
            local.get 11
            i32.const 8
            i32.add
            i32.const -16
            i32.and
            i32.const 1431655768
            i32.xor
            local.tee 4
            i32.store
            i32.const 1054736
            i32.const 0
            i32.store
            i32.const 1054688
            i32.const 0
            i32.store
          end
          i32.const 0
          local.set 8
          i32.const 1054696
          i32.const 59360
          i32.store
          i32.const 1054692
          i32.const 1054752
          i32.store
          i32.const 1054260
          i32.const 1054752
          i32.store
          i32.const 1054280
          local.get 4
          i32.store
          i32.const 1054276
          i32.const -1
          i32.store
          loop ;; label = @2
            local.get 1
            i32.const 1054304
            i32.add
            local.get 1
            i32.const 1054292
            i32.add
            local.tee 4
            i32.store
            local.get 4
            local.get 1
            i32.const 1054284
            i32.add
            local.tee 2
            i32.store
            local.get 1
            i32.const 1054296
            i32.add
            local.get 2
            i32.store
            local.get 1
            i32.const 1054312
            i32.add
            local.get 1
            i32.const 1054300
            i32.add
            local.tee 3
            i32.store
            local.get 3
            local.get 4
            i32.store
            local.get 1
            i32.const 1054320
            i32.add
            local.get 1
            i32.const 1054308
            i32.add
            local.tee 2
            i32.store
            local.get 2
            local.get 3
            i32.store
            local.get 1
            i32.const 1054316
            i32.add
            local.get 2
            i32.store
            local.get 1
            i32.const 32
            i32.add
            local.tee 1
            i32.const 256
            i32.ne
            br_if 0 (;@2;)
          end
          i32.const 1054760
          local.tee 8
          i32.const 4
          i32.add
          i32.const 59297
          i32.store
          i32.const 1054272
          i32.const 1054732
          i32.load
          i32.store
          i32.const 1054256
          i32.const 59296
          i32.store
          i32.const 1054268
          i32.const 1054760
          i32.store
          i32.const 1114060
          i32.const 56
          i32.store
        end
        block ;; label = @1
          block ;; label = @2
            block ;; label = @3
              block ;; label = @4
                block ;; label = @5
                  block ;; label = @6
                    block ;; label = @7
                      block ;; label = @8
                        block ;; label = @9
                          block ;; label = @10
                            block ;; label = @11
                              local.get 0
                              i32.const 236
                              i32.le_u
                              if ;; label = @12
                                i32.const 1054244
                                i32.load
                                local.tee 6
                                i32.const 16
                                local.get 0
                                i32.const 19
                                i32.add
                                i32.const -16
                                i32.and
                                local.get 0
                                i32.const 11
                                i32.lt_u
                                select
                                local.tee 7
                                i32.const 3
                                i32.shr_u
                                local.tee 1
                                i32.shr_u
                                local.tee 2
                                i32.const 3
                                i32.and
                                if ;; label = @13
                                  block ;; label = @14
                                    local.get 2
                                    i32.const 1
                                    i32.and
                                    local.get 1
                                    i32.or
                                    i32.const 1
                                    i32.xor
                                    local.tee 3
                                    i32.const 3
                                    i32.shl
                                    local.tee 0
                                    i32.const 1054284
                                    i32.add
                                    local.tee 2
                                    local.get 0
                                    i32.const 1054292
                                    i32.add
                                    i32.load
                                    local.tee 4
                                    i32.load offset=8
                                    local.tee 0
                                    i32.eq
                                    if ;; label = @15
                                      i32.const 1054244
                                      local.get 6
                                      i32.const -2
                                      local.get 3
                                      i32.rotl
                                      i32.and
                                      i32.store
                                      br 1 (;@14;)
                                    end
                                    local.get 2
                                    local.get 0
                                    i32.store offset=8
                                    local.get 0
                                    local.get 2
                                    i32.store offset=12
                                  end
                                  local.get 4
                                  i32.const 8
                                  i32.add
                                  local.set 1
                                  local.get 4
                                  local.get 3
                                  i32.const 3
                                  i32.shl
                                  local.tee 0
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  local.get 0
                                  local.get 4
                                  i32.add
                                  local.tee 0
                                  local.get 0
                                  i32.load offset=4
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  br 12 (;@1;)
                                end
                                local.get 7
                                i32.const 1054252
                                i32.load
                                local.tee 10
                                i32.le_u
                                br_if 1 (;@11;)
                                local.get 2
                                if ;; label = @13
                                  block ;; label = @14
                                    i32.const 2
                                    local.get 1
                                    i32.shl
                                    local.tee 0
                                    i32.const 0
                                    local.get 0
                                    i32.sub
                                    i32.or
                                    local.get 2
                                    local.get 1
                                    i32.shl
                                    i32.and
                                    local.tee 0
                                    i32.const 0
                                    local.get 0
                                    i32.sub
                                    i32.and
                                    i32.ctz
                                    local.tee 1
                                    i32.const 3
                                    i32.shl
                                    local.tee 0
                                    i32.const 1054284
                                    i32.add
                                    local.tee 2
                                    local.get 0
                                    i32.const 1054292
                                    i32.add
                                    i32.load
                                    local.tee 9
                                    i32.load offset=8
                                    local.tee 0
                                    i32.eq
                                    if ;; label = @15
                                      i32.const 1054244
                                      local.get 6
                                      i32.const -2
                                      local.get 1
                                      i32.rotl
                                      i32.and
                                      local.tee 6
                                      i32.store
                                      br 1 (;@14;)
                                    end
                                    local.get 2
                                    local.get 0
                                    i32.store offset=8
                                    local.get 0
                                    local.get 2
                                    i32.store offset=12
                                  end
                                  local.get 9
                                  local.get 7
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  local.get 9
                                  local.get 1
                                  i32.const 3
                                  i32.shl
                                  local.tee 0
                                  i32.add
                                  local.get 0
                                  local.get 7
                                  i32.sub
                                  local.tee 5
                                  i32.store
                                  local.get 7
                                  local.get 9
                                  i32.add
                                  local.tee 4
                                  local.get 5
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  local.get 10
                                  if ;; label = @14
                                    local.get 10
                                    i32.const -8
                                    i32.and
                                    i32.const 1054284
                                    i32.add
                                    local.set 0
                                    i32.const 1054264
                                    i32.load
                                    local.set 1
                                    block (result i32) ;; label = @15
                                      local.get 6
                                      i32.const 1
                                      local.get 10
                                      i32.const 3
                                      i32.shr_u
                                      i32.shl
                                      local.tee 2
                                      i32.and
                                      i32.eqz
                                      if ;; label = @16
                                        i32.const 1054244
                                        local.get 2
                                        local.get 6
                                        i32.or
                                        i32.store
                                        local.get 0
                                        br 1 (;@15;)
                                      end
                                      local.get 0
                                      i32.load offset=8
                                    end
                                    local.tee 3
                                    local.get 1
                                    i32.store offset=12
                                    local.get 0
                                    local.get 1
                                    i32.store offset=8
                                    local.get 1
                                    local.get 0
                                    i32.store offset=12
                                    local.get 1
                                    local.get 3
                                    i32.store offset=8
                                  end
                                  local.get 9
                                  i32.const 8
                                  i32.add
                                  local.set 1
                                  i32.const 1054264
                                  local.get 4
                                  i32.store
                                  i32.const 1054252
                                  local.get 5
                                  i32.store
                                  br 12 (;@1;)
                                end
                                i32.const 1054248
                                i32.load
                                local.tee 9
                                i32.eqz
                                br_if 1 (;@11;)
                                local.get 9
                                i32.const 0
                                local.get 9
                                i32.sub
                                i32.and
                                i32.ctz
                                i32.const 2
                                i32.shl
                                i32.const 1054548
                                i32.add
                                i32.load
                                local.tee 0
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 7
                                i32.sub
                                local.set 4
                                local.get 0
                                local.set 2
                                loop ;; label = @13
                                  block ;; label = @14
                                    local.get 2
                                    i32.load offset=16
                                    local.tee 1
                                    i32.eqz
                                    if ;; label = @15
                                      local.get 2
                                      i32.const 20
                                      i32.add
                                      i32.load
                                      local.tee 1
                                      i32.eqz
                                      br_if 1 (;@14;)
                                    end
                                    local.get 1
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 7
                                    i32.sub
                                    local.tee 2
                                    local.get 4
                                    local.get 2
                                    local.get 4
                                    i32.lt_u
                                    local.tee 2
                                    select
                                    local.set 4
                                    local.get 1
                                    local.get 0
                                    local.get 2
                                    select
                                    local.set 0
                                    local.get 1
                                    local.set 2
                                    br 1 (;@13;)
                                  end
                                end
                                local.get 0
                                i32.load offset=24
                                local.set 8
                                local.get 0
                                local.get 0
                                i32.load offset=12
                                local.tee 3
                                i32.ne
                                if ;; label = @13
                                  i32.const 1054260
                                  i32.load
                                  drop
                                  local.get 3
                                  local.get 0
                                  i32.load offset=8
                                  local.tee 2
                                  i32.store offset=8
                                  local.get 2
                                  local.get 3
                                  i32.store offset=12
                                  br 11 (;@2;)
                                end
                                local.get 0
                                i32.const 20
                                i32.add
                                local.tee 2
                                i32.load
                                local.tee 1
                                i32.eqz
                                if ;; label = @13
                                  local.get 0
                                  i32.load offset=16
                                  local.tee 1
                                  i32.eqz
                                  br_if 3 (;@10;)
                                  local.get 0
                                  i32.const 16
                                  i32.add
                                  local.set 2
                                end
                                loop ;; label = @13
                                  local.get 2
                                  local.set 5
                                  local.get 1
                                  local.tee 3
                                  i32.const 20
                                  i32.add
                                  local.tee 2
                                  i32.load
                                  local.tee 1
                                  br_if 0 (;@13;)
                                  local.get 3
                                  i32.const 16
                                  i32.add
                                  local.set 2
                                  local.get 3
                                  i32.load offset=16
                                  local.tee 1
                                  br_if 0 (;@13;)
                                end
                                local.get 5
                                i32.const 0
                                i32.store
                                br 10 (;@2;)
                              end
                              i32.const -1
                              local.set 7
                              local.get 0
                              i32.const -65
                              i32.gt_u
                              br_if 0 (;@11;)
                              local.get 0
                              i32.const 19
                              i32.add
                              local.tee 0
                              i32.const -16
                              i32.and
                              local.set 7
                              i32.const 1054248
                              i32.load
                              local.tee 9
                              i32.eqz
                              br_if 0 (;@11;)
                              i32.const 0
                              local.get 7
                              i32.sub
                              local.set 4
                              block ;; label = @12
                                block ;; label = @13
                                  block ;; label = @14
                                    block (result i32) ;; label = @15
                                      i32.const 0
                                      local.get 7
                                      i32.const 256
                                      i32.lt_u
                                      br_if 0 (;@15;)
                                      drop
                                      i32.const 31
                                      local.get 7
                                      i32.const 16777215
                                      i32.gt_u
                                      br_if 0 (;@15;)
                                      drop
                                      local.get 7
                                      i32.const 38
                                      local.get 0
                                      i32.const 8
                                      i32.shr_u
                                      i32.clz
                                      local.tee 0
                                      i32.sub
                                      i32.shr_u
                                      i32.const 1
                                      i32.and
                                      local.get 0
                                      i32.const 1
                                      i32.shl
                                      i32.sub
                                      i32.const 62
                                      i32.add
                                    end
                                    local.tee 6
                                    i32.const 2
                                    i32.shl
                                    i32.const 1054548
                                    i32.add
                                    i32.load
                                    local.tee 2
                                    i32.eqz
                                    if ;; label = @15
                                      i32.const 0
                                      local.set 1
                                      i32.const 0
                                      local.set 3
                                      br 1 (;@14;)
                                    end
                                    i32.const 0
                                    local.set 1
                                    local.get 7
                                    i32.const 25
                                    local.get 6
                                    i32.const 1
                                    i32.shr_u
                                    i32.sub
                                    i32.const 0
                                    local.get 6
                                    i32.const 31
                                    i32.ne
                                    select
                                    i32.shl
                                    local.set 0
                                    i32.const 0
                                    local.set 3
                                    loop ;; label = @15
                                      block ;; label = @16
                                        local.get 2
                                        i32.load offset=4
                                        i32.const -8
                                        i32.and
                                        local.get 7
                                        i32.sub
                                        local.tee 5
                                        local.get 4
                                        i32.ge_u
                                        br_if 0 (;@16;)
                                        local.get 2
                                        local.set 3
                                        local.get 5
                                        local.tee 4
                                        br_if 0 (;@16;)
                                        i32.const 0
                                        local.set 4
                                        local.get 2
                                        local.set 1
                                        br 3 (;@13;)
                                      end
                                      local.get 1
                                      local.get 2
                                      i32.const 20
                                      i32.add
                                      i32.load
                                      local.tee 5
                                      local.get 5
                                      local.get 2
                                      local.get 0
                                      i32.const 29
                                      i32.shr_u
                                      i32.const 4
                                      i32.and
                                      i32.add
                                      i32.const 16
                                      i32.add
                                      i32.load
                                      local.tee 2
                                      i32.eq
                                      select
                                      local.get 1
                                      local.get 5
                                      select
                                      local.set 1
                                      local.get 0
                                      i32.const 1
                                      i32.shl
                                      local.set 0
                                      local.get 2
                                      br_if 0 (;@15;)
                                    end
                                  end
                                  local.get 1
                                  local.get 3
                                  i32.or
                                  i32.eqz
                                  if ;; label = @14
                                    i32.const 0
                                    local.set 3
                                    i32.const 2
                                    local.get 6
                                    i32.shl
                                    local.tee 0
                                    i32.const 0
                                    local.get 0
                                    i32.sub
                                    i32.or
                                    local.get 9
                                    i32.and
                                    local.tee 0
                                    i32.eqz
                                    br_if 3 (;@11;)
                                    local.get 0
                                    i32.const 0
                                    local.get 0
                                    i32.sub
                                    i32.and
                                    i32.ctz
                                    i32.const 2
                                    i32.shl
                                    i32.const 1054548
                                    i32.add
                                    i32.load
                                    local.set 1
                                  end
                                  local.get 1
                                  i32.eqz
                                  br_if 1 (;@12;)
                                end
                                loop ;; label = @13
                                  local.get 1
                                  i32.load offset=4
                                  i32.const -8
                                  i32.and
                                  local.get 7
                                  i32.sub
                                  local.tee 0
                                  local.get 4
                                  i32.lt_u
                                  local.set 5
                                  local.get 0
                                  local.get 4
                                  local.get 5
                                  select
                                  local.set 4
                                  local.get 1
                                  local.get 3
                                  local.get 5
                                  select
                                  local.set 3
                                  local.get 1
                                  i32.load offset=16
                                  local.tee 2
                                  if (result i32) ;; label = @14
                                    local.get 2
                                  else
                                    local.get 1
                                    i32.const 20
                                    i32.add
                                    i32.load
                                  end
                                  local.tee 1
                                  br_if 0 (;@13;)
                                end
                              end
                              local.get 3
                              i32.eqz
                              br_if 0 (;@11;)
                              local.get 4
                              i32.const 1054252
                              i32.load
                              local.get 7
                              i32.sub
                              i32.ge_u
                              br_if 0 (;@11;)
                              local.get 3
                              i32.load offset=24
                              local.set 6
                              local.get 3
                              local.get 3
                              i32.load offset=12
                              local.tee 0
                              i32.ne
                              if ;; label = @12
                                i32.const 1054260
                                i32.load
                                drop
                                local.get 0
                                local.get 3
                                i32.load offset=8
                                local.tee 2
                                i32.store offset=8
                                local.get 2
                                local.get 0
                                i32.store offset=12
                                br 9 (;@3;)
                              end
                              local.get 3
                              i32.const 20
                              i32.add
                              local.tee 2
                              i32.load
                              local.tee 1
                              i32.eqz
                              if ;; label = @12
                                local.get 3
                                i32.load offset=16
                                local.tee 1
                                i32.eqz
                                br_if 3 (;@9;)
                                local.get 3
                                i32.const 16
                                i32.add
                                local.set 2
                              end
                              loop ;; label = @12
                                local.get 2
                                local.set 5
                                local.get 1
                                local.tee 0
                                i32.const 20
                                i32.add
                                local.tee 2
                                i32.load
                                local.tee 1
                                br_if 0 (;@12;)
                                local.get 0
                                i32.const 16
                                i32.add
                                local.set 2
                                local.get 0
                                i32.load offset=16
                                local.tee 1
                                br_if 0 (;@12;)
                              end
                              local.get 5
                              i32.const 0
                              i32.store
                              br 8 (;@3;)
                            end
                            local.get 7
                            i32.const 1054252
                            i32.load
                            local.tee 1
                            i32.le_u
                            if ;; label = @11
                              i32.const 1054264
                              i32.load
                              local.set 3
                              block ;; label = @12
                                local.get 1
                                local.get 7
                                i32.sub
                                local.tee 2
                                i32.const 16
                                i32.ge_u
                                if ;; label = @13
                                  local.get 3
                                  local.get 7
                                  i32.add
                                  local.tee 0
                                  local.get 2
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  local.get 1
                                  local.get 3
                                  i32.add
                                  local.get 2
                                  i32.store
                                  local.get 3
                                  local.get 7
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  br 1 (;@12;)
                                end
                                local.get 3
                                local.get 1
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 1
                                local.get 3
                                i32.add
                                local.tee 0
                                local.get 0
                                i32.load offset=4
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                i32.const 0
                                local.set 0
                                i32.const 0
                                local.set 2
                              end
                              i32.const 1054252
                              local.get 2
                              i32.store
                              i32.const 1054264
                              local.get 0
                              i32.store
                              local.get 3
                              i32.const 8
                              i32.add
                              local.set 1
                              br 10 (;@1;)
                            end
                            local.get 7
                            i32.const 1054256
                            i32.load
                            local.tee 6
                            i32.lt_u
                            if ;; label = @11
                              local.get 7
                              local.get 8
                              i32.add
                              local.tee 2
                              local.get 6
                              local.get 7
                              i32.sub
                              local.tee 0
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              i32.const 1054268
                              local.get 2
                              i32.store
                              i32.const 1054256
                              local.get 0
                              i32.store
                              local.get 8
                              local.get 7
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 8
                              i32.const 8
                              i32.add
                              local.set 1
                              br 10 (;@1;)
                            end
                            i32.const 0
                            local.set 1
                            local.get 7
                            local.get 7
                            i32.const 71
                            i32.add
                            local.tee 9
                            block (result i32) ;; label = @11
                              i32.const 1054716
                              i32.load
                              if ;; label = @12
                                i32.const 1054724
                                i32.load
                                br 1 (;@11;)
                              end
                              i32.const 1054728
                              i64.const -1
                              i64.store align=4
                              i32.const 1054720
                              i64.const 281474976776192
                              i64.store align=4
                              i32.const 1054716
                              local.get 11
                              i32.const 12
                              i32.add
                              i32.const -16
                              i32.and
                              i32.const 1431655768
                              i32.xor
                              i32.store
                              i32.const 1054736
                              i32.const 0
                              i32.store
                              i32.const 1054688
                              i32.const 0
                              i32.store
                              i32.const 65536
                            end
                            local.tee 4
                            i32.add
                            local.tee 5
                            i32.const 0
                            local.get 4
                            i32.sub
                            local.tee 4
                            i32.and
                            local.tee 2
                            i32.ge_u
                            if ;; label = @11
                              i32.const 1054740
                              i32.const 48
                              i32.store
                              br 10 (;@1;)
                            end
                            block ;; label = @11
                              i32.const 1054684
                              i32.load
                              local.tee 3
                              i32.eqz
                              br_if 0 (;@11;)
                              i32.const 1054676
                              i32.load
                              local.tee 1
                              local.get 2
                              i32.add
                              local.tee 0
                              local.get 1
                              i32.gt_u
                              local.get 0
                              local.get 3
                              i32.le_u
                              i32.and
                              br_if 0 (;@11;)
                              i32.const 0
                              local.set 1
                              i32.const 1054740
                              i32.const 48
                              i32.store
                              br 10 (;@1;)
                            end
                            i32.const 1054688
                            i32.load8_u
                            i32.const 4
                            i32.and
                            br_if 4 (;@6;)
                            block ;; label = @11
                              block ;; label = @12
                                local.get 8
                                if ;; label = @13
                                  i32.const 1054692
                                  local.set 1
                                  loop ;; label = @14
                                    local.get 8
                                    local.get 1
                                    i32.load
                                    local.tee 0
                                    i32.ge_u
                                    if ;; label = @15
                                      local.get 0
                                      local.get 1
                                      i32.load offset=4
                                      i32.add
                                      local.get 8
                                      i32.gt_u
                                      br_if 3 (;@12;)
                                    end
                                    local.get 1
                                    i32.load offset=8
                                    local.tee 1
                                    br_if 0 (;@14;)
                                  end
                                end
                                i32.const 0
                                call 106
                                local.tee 0
                                i32.const -1
                                i32.eq
                                br_if 5 (;@7;)
                                local.get 2
                                local.set 6
                                i32.const 1054720
                                i32.load
                                local.tee 3
                                i32.const 1
                                i32.sub
                                local.tee 1
                                local.get 0
                                i32.and
                                if ;; label = @13
                                  local.get 2
                                  local.get 0
                                  i32.sub
                                  local.get 0
                                  local.get 1
                                  i32.add
                                  i32.const 0
                                  local.get 3
                                  i32.sub
                                  i32.and
                                  i32.add
                                  local.set 6
                                end
                                local.get 6
                                local.get 7
                                i32.le_u
                                local.get 6
                                i32.const 2147483646
                                i32.gt_u
                                i32.or
                                br_if 5 (;@7;)
                                i32.const 1054684
                                i32.load
                                local.tee 4
                                if ;; label = @13
                                  i32.const 1054676
                                  i32.load
                                  local.tee 3
                                  local.get 6
                                  i32.add
                                  local.tee 1
                                  local.get 3
                                  i32.le_u
                                  local.get 1
                                  local.get 4
                                  i32.gt_u
                                  i32.or
                                  br_if 6 (;@7;)
                                end
                                local.get 6
                                call 106
                                local.tee 1
                                local.get 0
                                i32.ne
                                br_if 1 (;@11;)
                                br 7 (;@5;)
                              end
                              local.get 5
                              local.get 6
                              i32.sub
                              local.get 4
                              i32.and
                              local.tee 6
                              i32.const 2147483646
                              i32.gt_u
                              br_if 4 (;@7;)
                              local.get 6
                              call 106
                              local.tee 0
                              local.get 1
                              i32.load
                              local.get 1
                              i32.load offset=4
                              i32.add
                              i32.eq
                              br_if 3 (;@8;)
                              local.get 0
                              local.set 1
                            end
                            local.get 1
                            i32.const -1
                            i32.eq
                            local.get 7
                            i32.const 72
                            i32.add
                            local.get 6
                            i32.le_u
                            i32.or
                            i32.eqz
                            if ;; label = @11
                              i32.const 1054724
                              i32.load
                              local.tee 0
                              local.get 9
                              local.get 6
                              i32.sub
                              i32.add
                              i32.const 0
                              local.get 0
                              i32.sub
                              i32.and
                              local.tee 0
                              i32.const 2147483646
                              i32.gt_u
                              if ;; label = @12
                                local.get 1
                                local.set 0
                                br 7 (;@5;)
                              end
                              local.get 0
                              call 106
                              i32.const -1
                              i32.ne
                              if ;; label = @12
                                local.get 0
                                local.get 6
                                i32.add
                                local.set 6
                                local.get 1
                                local.set 0
                                br 7 (;@5;)
                              end
                              i32.const 0
                              local.get 6
                              i32.sub
                              call 106
                              drop
                              br 4 (;@7;)
                            end
                            local.get 1
                            local.tee 0
                            i32.const -1
                            i32.ne
                            br_if 5 (;@5;)
                            br 3 (;@7;)
                          end
                          i32.const 0
                          local.set 3
                          br 7 (;@2;)
                        end
                        i32.const 0
                        local.set 0
                        br 5 (;@3;)
                      end
                      local.get 0
                      i32.const -1
                      i32.ne
                      br_if 2 (;@5;)
                    end
                    i32.const 1054688
                    i32.const 1054688
                    i32.load
                    i32.const 4
                    i32.or
                    i32.store
                  end
                  local.get 2
                  i32.const 2147483646
                  i32.gt_u
                  br_if 1 (;@4;)
                  local.get 2
                  call 106
                  local.tee 0
                  i32.const -1
                  i32.eq
                  i32.const 0
                  call 106
                  local.tee 2
                  i32.const -1
                  i32.eq
                  i32.or
                  local.get 0
                  local.get 2
                  i32.ge_u
                  i32.or
                  br_if 1 (;@4;)
                  local.get 2
                  local.get 0
                  i32.sub
                  local.tee 6
                  local.get 7
                  i32.const 56
                  i32.add
                  i32.le_u
                  br_if 1 (;@4;)
                end
                i32.const 1054676
                i32.const 1054676
                i32.load
                local.get 6
                i32.add
                local.tee 2
                i32.store
                i32.const 1054680
                i32.load
                local.get 2
                i32.lt_u
                if ;; label = @5
                  i32.const 1054680
                  local.get 2
                  i32.store
                end
                block ;; label = @5
                  block ;; label = @6
                    block ;; label = @7
                      i32.const 1054268
                      i32.load
                      local.tee 5
                      if ;; label = @8
                        i32.const 1054692
                        local.set 1
                        loop ;; label = @9
                          local.get 0
                          local.get 1
                          i32.load
                          local.tee 2
                          local.get 1
                          i32.load offset=4
                          local.tee 4
                          i32.add
                          i32.eq
                          br_if 2 (;@7;)
                          local.get 1
                          i32.load offset=8
                          local.tee 1
                          br_if 0 (;@9;)
                        end
                        br 2 (;@6;)
                      end
                      i32.const 1054260
                      i32.load
                      local.tee 2
                      i32.const 0
                      local.get 0
                      local.get 2
                      i32.ge_u
                      select
                      i32.eqz
                      if ;; label = @8
                        i32.const 1054260
                        local.get 0
                        i32.store
                      end
                      i32.const 0
                      local.set 1
                      i32.const 1054696
                      local.get 6
                      i32.store
                      i32.const 1054692
                      local.get 0
                      i32.store
                      i32.const 1054276
                      i32.const -1
                      i32.store
                      i32.const 1054280
                      i32.const 1054716
                      i32.load
                      i32.store
                      i32.const 1054704
                      i32.const 0
                      i32.store
                      loop ;; label = @8
                        local.get 1
                        i32.const 1054304
                        i32.add
                        local.get 1
                        i32.const 1054292
                        i32.add
                        local.tee 4
                        i32.store
                        local.get 4
                        local.get 1
                        i32.const 1054284
                        i32.add
                        local.tee 2
                        i32.store
                        local.get 1
                        i32.const 1054296
                        i32.add
                        local.get 2
                        i32.store
                        local.get 1
                        i32.const 1054312
                        i32.add
                        local.get 1
                        i32.const 1054300
                        i32.add
                        local.tee 3
                        i32.store
                        local.get 3
                        local.get 4
                        i32.store
                        local.get 1
                        i32.const 1054320
                        i32.add
                        local.get 1
                        i32.const 1054308
                        i32.add
                        local.tee 2
                        i32.store
                        local.get 2
                        local.get 3
                        i32.store
                        local.get 1
                        i32.const 1054316
                        i32.add
                        local.get 2
                        i32.store
                        local.get 1
                        i32.const 32
                        i32.add
                        local.tee 1
                        i32.const 256
                        i32.ne
                        br_if 0 (;@8;)
                      end
                      local.get 0
                      i32.const -8
                      local.get 0
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 0
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      local.tee 2
                      i32.add
                      local.tee 3
                      local.get 6
                      i32.const 56
                      i32.sub
                      local.tee 1
                      local.get 2
                      i32.sub
                      local.tee 2
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      i32.const 1054272
                      i32.const 1054732
                      i32.load
                      i32.store
                      i32.const 1054256
                      local.get 2
                      i32.store
                      i32.const 1054268
                      local.get 3
                      i32.store
                      local.get 0
                      local.get 1
                      i32.add
                      i32.const 56
                      i32.store offset=4
                      br 2 (;@5;)
                    end
                    local.get 1
                    i32.load8_u offset=12
                    i32.const 8
                    i32.and
                    local.get 2
                    local.get 5
                    i32.gt_u
                    i32.or
                    local.get 0
                    local.get 5
                    i32.le_u
                    i32.or
                    br_if 0 (;@6;)
                    local.get 5
                    i32.const -8
                    local.get 5
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get 5
                    i32.const 8
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    local.tee 0
                    i32.add
                    local.tee 3
                    i32.const 1054256
                    i32.load
                    local.get 6
                    i32.add
                    local.tee 2
                    local.get 0
                    i32.sub
                    local.tee 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    local.get 4
                    local.get 6
                    i32.add
                    i32.store offset=4
                    i32.const 1054272
                    i32.const 1054732
                    i32.load
                    i32.store
                    i32.const 1054256
                    local.get 0
                    i32.store
                    i32.const 1054268
                    local.get 3
                    i32.store
                    local.get 2
                    local.get 5
                    i32.add
                    i32.const 56
                    i32.store offset=4
                    br 1 (;@5;)
                  end
                  i32.const 1054260
                  i32.load
                  local.get 0
                  i32.gt_u
                  if ;; label = @6
                    i32.const 1054260
                    local.get 0
                    i32.store
                  end
                  local.get 0
                  local.get 6
                  i32.add
                  local.set 2
                  i32.const 1054692
                  local.set 1
                  block ;; label = @6
                    block ;; label = @7
                      block ;; label = @8
                        block ;; label = @9
                          block ;; label = @10
                            block ;; label = @11
                              loop ;; label = @12
                                local.get 2
                                local.get 1
                                i32.load
                                i32.ne
                                if ;; label = @13
                                  local.get 1
                                  i32.load offset=8
                                  local.tee 1
                                  br_if 1 (;@12;)
                                  br 2 (;@11;)
                                end
                              end
                              local.get 1
                              i32.load8_u offset=12
                              i32.const 8
                              i32.and
                              i32.eqz
                              br_if 1 (;@10;)
                            end
                            i32.const 1054692
                            local.set 1
                            loop ;; label = @11
                              local.get 5
                              local.get 1
                              i32.load
                              local.tee 2
                              i32.ge_u
                              if ;; label = @12
                                local.get 2
                                local.get 1
                                i32.load offset=4
                                i32.add
                                local.tee 4
                                local.get 5
                                i32.gt_u
                                br_if 3 (;@9;)
                              end
                              local.get 1
                              i32.load offset=8
                              local.set 1
                              br 0 (;@11;)
                            end
                            unreachable
                          end
                          local.get 1
                          local.get 0
                          i32.store
                          local.get 1
                          local.get 1
                          i32.load offset=4
                          local.get 6
                          i32.add
                          i32.store offset=4
                          local.get 0
                          i32.const -8
                          local.get 0
                          i32.sub
                          i32.const 15
                          i32.and
                          i32.const 0
                          local.get 0
                          i32.const 8
                          i32.add
                          i32.const 15
                          i32.and
                          select
                          i32.add
                          local.tee 9
                          local.get 7
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 2
                          i32.const -8
                          local.get 2
                          i32.sub
                          i32.const 15
                          i32.and
                          i32.const 0
                          local.get 2
                          i32.const 8
                          i32.add
                          i32.const 15
                          i32.and
                          select
                          i32.add
                          local.tee 6
                          local.get 7
                          local.get 9
                          i32.add
                          local.tee 8
                          i32.sub
                          local.set 1
                          local.get 5
                          local.get 6
                          i32.eq
                          if ;; label = @10
                            i32.const 1054268
                            local.get 8
                            i32.store
                            i32.const 1054256
                            i32.const 1054256
                            i32.load
                            local.get 1
                            i32.add
                            local.tee 0
                            i32.store
                            local.get 8
                            local.get 0
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            br 3 (;@7;)
                          end
                          i32.const 1054264
                          i32.load
                          local.get 6
                          i32.eq
                          if ;; label = @10
                            i32.const 1054264
                            local.get 8
                            i32.store
                            i32.const 1054252
                            i32.const 1054252
                            i32.load
                            local.get 1
                            i32.add
                            local.tee 0
                            i32.store
                            local.get 8
                            local.get 0
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 0
                            local.get 8
                            i32.add
                            local.get 0
                            i32.store
                            br 3 (;@7;)
                          end
                          local.get 6
                          i32.load offset=4
                          local.tee 4
                          i32.const 3
                          i32.and
                          i32.const 1
                          i32.eq
                          if ;; label = @10
                            local.get 4
                            i32.const -8
                            i32.and
                            local.set 5
                            block ;; label = @11
                              local.get 4
                              i32.const 255
                              i32.le_u
                              if ;; label = @12
                                local.get 4
                                i32.const 3
                                i32.shr_u
                                local.set 0
                                local.get 6
                                i32.load offset=12
                                local.tee 2
                                local.get 6
                                i32.load offset=8
                                local.tee 3
                                i32.eq
                                if ;; label = @13
                                  i32.const 1054244
                                  i32.const 1054244
                                  i32.load
                                  i32.const -2
                                  local.get 0
                                  i32.rotl
                                  i32.and
                                  i32.store
                                  br 2 (;@11;)
                                end
                                local.get 2
                                local.get 3
                                i32.store offset=8
                                local.get 3
                                local.get 2
                                i32.store offset=12
                                br 1 (;@11;)
                              end
                              local.get 6
                              i32.load offset=24
                              local.set 7
                              block ;; label = @12
                                local.get 6
                                local.get 6
                                i32.load offset=12
                                local.tee 0
                                i32.ne
                                if ;; label = @13
                                  local.get 0
                                  local.get 6
                                  i32.load offset=8
                                  local.tee 2
                                  i32.store offset=8
                                  local.get 2
                                  local.get 0
                                  i32.store offset=12
                                  br 1 (;@12;)
                                end
                                block ;; label = @13
                                  local.get 6
                                  i32.const 20
                                  i32.add
                                  local.tee 4
                                  i32.load
                                  local.tee 2
                                  br_if 0 (;@13;)
                                  local.get 6
                                  i32.const 16
                                  i32.add
                                  local.tee 4
                                  i32.load
                                  local.tee 2
                                  br_if 0 (;@13;)
                                  i32.const 0
                                  local.set 0
                                  br 1 (;@12;)
                                end
                                loop ;; label = @13
                                  local.get 4
                                  local.set 3
                                  local.get 2
                                  local.tee 0
                                  i32.const 20
                                  i32.add
                                  local.tee 4
                                  i32.load
                                  local.tee 2
                                  br_if 0 (;@13;)
                                  local.get 0
                                  i32.const 16
                                  i32.add
                                  local.set 4
                                  local.get 0
                                  i32.load offset=16
                                  local.tee 2
                                  br_if 0 (;@13;)
                                end
                                local.get 3
                                i32.const 0
                                i32.store
                              end
                              local.get 7
                              i32.eqz
                              br_if 0 (;@11;)
                              block ;; label = @12
                                local.get 6
                                i32.load offset=28
                                local.tee 3
                                i32.const 2
                                i32.shl
                                i32.const 1054548
                                i32.add
                                local.tee 2
                                i32.load
                                local.get 6
                                i32.eq
                                if ;; label = @13
                                  local.get 2
                                  local.get 0
                                  i32.store
                                  local.get 0
                                  br_if 1 (;@12;)
                                  i32.const 1054248
                                  i32.const 1054248
                                  i32.load
                                  i32.const -2
                                  local.get 3
                                  i32.rotl
                                  i32.and
                                  i32.store
                                  br 2 (;@11;)
                                end
                                local.get 7
                                i32.const 16
                                i32.const 20
                                local.get 7
                                i32.load offset=16
                                local.get 6
                                i32.eq
                                select
                                i32.add
                                local.get 0
                                i32.store
                                local.get 0
                                i32.eqz
                                br_if 1 (;@11;)
                              end
                              local.get 0
                              local.get 7
                              i32.store offset=24
                              local.get 6
                              i32.load offset=16
                              local.tee 2
                              if ;; label = @12
                                local.get 0
                                local.get 2
                                i32.store offset=16
                                local.get 2
                                local.get 0
                                i32.store offset=24
                              end
                              local.get 6
                              i32.load offset=20
                              local.tee 2
                              i32.eqz
                              br_if 0 (;@11;)
                              local.get 0
                              i32.const 20
                              i32.add
                              local.get 2
                              i32.store
                              local.get 2
                              local.get 0
                              i32.store offset=24
                            end
                            local.get 5
                            local.get 6
                            i32.add
                            local.tee 6
                            i32.load offset=4
                            local.set 4
                            local.get 1
                            local.get 5
                            i32.add
                            local.set 1
                          end
                          local.get 6
                          local.get 4
                          i32.const -2
                          i32.and
                          i32.store offset=4
                          local.get 1
                          local.get 8
                          i32.add
                          local.get 1
                          i32.store
                          local.get 8
                          local.get 1
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 1
                          i32.const 255
                          i32.le_u
                          if ;; label = @10
                            local.get 1
                            i32.const -8
                            i32.and
                            i32.const 1054284
                            i32.add
                            local.set 0
                            block (result i32) ;; label = @11
                              i32.const 1054244
                              i32.load
                              local.tee 3
                              i32.const 1
                              local.get 1
                              i32.const 3
                              i32.shr_u
                              i32.shl
                              local.tee 2
                              i32.and
                              i32.eqz
                              if ;; label = @12
                                i32.const 1054244
                                local.get 2
                                local.get 3
                                i32.or
                                i32.store
                                local.get 0
                                br 1 (;@11;)
                              end
                              local.get 0
                              i32.load offset=8
                            end
                            local.tee 1
                            local.get 8
                            i32.store offset=12
                            local.get 0
                            local.get 8
                            i32.store offset=8
                            local.get 8
                            local.get 0
                            i32.store offset=12
                            local.get 8
                            local.get 1
                            i32.store offset=8
                            br 3 (;@7;)
                          end
                          i32.const 31
                          local.set 4
                          local.get 1
                          i32.const 16777215
                          i32.le_u
                          if ;; label = @10
                            local.get 1
                            i32.const 38
                            local.get 1
                            i32.const 8
                            i32.shr_u
                            i32.clz
                            local.tee 0
                            i32.sub
                            i32.shr_u
                            i32.const 1
                            i32.and
                            local.get 0
                            i32.const 1
                            i32.shl
                            i32.sub
                            i32.const 62
                            i32.add
                            local.set 4
                          end
                          local.get 8
                          local.get 4
                          i32.store offset=28
                          local.get 8
                          i64.const 0
                          i64.store offset=16 align=4
                          local.get 4
                          i32.const 2
                          i32.shl
                          i32.const 1054548
                          i32.add
                          local.set 3
                          i32.const 1054248
                          i32.load
                          local.tee 2
                          i32.const 1
                          local.get 4
                          i32.shl
                          local.tee 0
                          i32.and
                          i32.eqz
                          if ;; label = @10
                            local.get 3
                            local.get 8
                            i32.store
                            i32.const 1054248
                            local.get 0
                            local.get 2
                            i32.or
                            i32.store
                            local.get 8
                            local.get 3
                            i32.store offset=24
                            local.get 8
                            local.get 8
                            i32.store offset=8
                            local.get 8
                            local.get 8
                            i32.store offset=12
                            br 3 (;@7;)
                          end
                          local.get 1
                          i32.const 25
                          local.get 4
                          i32.const 1
                          i32.shr_u
                          i32.sub
                          i32.const 0
                          local.get 4
                          i32.const 31
                          i32.ne
                          select
                          i32.shl
                          local.set 4
                          local.get 3
                          i32.load
                          local.set 0
                          loop ;; label = @10
                            local.get 0
                            local.tee 2
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 1
                            i32.eq
                            br_if 2 (;@8;)
                            local.get 4
                            i32.const 29
                            i32.shr_u
                            local.set 0
                            local.get 4
                            i32.const 1
                            i32.shl
                            local.set 4
                            local.get 2
                            local.get 0
                            i32.const 4
                            i32.and
                            i32.add
                            i32.const 16
                            i32.add
                            local.tee 3
                            i32.load
                            local.tee 0
                            br_if 0 (;@10;)
                          end
                          local.get 3
                          local.get 8
                          i32.store
                          local.get 8
                          local.get 2
                          i32.store offset=24
                          local.get 8
                          local.get 8
                          i32.store offset=12
                          local.get 8
                          local.get 8
                          i32.store offset=8
                          br 2 (;@7;)
                        end
                        local.get 0
                        i32.const -8
                        local.get 0
                        i32.sub
                        i32.const 15
                        i32.and
                        i32.const 0
                        local.get 0
                        i32.const 8
                        i32.add
                        i32.const 15
                        i32.and
                        select
                        local.tee 1
                        i32.add
                        local.tee 3
                        local.get 6
                        i32.const 56
                        i32.sub
                        local.tee 2
                        local.get 1
                        i32.sub
                        local.tee 1
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 2
                        i32.add
                        i32.const 56
                        i32.store offset=4
                        local.get 5
                        local.get 4
                        i32.const 55
                        local.get 4
                        i32.sub
                        i32.const 15
                        i32.and
                        i32.const 0
                        local.get 4
                        i32.const 55
                        i32.sub
                        i32.const 15
                        i32.and
                        select
                        i32.add
                        i32.const 63
                        i32.sub
                        local.tee 2
                        local.get 2
                        local.get 5
                        i32.const 16
                        i32.add
                        i32.lt_u
                        select
                        local.tee 2
                        i32.const 35
                        i32.store offset=4
                        i32.const 1054272
                        i32.const 1054732
                        i32.load
                        i32.store
                        i32.const 1054256
                        local.get 1
                        i32.store
                        i32.const 1054268
                        local.get 3
                        i32.store
                        local.get 2
                        i32.const 16
                        i32.add
                        i32.const 1054700
                        i64.load align=4
                        i64.store align=4
                        local.get 2
                        i32.const 1054692
                        i64.load align=4
                        i64.store offset=8 align=4
                        i32.const 1054700
                        local.get 2
                        i32.const 8
                        i32.add
                        i32.store
                        i32.const 1054696
                        local.get 6
                        i32.store
                        i32.const 1054692
                        local.get 0
                        i32.store
                        i32.const 1054704
                        i32.const 0
                        i32.store
                        local.get 2
                        i32.const 36
                        i32.add
                        local.set 1
                        loop ;; label = @9
                          local.get 1
                          i32.const 7
                          i32.store
                          local.get 1
                          i32.const 4
                          i32.add
                          local.tee 1
                          local.get 4
                          i32.lt_u
                          br_if 0 (;@9;)
                        end
                        local.get 2
                        local.get 5
                        i32.eq
                        br_if 3 (;@5;)
                        local.get 2
                        local.get 2
                        i32.load offset=4
                        i32.const -2
                        i32.and
                        i32.store offset=4
                        local.get 2
                        local.get 2
                        local.get 5
                        i32.sub
                        local.tee 4
                        i32.store
                        local.get 5
                        local.get 4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 4
                        i32.const 255
                        i32.le_u
                        if ;; label = @9
                          local.get 4
                          i32.const -8
                          i32.and
                          i32.const 1054284
                          i32.add
                          local.set 0
                          block (result i32) ;; label = @10
                            i32.const 1054244
                            i32.load
                            local.tee 1
                            i32.const 1
                            local.get 4
                            i32.const 3
                            i32.shr_u
                            i32.shl
                            local.tee 2
                            i32.and
                            i32.eqz
                            if ;; label = @11
                              i32.const 1054244
                              local.get 1
                              local.get 2
                              i32.or
                              i32.store
                              local.get 0
                              br 1 (;@10;)
                            end
                            local.get 0
                            i32.load offset=8
                          end
                          local.tee 2
                          local.get 5
                          i32.store offset=12
                          local.get 0
                          local.get 5
                          i32.store offset=8
                          local.get 5
                          local.get 0
                          i32.store offset=12
                          local.get 5
                          local.get 2
                          i32.store offset=8
                          br 4 (;@5;)
                        end
                        i32.const 31
                        local.set 1
                        local.get 4
                        i32.const 16777215
                        i32.le_u
                        if ;; label = @9
                          local.get 4
                          i32.const 38
                          local.get 4
                          i32.const 8
                          i32.shr_u
                          i32.clz
                          local.tee 0
                          i32.sub
                          i32.shr_u
                          i32.const 1
                          i32.and
                          local.get 0
                          i32.const 1
                          i32.shl
                          i32.sub
                          i32.const 62
                          i32.add
                          local.set 1
                        end
                        local.get 5
                        local.get 1
                        i32.store offset=28
                        local.get 5
                        i64.const 0
                        i64.store offset=16 align=4
                        local.get 1
                        i32.const 2
                        i32.shl
                        i32.const 1054548
                        i32.add
                        local.set 3
                        i32.const 1054248
                        i32.load
                        local.tee 2
                        i32.const 1
                        local.get 1
                        i32.shl
                        local.tee 0
                        i32.and
                        i32.eqz
                        if ;; label = @9
                          local.get 3
                          local.get 5
                          i32.store
                          i32.const 1054248
                          local.get 0
                          local.get 2
                          i32.or
                          i32.store
                          local.get 5
                          local.get 3
                          i32.store offset=24
                          local.get 5
                          local.get 5
                          i32.store offset=8
                          local.get 5
                          local.get 5
                          i32.store offset=12
                          br 4 (;@5;)
                        end
                        local.get 4
                        i32.const 25
                        local.get 1
                        i32.const 1
                        i32.shr_u
                        i32.sub
                        i32.const 0
                        local.get 1
                        i32.const 31
                        i32.ne
                        select
                        i32.shl
                        local.set 1
                        local.get 3
                        i32.load
                        local.set 3
                        loop ;; label = @9
                          local.get 3
                          local.tee 0
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 4
                          i32.eq
                          br_if 3 (;@6;)
                          local.get 1
                          i32.const 29
                          i32.shr_u
                          local.set 2
                          local.get 1
                          i32.const 1
                          i32.shl
                          local.set 1
                          local.get 0
                          local.get 2
                          i32.const 4
                          i32.and
                          i32.add
                          i32.const 16
                          i32.add
                          local.tee 2
                          i32.load
                          local.tee 3
                          br_if 0 (;@9;)
                        end
                        local.get 2
                        local.get 5
                        i32.store
                        local.get 5
                        local.get 0
                        i32.store offset=24
                        local.get 5
                        local.get 5
                        i32.store offset=12
                        local.get 5
                        local.get 5
                        i32.store offset=8
                        br 3 (;@5;)
                      end
                      local.get 2
                      i32.load offset=8
                      local.tee 0
                      local.get 8
                      i32.store offset=12
                      local.get 2
                      local.get 8
                      i32.store offset=8
                      local.get 8
                      i32.const 0
                      i32.store offset=24
                      local.get 8
                      local.get 2
                      i32.store offset=12
                      local.get 8
                      local.get 0
                      i32.store offset=8
                    end
                    local.get 9
                    i32.const 8
                    i32.add
                    local.set 1
                    br 5 (;@1;)
                  end
                  local.get 0
                  i32.load offset=8
                  local.tee 2
                  local.get 5
                  i32.store offset=12
                  local.get 0
                  local.get 5
                  i32.store offset=8
                  local.get 5
                  i32.const 0
                  i32.store offset=24
                  local.get 5
                  local.get 0
                  i32.store offset=12
                  local.get 5
                  local.get 2
                  i32.store offset=8
                end
                i32.const 1054256
                i32.load
                local.tee 0
                local.get 7
                i32.le_u
                br_if 0 (;@4;)
                i32.const 1054268
                i32.load
                local.tee 1
                local.get 7
                i32.add
                local.tee 2
                local.get 0
                local.get 7
                i32.sub
                local.tee 0
                i32.const 1
                i32.or
                i32.store offset=4
                i32.const 1054256
                local.get 0
                i32.store
                i32.const 1054268
                local.get 2
                i32.store
                local.get 1
                local.get 7
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 1
                i32.const 8
                i32.add
                local.set 1
                br 3 (;@1;)
              end
              i32.const 0
              local.set 1
              i32.const 1054740
              i32.const 48
              i32.store
              br 2 (;@1;)
            end
            block ;; label = @3
              local.get 6
              i32.eqz
              br_if 0 (;@3;)
              block ;; label = @4
                local.get 3
                i32.load offset=28
                local.tee 1
                i32.const 2
                i32.shl
                i32.const 1054548
                i32.add
                local.tee 2
                i32.load
                local.get 3
                i32.eq
                if ;; label = @5
                  local.get 2
                  local.get 0
                  i32.store
                  local.get 0
                  br_if 1 (;@4;)
                  i32.const 1054248
                  local.get 9
                  i32.const -2
                  local.get 1
                  i32.rotl
                  i32.and
                  local.tee 9
                  i32.store
                  br 2 (;@3;)
                end
                local.get 6
                i32.const 16
                i32.const 20
                local.get 6
                i32.load offset=16
                local.get 3
                i32.eq
                select
                i32.add
                local.get 0
                i32.store
                local.get 0
                i32.eqz
                br_if 1 (;@3;)
              end
              local.get 0
              local.get 6
              i32.store offset=24
              local.get 3
              i32.load offset=16
              local.tee 2
              if ;; label = @4
                local.get 0
                local.get 2
                i32.store offset=16
                local.get 2
                local.get 0
                i32.store offset=24
              end
              local.get 3
              i32.const 20
              i32.add
              i32.load
              local.tee 2
              i32.eqz
              br_if 0 (;@3;)
              local.get 0
              i32.const 20
              i32.add
              local.get 2
              i32.store
              local.get 2
              local.get 0
              i32.store offset=24
            end
            block ;; label = @3
              local.get 4
              i32.const 15
              i32.le_u
              if ;; label = @4
                local.get 3
                local.get 4
                local.get 7
                i32.add
                local.tee 0
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 0
                local.get 3
                i32.add
                local.tee 0
                local.get 0
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
                br 1 (;@3;)
              end
              local.get 3
              local.get 7
              i32.add
              local.tee 5
              local.get 4
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 3
              local.get 7
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 4
              local.get 5
              i32.add
              local.get 4
              i32.store
              local.get 4
              i32.const 255
              i32.le_u
              if ;; label = @4
                local.get 4
                i32.const -8
                i32.and
                i32.const 1054284
                i32.add
                local.set 0
                block (result i32) ;; label = @5
                  i32.const 1054244
                  i32.load
                  local.tee 1
                  i32.const 1
                  local.get 4
                  i32.const 3
                  i32.shr_u
                  i32.shl
                  local.tee 2
                  i32.and
                  i32.eqz
                  if ;; label = @6
                    i32.const 1054244
                    local.get 1
                    local.get 2
                    i32.or
                    i32.store
                    local.get 0
                    br 1 (;@5;)
                  end
                  local.get 0
                  i32.load offset=8
                end
                local.tee 4
                local.get 5
                i32.store offset=12
                local.get 0
                local.get 5
                i32.store offset=8
                local.get 5
                local.get 0
                i32.store offset=12
                local.get 5
                local.get 4
                i32.store offset=8
                br 1 (;@3;)
              end
              i32.const 31
              local.set 1
              local.get 4
              i32.const 16777215
              i32.le_u
              if ;; label = @4
                local.get 4
                i32.const 38
                local.get 4
                i32.const 8
                i32.shr_u
                i32.clz
                local.tee 0
                i32.sub
                i32.shr_u
                i32.const 1
                i32.and
                local.get 0
                i32.const 1
                i32.shl
                i32.sub
                i32.const 62
                i32.add
                local.set 1
              end
              local.get 5
              local.get 1
              i32.store offset=28
              local.get 5
              i64.const 0
              i64.store offset=16 align=4
              local.get 1
              i32.const 2
              i32.shl
              i32.const 1054548
              i32.add
              local.set 2
              local.get 9
              i32.const 1
              local.get 1
              i32.shl
              local.tee 0
              i32.and
              i32.eqz
              if ;; label = @4
                local.get 2
                local.get 5
                i32.store
                i32.const 1054248
                local.get 0
                local.get 9
                i32.or
                i32.store
                local.get 5
                local.get 2
                i32.store offset=24
                local.get 5
                local.get 5
                i32.store offset=8
                local.get 5
                local.get 5
                i32.store offset=12
                br 1 (;@3;)
              end
              local.get 4
              i32.const 25
              local.get 1
              i32.const 1
              i32.shr_u
              i32.sub
              i32.const 0
              local.get 1
              i32.const 31
              i32.ne
              select
              i32.shl
              local.set 1
              local.get 2
              i32.load
              local.set 7
              block ;; label = @4
                loop ;; label = @5
                  local.get 7
                  local.tee 0
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.get 4
                  i32.eq
                  br_if 1 (;@4;)
                  local.get 1
                  i32.const 29
                  i32.shr_u
                  local.set 2
                  local.get 1
                  i32.const 1
                  i32.shl
                  local.set 1
                  local.get 0
                  local.get 2
                  i32.const 4
                  i32.and
                  i32.add
                  i32.const 16
                  i32.add
                  local.tee 2
                  i32.load
                  local.tee 7
                  br_if 0 (;@5;)
                end
                local.get 2
                local.get 5
                i32.store
                local.get 5
                local.get 0
                i32.store offset=24
                local.get 5
                local.get 5
                i32.store offset=12
                local.get 5
                local.get 5
                i32.store offset=8
                br 1 (;@3;)
              end
              local.get 0
              i32.load offset=8
              local.tee 2
              local.get 5
              i32.store offset=12
              local.get 0
              local.get 5
              i32.store offset=8
              local.get 5
              i32.const 0
              i32.store offset=24
              local.get 5
              local.get 0
              i32.store offset=12
              local.get 5
              local.get 2
              i32.store offset=8
            end
            local.get 3
            i32.const 8
            i32.add
            local.set 1
            br 1 (;@1;)
          end
          block ;; label = @2
            local.get 8
            i32.eqz
            br_if 0 (;@2;)
            block ;; label = @3
              local.get 0
              i32.load offset=28
              local.tee 1
              i32.const 2
              i32.shl
              i32.const 1054548
              i32.add
              local.tee 2
              i32.load
              local.get 0
              i32.eq
              if ;; label = @4
                local.get 2
                local.get 3
                i32.store
                local.get 3
                br_if 1 (;@3;)
                i32.const 1054248
                local.get 9
                i32.const -2
                local.get 1
                i32.rotl
                i32.and
                i32.store
                br 2 (;@2;)
              end
              local.get 8
              i32.const 16
              i32.const 20
              local.get 8
              i32.load offset=16
              local.get 0
              i32.eq
              select
              i32.add
              local.get 3
              i32.store
              local.get 3
              i32.eqz
              br_if 1 (;@2;)
            end
            local.get 3
            local.get 8
            i32.store offset=24
            local.get 0
            i32.load offset=16
            local.tee 2
            if ;; label = @3
              local.get 3
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 3
              i32.store offset=24
            end
            local.get 0
            i32.const 20
            i32.add
            i32.load
            local.tee 2
            i32.eqz
            br_if 0 (;@2;)
            local.get 3
            i32.const 20
            i32.add
            local.get 2
            i32.store
            local.get 2
            local.get 3
            i32.store offset=24
          end
          block ;; label = @2
            local.get 4
            i32.const 15
            i32.le_u
            if ;; label = @3
              local.get 0
              local.get 4
              local.get 7
              i32.add
              local.tee 2
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 0
              local.get 2
              i32.add
              local.tee 2
              local.get 2
              i32.load offset=4
              i32.const 1
              i32.or
              i32.store offset=4
              br 1 (;@2;)
            end
            local.get 0
            local.get 7
            i32.add
            local.tee 5
            local.get 4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 7
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 4
            local.get 5
            i32.add
            local.get 4
            i32.store
            local.get 10
            if ;; label = @3
              local.get 10
              i32.const -8
              i32.and
              i32.const 1054284
              i32.add
              local.set 2
              i32.const 1054264
              i32.load
              local.set 7
              block (result i32) ;; label = @4
                i32.const 1
                local.get 10
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 1
                local.get 6
                i32.and
                i32.eqz
                if ;; label = @5
                  i32.const 1054244
                  local.get 1
                  local.get 6
                  i32.or
                  i32.store
                  local.get 2
                  br 1 (;@4;)
                end
                local.get 2
                i32.load offset=8
              end
              local.tee 3
              local.get 7
              i32.store offset=12
              local.get 2
              local.get 7
              i32.store offset=8
              local.get 7
              local.get 2
              i32.store offset=12
              local.get 7
              local.get 3
              i32.store offset=8
            end
            i32.const 1054264
            local.get 5
            i32.store
            i32.const 1054252
            local.get 4
            i32.store
          end
          local.get 0
          i32.const 8
          i32.add
          local.set 1
        end
        local.get 11
        i32.const 16
        i32.add
        global.set 0
        local.get 1
      )
      (func (;13;) (type 5) (result i32)
        (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
        global.get 0
        i32.const 160
        i32.sub
        local.tee 3
        global.set 0
        call 176
        block ;; label = @1
          i32.const 1053896
          i32.load8_u
          i32.eqz
          if ;; label = @2
            i32.const 1053920
            i32.load8_u
            i32.const 192
            i32.and
            if ;; label = @3
              unreachable
            end
            i32.const 1053904
            i32.load
            local.tee 6
            i32.const 2
            i32.shl
            local.set 5
            i32.const 4
            local.set 7
            local.get 6
            if ;; label = @3
              i32.const 1053912
              i32.load
              local.set 2
              i32.const 1053916
              i32.load
              local.set 4
              i32.const 1053908
              i32.load
              local.set 8
              i32.const 4
              local.get 5
              call 172
              local.tee 7
              i32.eqz
              br_if 2 (;@1;)
              local.get 6
              local.set 0
              loop ;; label = @4
                local.get 1
                local.get 8
                i32.add
                i32.load
                local.tee 9
                local.get 2
                i32.ge_u
                br_if 3 (;@1;)
                local.get 1
                local.get 7
                i32.add
                local.get 4
                local.get 9
                i32.const 4
                i32.shl
                i32.add
                i32.store
                local.get 1
                i32.const 4
                i32.add
                local.set 1
                local.get 0
                i32.const 1
                i32.sub
                local.tee 0
                br_if 0 (;@4;)
              end
            end
            i32.const 0
            local.set 1
            loop ;; label = @3
              local.get 1
              local.get 5
              i32.ne
              if ;; label = @4
                local.get 3
                i32.const 24
                i32.add
                local.get 1
                local.get 7
                i32.add
                i32.load
                local.tee 2
                i32.load
                call 110
                local.get 3
                i32.load offset=24
                local.set 4
                local.get 3
                i32.const 16
                i32.add
                local.get 3
                i32.load offset=28
                local.tee 0
                call 92
                local.get 3
                i32.load offset=20
                local.set 8
                local.get 3
                i32.load offset=16
                local.get 4
                local.get 0
                call 22
                local.set 4
                local.get 3
                local.get 0
                i32.store offset=84
                local.get 3
                local.get 8
                i32.store offset=80
                local.get 3
                local.get 4
                i32.store offset=76
                local.get 3
                local.get 2
                i32.store offset=72
                local.get 3
                i32.const 0
                i32.store offset=68
                local.get 1
                i32.const 4
                i32.add
                local.set 1
                local.get 3
                i32.const 68
                i32.add
                local.set 4
                i32.const 1053880
                i32.load
                local.tee 0
                i32.const 1053876
                i32.load
                i32.eq
                if ;; label = @5
                  global.get 0
                  i32.const 32
                  i32.sub
                  local.tee 2
                  global.set 0
                  block (result i32) ;; label = @6
                    i32.const 0
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.eqz
                    br_if 0 (;@6;)
                    drop
                    i32.const 4
                    i32.const 1053876
                    i32.load
                    local.tee 8
                    i32.const 1
                    i32.shl
                    local.tee 9
                    local.get 0
                    local.get 0
                    local.get 9
                    i32.lt_u
                    select
                    local.tee 0
                    local.get 0
                    i32.const 4
                    i32.le_u
                    select
                    local.tee 0
                    i32.const 20
                    i32.mul
                    local.set 9
                    local.get 0
                    i32.const 107374183
                    i32.lt_u
                    i32.const 2
                    i32.shl
                    local.set 11
                    block ;; label = @7
                      local.get 8
                      if ;; label = @8
                        local.get 2
                        i32.const 4
                        i32.store offset=24
                        local.get 2
                        local.get 8
                        i32.const 20
                        i32.mul
                        i32.store offset=28
                        local.get 2
                        i32.const 1053872
                        i32.load
                        i32.store offset=20
                        br 1 (;@7;)
                      end
                      local.get 2
                      i32.const 0
                      i32.store offset=24
                    end
                    local.get 2
                    i32.const 8
                    i32.add
                    local.get 11
                    local.get 9
                    local.get 2
                    i32.const 20
                    i32.add
                    call 55
                    local.get 2
                    i32.load offset=8
                    i32.eqz
                    if ;; label = @7
                      i32.const 1053876
                      local.get 0
                      i32.store
                      i32.const 1053872
                      local.get 2
                      i32.load offset=12
                      i32.store
                      i32.const -2147483647
                      br 1 (;@6;)
                    end
                    local.get 2
                    i32.const 16
                    i32.add
                    i32.load
                    local.set 0
                    local.get 2
                    i32.load offset=12
                  end
                  local.get 0
                  call 184
                  local.get 2
                  i32.const 32
                  i32.add
                  global.set 0
                  i32.const 1053880
                  i32.load
                  local.set 0
                end
                i32.const 1053872
                i32.load
                local.get 0
                i32.const 20
                i32.mul
                i32.add
                local.tee 0
                local.get 4
                i64.load align=4
                i64.store align=4
                local.get 0
                i32.const 16
                i32.add
                local.get 4
                i32.const 16
                i32.add
                i32.load
                i32.store
                local.get 0
                i32.const 8
                i32.add
                local.get 4
                i32.const 8
                i32.add
                i64.load align=4
                i64.store align=4
                i32.const 1053880
                i32.const 1053880
                i32.load
                i32.const 1
                i32.add
                i32.store
                br 1 (;@3;)
              end
            end
            local.get 6
            if ;; label = @3
              local.get 7
              local.get 5
              call 181
            end
            i32.const 1053896
            i32.const 1
            i32.store8
          end
          block ;; label = @2
            i32.const 1053880
            i32.load
            local.tee 6
            i32.eqz
            if ;; label = @3
              i32.const 4
              local.set 7
              br 1 (;@2;)
            end
            local.get 6
            i32.const 134217727
            i32.gt_u
            br_if 1 (;@1;)
            local.get 6
            i32.const 4
            i32.shl
            local.tee 0
            i32.const 0
            i32.lt_s
            br_if 1 (;@1;)
            i32.const 1053872
            i32.load
            local.set 1
            i32.const 4
            local.get 0
            call 172
            local.tee 7
            i32.eqz
            br_if 1 (;@1;)
            local.get 3
            i32.const 72
            i32.add
            local.set 10
            local.get 7
            local.set 0
            local.get 6
            local.set 2
            loop ;; label = @3
              block (result i32) ;; label = @4
                local.get 1
                i32.load
                i32.eqz
                if ;; label = @5
                  i32.const 0
                  local.get 1
                  i32.const 4
                  i32.add
                  i32.load
                  call 164
                  br 1 (;@4;)
                end
                local.get 1
                i32.const 4
                i32.add
                i32.load
                local.tee 5
                local.get 5
                i32.load
                i32.const 1
                i32.add
                local.tee 4
                i32.store
                local.get 4
                i32.eqz
                br_if 3 (;@1;)
                i32.const 1
                local.get 5
                call 164
              end
              local.set 8
              local.get 1
              i32.const 8
              i32.add
              i32.load
              local.set 9
              local.get 1
              i32.const 16
              i32.add
              i32.load
              local.set 4
              global.get 0
              i32.const 16
              i32.sub
              local.tee 5
              global.set 0
              local.get 5
              i32.const 8
              i32.add
              local.get 4
              call 92
              local.get 5
              i32.load offset=12
              local.set 11
              local.get 5
              i32.load offset=8
              local.get 9
              local.get 4
              call 22
              local.set 9
              local.get 10
              local.get 4
              i32.store offset=8
              local.get 10
              local.get 11
              i32.store offset=4
              local.get 10
              local.get 9
              i32.store
              local.get 5
              i32.const 16
              i32.add
              global.set 0
              local.get 0
              i32.const 8
              i32.add
              local.get 3
              i32.const 76
              i32.add
              i64.load align=4
              i64.store align=4
              local.get 3
              local.get 8
              i32.store offset=68
              local.get 0
              local.get 3
              i64.load offset=68 align=4
              i64.store align=4
              local.get 1
              i32.const 20
              i32.add
              local.set 1
              local.get 0
              i32.const 16
              i32.add
              local.set 0
              local.get 2
              i32.const 1
              i32.sub
              local.tee 2
              br_if 0 (;@3;)
            end
            i32.const 4
            local.get 6
            i32.const 12
            i32.mul
            call 183
            local.tee 10
            i32.eqz
            br_if 1 (;@1;)
          end
          local.get 7
          local.get 6
          i32.const 4
          i32.shl
          local.tee 4
          i32.add
          local.set 5
          i32.const 0
          local.set 2
          local.get 10
          local.set 0
          local.get 7
          local.set 1
          loop ;; label = @2
            block ;; label = @3
              local.get 5
              local.get 2
              local.get 4
              i32.eq
              if (result i32) ;; label = @4
                local.get 5
              else
                local.get 1
                i32.load offset=4
                local.tee 8
                br_if 1 (;@3;)
                local.get 2
                local.get 7
                i32.add
                i32.const 16
                i32.add
              end
              local.tee 1
              i32.sub
              i32.const 4
              i32.shr_u
              local.set 0
              loop ;; label = @4
                local.get 0
                if ;; label = @5
                  local.get 1
                  i32.load
                  call 11
                  local.get 1
                  i32.const 4
                  i32.add
                  i32.load
                  local.get 1
                  i32.const 8
                  i32.add
                  i32.load
                  call 181
                  local.get 0
                  i32.const 1
                  i32.sub
                  local.set 0
                  local.get 1
                  i32.const 16
                  i32.add
                  local.set 1
                  br 1 (;@4;)
                end
              end
              local.get 6
              if ;; label = @4
                local.get 7
                local.get 6
                i32.const 4
                i32.shl
                call 181
              end
              i32.const 1054064
              local.get 10
              i32.store
              i32.const 1054068
              local.get 6
              i32.store
              local.get 3
              i32.const 160
              i32.add
              global.set 0
              i32.const 1054064
              return
            end
            local.get 1
            i64.load offset=8 align=4
            local.set 12
            local.get 0
            local.get 1
            i32.load
            i32.store
            local.get 3
            local.get 12
            i64.store offset=72 align=4
            local.get 3
            local.get 8
            i32.store offset=68
            local.get 3
            i32.const 8
            i32.add
            local.get 3
            i32.const 68
            i32.add
            call 79
            local.get 0
            i32.const 4
            i32.add
            local.get 3
            i64.load offset=8
            i64.store align=4
            local.get 0
            i32.const 12
            i32.add
            local.set 0
            local.get 2
            i32.const 16
            i32.add
            local.set 2
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            br 0 (;@2;)
          end
          unreachable
        end
        unreachable
      )
      (func (;14;) (type 0) (param i32 i32) (result i32)
        (local i32 i32)
        global.get 0
        i32.const 32
        i32.sub
        local.tee 2
        global.set 0
        local.get 0
        i32.load
        local.set 0
        local.get 1
        i32.load offset=20
        i32.const 1050978
        i32.const 9
        local.get 1
        i32.const 24
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 1)
        local.set 3
        local.get 2
        i32.const 0
        i32.store8 offset=9
        local.get 2
        local.get 3
        i32.store8 offset=8
        local.get 2
        local.get 1
        i32.store offset=4
        local.get 2
        local.get 0
        i32.load8_u
        local.tee 0
        i32.store offset=12
        local.get 2
        i32.const 4
        i32.add
        i32.const 1050987
        i32.const 4
        local.get 2
        i32.const 12
        i32.add
        i32.const 3
        call 37
        local.set 1
        local.get 2
        block (result i32) ;; label = @1
          block (result i32) ;; label = @2
            block ;; label = @3
              block ;; label = @4
                block ;; label = @5
                  block ;; label = @6
                    block ;; label = @7
                      block ;; label = @8
                        block ;; label = @9
                          block ;; label = @10
                            block ;; label = @11
                              block ;; label = @12
                                block ;; label = @13
                                  block ;; label = @14
                                    block ;; label = @15
                                      block ;; label = @16
                                        block ;; label = @17
                                          block ;; label = @18
                                            block ;; label = @19
                                              block ;; label = @20
                                                block ;; label = @21
                                                  block ;; label = @22
                                                    block ;; label = @23
                                                      block ;; label = @24
                                                        block ;; label = @25
                                                          block ;; label = @26
                                                            block ;; label = @27
                                                              block ;; label = @28
                                                                block ;; label = @29
                                                                  block ;; label = @30
                                                                    block ;; label = @31
                                                                      block ;; label = @32
                                                                        block ;; label = @33
                                                                          block ;; label = @34
                                                                            block ;; label = @35
                                                                              block ;; label = @36
                                                                                block ;; label = @37
                                                                                  block ;; label = @38
                                                                                    block ;; label = @39
                                                                                      local.get 0
                                                                                      i32.const 1
                                                                                      i32.sub
                                                                                      br_table 1 (;@38;) 2 (;@37;) 3 (;@36;) 4 (;@35;) 5 (;@34;) 6 (;@33;) 7 (;@32;) 8 (;@31;) 9 (;@30;) 10 (;@29;) 11 (;@28;) 12 (;@27;) 13 (;@26;) 14 (;@25;) 15 (;@24;) 16 (;@23;) 17 (;@22;) 18 (;@21;) 19 (;@20;) 20 (;@19;) 21 (;@18;) 22 (;@17;) 23 (;@16;) 24 (;@15;) 25 (;@14;) 26 (;@13;) 27 (;@12;) 28 (;@11;) 29 (;@10;) 30 (;@9;) 31 (;@8;) 32 (;@7;) 33 (;@6;) 34 (;@5;) 35 (;@4;) 36 (;@3;) 0 (;@39;)
                                                                                    end
                                                                                    local.get 2
                                                                                    i32.const 6
                                                                                    i32.store offset=20
                                                                                    local.get 2
                                                                                    i32.const 1048612
                                                                                    i32.store offset=16
                                                                                    local.get 1
                                                                                    i32.const 1050991
                                                                                    i32.const 4
                                                                                    local.get 2
                                                                                    i32.const 16
                                                                                    i32.add
                                                                                    i32.const 4
                                                                                    call 37
                                                                                    drop
                                                                                    i32.const 1048994
                                                                                    local.set 0
                                                                                    i32.const 48
                                                                                    br 37 (;@1;)
                                                                                  end
                                                                                  local.get 2
                                                                                  i32.const 11
                                                                                  i32.store offset=20
                                                                                  local.get 2
                                                                                  i32.const 1048618
                                                                                  i32.store offset=16
                                                                                  local.get 1
                                                                                  i32.const 1050991
                                                                                  i32.const 4
                                                                                  local.get 2
                                                                                  i32.const 16
                                                                                  i32.add
                                                                                  i32.const 4
                                                                                  call 37
                                                                                  drop
                                                                                  i32.const 1049042
                                                                                  local.set 0
                                                                                  i32.const 95
                                                                                  br 36 (;@1;)
                                                                                end
                                                                                local.get 2
                                                                                i32.const 7
                                                                                i32.store offset=20
                                                                                local.get 2
                                                                                i32.const 1048629
                                                                                i32.store offset=16
                                                                                local.get 1
                                                                                i32.const 1050991
                                                                                i32.const 4
                                                                                local.get 2
                                                                                i32.const 16
                                                                                i32.add
                                                                                i32.const 4
                                                                                call 37
                                                                                drop
                                                                                i32.const 1049137
                                                                                local.set 0
                                                                                i32.const 63
                                                                                br 35 (;@1;)
                                                                              end
                                                                              local.get 2
                                                                              i32.const 14
                                                                              i32.store offset=20
                                                                              local.get 2
                                                                              i32.const 1048636
                                                                              i32.store offset=16
                                                                              local.get 1
                                                                              i32.const 1050991
                                                                              i32.const 4
                                                                              local.get 2
                                                                              i32.const 16
                                                                              i32.add
                                                                              i32.const 4
                                                                              call 37
                                                                              drop
                                                                              i32.const 1049200
                                                                              local.set 0
                                                                              i32.const 44
                                                                              br 34 (;@1;)
                                                                            end
                                                                            local.get 2
                                                                            i32.const 4
                                                                            i32.store offset=20
                                                                            local.get 2
                                                                            i32.const 1048650
                                                                            i32.store offset=16
                                                                            local.get 1
                                                                            i32.const 1050991
                                                                            i32.const 4
                                                                            local.get 2
                                                                            i32.const 16
                                                                            i32.add
                                                                            i32.const 4
                                                                            call 37
                                                                            drop
                                                                            i32.const 1049244
                                                                            local.set 0
                                                                            i32.const 53
                                                                            br 33 (;@1;)
                                                                          end
                                                                          local.get 2
                                                                          i32.const 8
                                                                          i32.store offset=20
                                                                          local.get 2
                                                                          i32.const 1048654
                                                                          i32.store offset=16
                                                                          local.get 1
                                                                          i32.const 1050991
                                                                          i32.const 4
                                                                          local.get 2
                                                                          i32.const 16
                                                                          i32.add
                                                                          i32.const 4
                                                                          call 37
                                                                          drop
                                                                          i32.const 1049297
                                                                          local.set 0
                                                                          i32.const 61
                                                                          br 32 (;@1;)
                                                                        end
                                                                        local.get 2
                                                                        i32.const 5
                                                                        i32.store offset=20
                                                                        local.get 2
                                                                        i32.const 1048662
                                                                        i32.store offset=16
                                                                        local.get 1
                                                                        i32.const 1050991
                                                                        i32.const 4
                                                                        local.get 2
                                                                        i32.const 16
                                                                        i32.add
                                                                        i32.const 4
                                                                        call 37
                                                                        drop
                                                                        i32.const 1049358
                                                                        local.set 0
                                                                        i32.const 53
                                                                        br 31 (;@1;)
                                                                      end
                                                                      local.get 2
                                                                      i32.const 5
                                                                      i32.store offset=20
                                                                      local.get 2
                                                                      i32.const 1048667
                                                                      i32.store offset=16
                                                                      local.get 1
                                                                      i32.const 1050991
                                                                      i32.const 4
                                                                      local.get 2
                                                                      i32.const 16
                                                                      i32.add
                                                                      i32.const 4
                                                                      call 37
                                                                      drop
                                                                      i32.const 1049411
                                                                      local.set 0
                                                                      i32.const 42
                                                                      br 30 (;@1;)
                                                                    end
                                                                    local.get 2
                                                                    i32.const 14
                                                                    i32.store offset=20
                                                                    local.get 2
                                                                    i32.const 1048672
                                                                    i32.store offset=16
                                                                    local.get 1
                                                                    i32.const 1050991
                                                                    i32.const 4
                                                                    local.get 2
                                                                    i32.const 16
                                                                    i32.add
                                                                    i32.const 4
                                                                    call 37
                                                                    drop
                                                                    i32.const 1049453
                                                                    local.set 0
                                                                    i32.const 44
                                                                    br 29 (;@1;)
                                                                  end
                                                                  local.get 2
                                                                  i32.const 21
                                                                  i32.store offset=20
                                                                  local.get 2
                                                                  i32.const 1048686
                                                                  i32.store offset=16
                                                                  local.get 1
                                                                  i32.const 1050991
                                                                  i32.const 4
                                                                  local.get 2
                                                                  i32.const 16
                                                                  i32.add
                                                                  i32.const 4
                                                                  call 37
                                                                  drop
                                                                  i32.const 1049497
                                                                  local.set 0
                                                                  i32.const 52
                                                                  br 28 (;@1;)
                                                                end
                                                                local.get 2
                                                                i32.const 11
                                                                i32.store offset=20
                                                                local.get 2
                                                                i32.const 1048707
                                                                i32.store offset=16
                                                                local.get 1
                                                                i32.const 1050991
                                                                i32.const 4
                                                                local.get 2
                                                                i32.const 16
                                                                i32.add
                                                                i32.const 4
                                                                call 37
                                                                drop
                                                                i32.const 1049549
                                                                local.set 0
                                                                i32.const 57
                                                                br 27 (;@1;)
                                                              end
                                                              local.get 2
                                                              i32.const 11
                                                              i32.store offset=20
                                                              local.get 2
                                                              i32.const 1048718
                                                              i32.store offset=16
                                                              local.get 1
                                                              i32.const 1050991
                                                              i32.const 4
                                                              local.get 2
                                                              i32.const 16
                                                              i32.add
                                                              i32.const 4
                                                              call 37
                                                              drop
                                                              i32.const 1049606
                                                              local.set 0
                                                              i32.const 50
                                                              br 26 (;@1;)
                                                            end
                                                            local.get 2
                                                            i32.const 7
                                                            i32.store offset=20
                                                            local.get 2
                                                            i32.const 1048729
                                                            i32.store offset=16
                                                            local.get 1
                                                            i32.const 1050991
                                                            i32.const 4
                                                            local.get 2
                                                            i32.const 16
                                                            i32.add
                                                            i32.const 4
                                                            call 37
                                                            drop
                                                            i32.const 1049656
                                                            br 24 (;@2;)
                                                          end
                                                          local.get 2
                                                          i32.const 2
                                                          i32.store offset=20
                                                          local.get 2
                                                          i32.const 1048736
                                                          i32.store offset=16
                                                          local.get 1
                                                          i32.const 1050991
                                                          i32.const 4
                                                          local.get 2
                                                          i32.const 16
                                                          i32.add
                                                          i32.const 4
                                                          call 37
                                                          drop
                                                          i32.const 1049703
                                                          local.set 0
                                                          i32.const 37
                                                          br 24 (;@1;)
                                                        end
                                                        local.get 2
                                                        i32.const 12
                                                        i32.store offset=20
                                                        local.get 2
                                                        i32.const 1048738
                                                        i32.store offset=16
                                                        local.get 1
                                                        i32.const 1050991
                                                        i32.const 4
                                                        local.get 2
                                                        i32.const 16
                                                        i32.add
                                                        i32.const 4
                                                        call 37
                                                        drop
                                                        i32.const 1049740
                                                        local.set 0
                                                        i32.const 45
                                                        br 23 (;@1;)
                                                      end
                                                      local.get 2
                                                      i32.const 4
                                                      i32.store offset=20
                                                      local.get 2
                                                      i32.const 1048750
                                                      i32.store offset=16
                                                      local.get 1
                                                      i32.const 1050991
                                                      i32.const 4
                                                      local.get 2
                                                      i32.const 16
                                                      i32.add
                                                      i32.const 4
                                                      call 37
                                                      drop
                                                      i32.const 1049785
                                                      local.set 0
                                                      i32.const 63
                                                      br 22 (;@1;)
                                                    end
                                                    local.get 2
                                                    i32.const 14
                                                    i32.store offset=20
                                                    local.get 2
                                                    i32.const 1048754
                                                    i32.store offset=16
                                                    local.get 1
                                                    i32.const 1050991
                                                    i32.const 4
                                                    local.get 2
                                                    i32.const 16
                                                    i32.add
                                                    i32.const 4
                                                    call 37
                                                    drop
                                                    i32.const 1049848
                                                    local.set 0
                                                    i32.const 45
                                                    br 21 (;@1;)
                                                  end
                                                  local.get 2
                                                  i32.const 12
                                                  i32.store offset=20
                                                  local.get 2
                                                  i32.const 1048768
                                                  i32.store offset=16
                                                  local.get 1
                                                  i32.const 1050991
                                                  i32.const 4
                                                  local.get 2
                                                  i32.const 16
                                                  i32.add
                                                  i32.const 4
                                                  call 37
                                                  drop
                                                  i32.const 1049893
                                                  local.set 0
                                                  i32.const 50
                                                  br 20 (;@1;)
                                                end
                                                local.get 2
                                                i32.const 13
                                                i32.store offset=20
                                                local.get 2
                                                i32.const 1048780
                                                i32.store offset=16
                                                local.get 1
                                                i32.const 1050991
                                                i32.const 4
                                                local.get 2
                                                i32.const 16
                                                i32.add
                                                i32.const 4
                                                call 37
                                                drop
                                                i32.const 1049943
                                                local.set 0
                                                i32.const 54
                                                br 19 (;@1;)
                                              end
                                              local.get 2
                                              i32.const 9
                                              i32.store offset=20
                                              local.get 2
                                              i32.const 1048793
                                              i32.store offset=16
                                              local.get 1
                                              i32.const 1050991
                                              i32.const 4
                                              local.get 2
                                              i32.const 16
                                              i32.add
                                              i32.const 4
                                              call 37
                                              drop
                                              i32.const 1049997
                                              local.set 0
                                              i32.const 45
                                              br 18 (;@1;)
                                            end
                                            local.get 2
                                            i32.const 8
                                            i32.store offset=20
                                            local.get 2
                                            i32.const 1048802
                                            i32.store offset=16
                                            local.get 1
                                            i32.const 1050991
                                            i32.const 4
                                            local.get 2
                                            i32.const 16
                                            i32.add
                                            i32.const 4
                                            call 37
                                            drop
                                            i32.const 1050042
                                            local.set 0
                                            i32.const 56
                                            br 17 (;@1;)
                                          end
                                          local.get 2
                                          i32.const 7
                                          i32.store offset=20
                                          local.get 2
                                          i32.const 1048810
                                          i32.store offset=16
                                          local.get 1
                                          i32.const 1050991
                                          i32.const 4
                                          local.get 2
                                          i32.const 16
                                          i32.add
                                          i32.const 4
                                          call 37
                                          drop
                                          i32.const 1050098
                                          local.set 0
                                          i32.const 49
                                          br 16 (;@1;)
                                        end
                                        local.get 2
                                        i32.const 19
                                        i32.store offset=20
                                        local.get 2
                                        i32.const 1048817
                                        i32.store offset=16
                                        local.get 1
                                        i32.const 1050991
                                        i32.const 4
                                        local.get 2
                                        i32.const 16
                                        i32.add
                                        i32.const 4
                                        call 37
                                        drop
                                        i32.const 1050147
                                        br 14 (;@2;)
                                      end
                                      local.get 2
                                      i32.const 18
                                      i32.store offset=20
                                      local.get 2
                                      i32.const 1048836
                                      i32.store offset=16
                                      local.get 1
                                      i32.const 1050991
                                      i32.const 4
                                      local.get 2
                                      i32.const 16
                                      i32.add
                                      i32.const 4
                                      call 37
                                      drop
                                      i32.const 1050194
                                      local.set 0
                                      i32.const 54
                                      br 14 (;@1;)
                                    end
                                    local.get 2
                                    i32.const 13
                                    i32.store offset=20
                                    local.get 2
                                    i32.const 1048854
                                    i32.store offset=16
                                    local.get 1
                                    i32.const 1050991
                                    i32.const 4
                                    local.get 2
                                    i32.const 16
                                    i32.add
                                    i32.const 4
                                    call 37
                                    drop
                                    i32.const 1050248
                                    local.set 0
                                    i32.const 81
                                    br 13 (;@1;)
                                  end
                                  local.get 2
                                  i32.const 9
                                  i32.store offset=20
                                  local.get 2
                                  i32.const 1048867
                                  i32.store offset=16
                                  local.get 1
                                  i32.const 1050991
                                  i32.const 4
                                  local.get 2
                                  i32.const 16
                                  i32.add
                                  i32.const 4
                                  call 37
                                  drop
                                  i32.const 1050329
                                  local.set 0
                                  i32.const 53
                                  br 12 (;@1;)
                                end
                                local.get 2
                                i32.const 15
                                i32.store offset=20
                                local.get 2
                                i32.const 1048876
                                i32.store offset=16
                                local.get 1
                                i32.const 1050991
                                i32.const 4
                                local.get 2
                                i32.const 16
                                i32.add
                                i32.const 4
                                call 37
                                drop
                                i32.const 1050382
                                local.set 0
                                i32.const 61
                                br 11 (;@1;)
                              end
                              local.get 2
                              i32.const 11
                              i32.store offset=20
                              local.get 2
                              i32.const 1048891
                              i32.store offset=16
                              local.get 1
                              i32.const 1050991
                              i32.const 4
                              local.get 2
                              i32.const 16
                              i32.add
                              i32.const 4
                              call 37
                              drop
                              i32.const 1050443
                              local.set 0
                              i32.const 58
                              br 10 (;@1;)
                            end
                            local.get 2
                            i32.const 6
                            i32.store offset=20
                            local.get 2
                            i32.const 1048902
                            i32.store offset=16
                            local.get 1
                            i32.const 1050991
                            i32.const 4
                            local.get 2
                            i32.const 16
                            i32.add
                            i32.const 4
                            call 37
                            drop
                            i32.const 1050501
                            local.set 0
                            i32.const 66
                            br 9 (;@1;)
                          end
                          local.get 2
                          i32.const 14
                          i32.store offset=20
                          local.get 2
                          i32.const 1048908
                          i32.store offset=16
                          local.get 1
                          i32.const 1050991
                          i32.const 4
                          local.get 2
                          i32.const 16
                          i32.add
                          i32.const 4
                          call 37
                          drop
                          i32.const 1050567
                          local.set 0
                          i32.const 55
                          br 8 (;@1;)
                        end
                        local.get 2
                        i32.const 8
                        i32.store offset=20
                        local.get 2
                        i32.const 1048922
                        i32.store offset=16
                        local.get 1
                        i32.const 1050991
                        i32.const 4
                        local.get 2
                        i32.const 16
                        i32.add
                        i32.const 4
                        call 37
                        drop
                        i32.const 1050622
                        local.set 0
                        i32.const 75
                        br 7 (;@1;)
                      end
                      local.get 2
                      i32.const 13
                      i32.store offset=20
                      local.get 2
                      i32.const 1048930
                      i32.store offset=16
                      local.get 1
                      i32.const 1050991
                      i32.const 4
                      local.get 2
                      i32.const 16
                      i32.add
                      i32.const 4
                      call 37
                      drop
                      i32.const 1050697
                      local.set 0
                      i32.const 53
                      br 6 (;@1;)
                    end
                    local.get 2
                    i32.const 4
                    i32.store offset=20
                    local.get 2
                    i32.const 1048943
                    i32.store offset=16
                    local.get 1
                    i32.const 1050991
                    i32.const 4
                    local.get 2
                    i32.const 16
                    i32.add
                    i32.const 4
                    call 37
                    drop
                    i32.const 1050750
                    local.set 0
                    i32.const 41
                    br 5 (;@1;)
                  end
                  local.get 2
                  i32.const 9
                  i32.store offset=20
                  local.get 2
                  i32.const 1048947
                  i32.store offset=16
                  local.get 1
                  i32.const 1050991
                  i32.const 4
                  local.get 2
                  i32.const 16
                  i32.add
                  i32.const 4
                  call 37
                  drop
                  i32.const 1050791
                  local.set 0
                  i32.const 51
                  br 4 (;@1;)
                end
                local.get 2
                i32.const 12
                i32.store offset=20
                local.get 2
                i32.const 1048956
                i32.store offset=16
                local.get 1
                i32.const 1050991
                i32.const 4
                local.get 2
                i32.const 16
                i32.add
                i32.const 4
                call 37
                drop
                i32.const 1050842
                local.set 0
                i32.const 43
                br 3 (;@1;)
              end
              local.get 2
              i32.const 14
              i32.store offset=20
              local.get 2
              i32.const 1048968
              i32.store offset=16
              local.get 1
              i32.const 1050991
              i32.const 4
              local.get 2
              i32.const 16
              i32.add
              i32.const 4
              call 37
              drop
              i32.const 1050885
              local.set 0
              i32.const 46
              br 2 (;@1;)
            end
            local.get 2
            i32.const 12
            i32.store offset=20
            local.get 2
            i32.const 1048982
            i32.store offset=16
            local.get 1
            i32.const 1050991
            i32.const 4
            local.get 2
            i32.const 16
            i32.add
            i32.const 4
            call 37
            drop
            i32.const 1050931
          end
          local.set 0
          i32.const 47
        end
        i32.store offset=28
        local.get 2
        local.get 0
        i32.store offset=24
        local.get 1
        i32.const 1050995
        i32.const 7
        local.get 2
        i32.const 24
        i32.add
        i32.const 4
        call 37
        call 81
        local.get 2
        i32.const 32
        i32.add
        global.set 0
      )
      (func (;15;) (type 7) (param i32 i64) (result i32)
        global.get 0
        i32.const 192
        i32.sub
        global.set 0
        call 176
        local.get 0
        i32.load
        if ;; label = @1
          local.get 0
          i32.load offset=4
          drop
          unreachable
        end
        unreachable
      )
      (func (;16;) (type 1) (param i32 i32 i32) (result i32)
        (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
        global.get 0
        i32.const 176
        i32.sub
        local.tee 4
        global.set 0
        call 176
        local.get 4
        i32.const 20
        i32.add
        local.get 2
        call 109
        local.get 2
        i32.const 0
        local.get 2
        i32.const 0
        i32.gt_s
        select
        local.set 8
        block ;; label = @1
          loop ;; label = @2
            local.get 8
            if ;; label = @3
              local.get 1
              local.get 6
              i32.add
              local.tee 5
              i32.const 12
              i32.add
              i32.load16_u
              local.set 3
              local.get 5
              i32.const 4
              i32.add
              block (result i32) ;; label = @4
                local.get 5
                i32.const 8
                i32.add
                i32.load8_u
                if ;; label = @5
                  local.get 3
                  i32.const 65280
                  i32.and
                  i32.const 8
                  i32.shr_u
                  local.set 11
                  local.get 5
                  i32.const 36
                  i32.add
                  i32.load
                  local.set 13
                  local.get 5
                  i32.const 34
                  i32.add
                  i32.load16_u
                  local.set 14
                  local.get 5
                  i32.const 32
                  i32.add
                  i32.load16_u
                  local.set 15
                  local.get 5
                  i32.const 30
                  i32.add
                  i32.load16_u
                  local.set 16
                  local.get 5
                  i32.const 28
                  i32.add
                  i32.load16_u
                  local.set 17
                  local.get 5
                  i32.const 26
                  i32.add
                  i32.load16_u
                  local.set 18
                  local.get 5
                  i32.const 24
                  i32.add
                  i32.load16_u
                  local.set 19
                  local.get 5
                  i32.const 22
                  i32.add
                  i32.load16_u
                  local.set 20
                  local.get 5
                  i32.const 20
                  i32.add
                  i32.load16_u
                  local.set 21
                  local.get 5
                  i32.const 16
                  i32.add
                  i32.load
                  local.set 22
                  i32.const 1
                  local.set 12
                  local.get 3
                  br 1 (;@4;)
                end
                local.get 5
                i32.const 17
                i32.add
                i32.load8_u
                local.set 23
                local.get 5
                i32.const 16
                i32.add
                i32.load8_u
                local.set 9
                local.get 5
                i32.const 15
                i32.add
                i32.load8_u
                local.set 11
                i32.const 0
                local.set 12
                local.get 3
                local.set 7
                local.get 5
                i32.const 14
                i32.add
                i32.load8_u
              end
              local.set 24
              local.get 5
              i32.load
              local.set 25
              i32.load
              local.set 10
              local.get 4
              i32.load offset=28
              local.tee 5
              local.get 4
              i32.load offset=24
              i32.eq
              if ;; label = @4
                global.get 0
                i32.const 16
                i32.sub
                local.tee 3
                global.set 0
                local.get 3
                i32.const 8
                i32.add
                local.get 4
                i32.const 20
                i32.add
                local.get 5
                i32.const 1
                call 56
                local.get 3
                i32.load offset=8
                local.get 3
                i32.load offset=12
                call 184
                local.get 3
                i32.const 16
                i32.add
                global.set 0
                local.get 4
                i32.load offset=28
                local.set 5
              end
              local.get 4
              i32.load offset=20
              local.get 5
              i32.const 44
              i32.mul
              i32.add
              local.tee 3
              local.get 10
              i32.store offset=40
              local.get 3
              local.get 10
              i32.store offset=36
              local.get 3
              local.get 25
              i32.store offset=32
              local.get 3
              local.get 13
              i32.store offset=28
              local.get 3
              local.get 14
              i32.store16 offset=26
              local.get 3
              local.get 15
              i32.store16 offset=24
              local.get 3
              local.get 16
              i32.store16 offset=22
              local.get 3
              local.get 17
              i32.store16 offset=20
              local.get 3
              local.get 18
              i32.store16 offset=18
              local.get 3
              local.get 19
              i32.store16 offset=16
              local.get 3
              local.get 20
              i32.store16 offset=14
              local.get 3
              local.get 21
              i32.store16 offset=12
              local.get 3
              local.get 22
              i32.store offset=8
              local.get 3
              local.get 23
              i32.store8 offset=7
              local.get 3
              local.get 9
              i32.store8 offset=6
              local.get 3
              local.get 11
              i32.store8 offset=5
              local.get 3
              local.get 24
              i32.store8 offset=4
              local.get 3
              local.get 7
              i32.store16 offset=2
              local.get 3
              local.get 12
              i32.store16
              local.get 4
              local.get 5
              i32.const 1
              i32.add
              i32.store offset=28
              local.get 8
              i32.const 1
              i32.sub
              local.set 8
              local.get 6
              i32.const 40
              i32.add
              local.set 6
              br 1 (;@2;)
            else
              block ;; label = @4
                local.get 1
                local.get 2
                i32.const 40
                i32.mul
                call 181
                local.get 0
                i32.load
                i32.eqz
                br_if 3 (;@1;)
                local.get 4
                i32.const 40
                i32.add
                local.tee 1
                local.get 4
                i32.const 28
                i32.add
                i32.load
                local.tee 7
                i32.store
                local.get 1
                i32.const 0
                i32.store
                local.get 4
                local.get 4
                i64.load offset=20 align=4
                local.tee 26
                i64.store offset=32
                local.get 4
                i32.const 44
                i32.add
                local.get 7
                call 109
                local.get 7
                i32.const 44
                i32.mul
                local.set 8
                local.get 26
                i32.wrap_i64
                local.set 5
                local.get 7
                local.get 4
                i32.load offset=48
                local.get 4
                i32.load offset=52
                local.tee 6
                i32.sub
                i32.gt_u
                if ;; label = @5
                  local.get 4
                  i32.const 8
                  i32.add
                  local.get 4
                  i32.const 44
                  i32.add
                  local.get 6
                  local.get 7
                  call 56
                  local.get 4
                  i32.load offset=8
                  local.get 4
                  i32.load offset=12
                  call 184
                  local.get 4
                  i32.load offset=52
                  local.set 6
                end
                local.get 5
                local.get 8
                i32.add
                local.set 2
                local.get 4
                i32.load offset=44
                local.get 4
                i32.const 0
                i32.store offset=72
                local.get 5
                i32.const 44
                i32.add
                local.set 1
                local.get 6
                i32.const 44
                i32.mul
                i32.add
                local.set 3
                local.get 4
                local.get 7
                i32.store offset=68
                local.get 4
                local.get 4
                i32.const 32
                i32.add
                i32.store offset=64
                local.get 4
                i32.const 158
                i32.add
                local.set 7
                local.get 4
                i32.const 118
                i32.add
                local.set 9
                local.get 4
                i32.const 112
                i32.add
                local.set 11
                loop ;; label = @5
                  local.get 8
                  i32.eqz
                  if ;; label = @6
                    local.get 2
                    local.set 1
                    br 2 (;@4;)
                  end
                  local.get 5
                  i32.load16_u
                  local.tee 12
                  i32.const 2
                  i32.eq
                  br_if 1 (;@4;)
                  local.get 4
                  i32.const 128
                  i32.add
                  local.get 5
                  i32.const 2
                  i32.add
                  i32.const 42
                  call 22
                  drop
                  local.get 4
                  i32.const 88
                  i32.add
                  local.tee 10
                  local.get 7
                  i32.const 8
                  i32.add
                  i32.load align=2
                  i32.store
                  local.get 9
                  local.get 5
                  i32.const 24
                  i32.add
                  i64.load align=2
                  i64.store align=2
                  local.get 11
                  local.get 5
                  i32.const 18
                  i32.add
                  i64.load align=2
                  i64.store
                  local.get 4
                  i32.const 104
                  i32.add
                  local.get 5
                  i32.const 10
                  i32.add
                  i64.load align=2
                  local.tee 26
                  i64.store
                  local.get 4
                  local.get 7
                  i64.load align=2
                  i64.store offset=80
                  local.get 4
                  local.get 5
                  i64.load offset=2 align=2
                  local.tee 27
                  i64.store offset=96
                  local.get 3
                  local.get 12
                  i32.store16
                  local.get 3
                  i32.const 2
                  i32.add
                  local.get 27
                  i64.store align=2
                  local.get 3
                  i32.const 10
                  i32.add
                  local.get 26
                  i64.store align=2
                  local.get 3
                  i32.const 18
                  i32.add
                  local.get 11
                  i64.load
                  i64.store align=2
                  local.get 3
                  i32.const 24
                  i32.add
                  local.get 9
                  i64.load align=2
                  i64.store align=2
                  local.get 3
                  i32.const 32
                  i32.add
                  local.get 4
                  i64.load offset=80
                  i64.store align=4
                  local.get 3
                  i32.const 40
                  i32.add
                  local.get 10
                  i32.load
                  i32.store
                  local.get 3
                  i32.const 44
                  i32.add
                  local.set 3
                  local.get 8
                  i32.const 44
                  i32.sub
                  local.set 8
                  local.get 1
                  i32.const 44
                  i32.add
                  local.set 1
                  local.get 6
                  i32.const 1
                  i32.add
                  local.set 6
                  local.get 5
                  i32.const 44
                  i32.add
                  local.set 5
                  br 0 (;@5;)
                end
                unreachable
              end
            end
          end
          local.get 4
          i32.const 1051032
          i32.store offset=60
          local.get 4
          i32.const 1051032
          i32.store offset=56
          local.get 4
          local.get 6
          i32.store offset=52
          local.get 1
          local.get 2
          i32.ne
          if ;; label = @2
            local.get 4
            i32.load offset=32
            local.tee 3
            local.get 1
            local.get 3
            i32.sub
            i32.const 44
            i32.div_u
            i32.const 44
            i32.mul
            i32.add
            local.get 2
            local.get 1
            i32.sub
            i32.const 44
            i32.div_u
            call 120
          end
          local.get 4
          i32.const 56
          i32.add
          local.tee 1
          i32.load offset=16
          local.tee 2
          if ;; label = @2
            local.get 1
            i32.load offset=12
            local.tee 5
            local.get 1
            i32.load offset=8
            local.tee 3
            i32.load offset=8
            local.tee 7
            i32.ne
            if ;; label = @3
              local.get 3
              i32.load
              local.tee 6
              local.get 7
              i32.const 44
              i32.mul
              i32.add
              local.get 6
              local.get 5
              i32.const 44
              i32.mul
              i32.add
              local.get 2
              i32.const 44
              i32.mul
              call 21
              local.get 1
              i32.load offset=16
              local.set 2
            end
            local.get 3
            local.get 2
            local.get 7
            i32.add
            i32.store offset=8
          end
          local.get 4
          i32.const 104
          i32.add
          local.get 4
          i32.const 52
          i32.add
          i32.load
          local.tee 1
          i32.store
          local.get 4
          local.get 4
          i64.load offset=44 align=4
          local.tee 26
          i64.store offset=96
          i32.const 0
          local.set 9
          local.get 1
          i32.const 40
          i32.mul
          local.tee 2
          if ;; label = @2
            i32.const 4
            local.get 2
            call 183
            local.tee 9
            i32.eqz
            br_if 1 (;@1;)
          end
          local.get 9
          i32.const 36
          i32.add
          local.set 3
          local.get 1
          i32.const 44
          i32.mul
          local.set 7
          i32.const 0
          local.set 6
          local.get 26
          i32.wrap_i64
          local.tee 2
          local.set 8
          loop ;; label = @2
            local.get 6
            local.get 7
            i32.eq
            if ;; label = @3
              local.get 0
              i32.load offset=4
              drop
              unreachable
            else
              local.get 8
              i32.const 40
              i32.add
              i32.load
              local.set 1
              local.get 3
              i32.const 36
              i32.sub
              local.get 8
              i32.load offset=32
              i32.store
              local.get 3
              i32.const 32
              i32.sub
              local.get 1
              i32.store
              local.get 3
              i32.const 28
              i32.sub
              local.set 1
              block ;; label = @4
                local.get 8
                i32.load16_u
                if ;; label = @5
                  local.get 1
                  i32.const 1
                  i32.store8
                  local.get 3
                  i32.const 24
                  i32.sub
                  local.get 2
                  local.get 6
                  i32.add
                  local.tee 1
                  i32.const 4
                  i32.add
                  i32.load16_u
                  i32.store16
                  local.get 3
                  i32.const 20
                  i32.sub
                  local.get 1
                  i32.const 8
                  i32.add
                  i32.load
                  i32.store
                  local.get 3
                  i32.const 16
                  i32.sub
                  local.get 1
                  i32.const 12
                  i32.add
                  i32.load16_u
                  i32.store16
                  local.get 3
                  i32.const 14
                  i32.sub
                  local.get 1
                  i32.const 14
                  i32.add
                  i32.load16_u
                  i32.store16
                  local.get 3
                  i32.const 12
                  i32.sub
                  local.get 1
                  i32.const 16
                  i32.add
                  i32.load16_u
                  i32.store16
                  local.get 3
                  i32.const 10
                  i32.sub
                  local.get 1
                  i32.const 18
                  i32.add
                  i32.load16_u
                  i32.store16
                  local.get 3
                  i32.const 8
                  i32.sub
                  local.get 1
                  i32.const 20
                  i32.add
                  i32.load16_u
                  i32.store16
                  local.get 3
                  i32.const 6
                  i32.sub
                  local.get 1
                  i32.const 22
                  i32.add
                  i32.load16_u
                  i32.store16
                  local.get 3
                  i32.const 4
                  i32.sub
                  local.get 1
                  i32.const 24
                  i32.add
                  i32.load16_u
                  i32.store16
                  local.get 3
                  i32.const 2
                  i32.sub
                  local.get 1
                  i32.const 26
                  i32.add
                  i32.load16_u
                  i32.store16
                  local.get 3
                  local.get 1
                  i32.const 28
                  i32.add
                  i32.load
                  i32.store
                  br 1 (;@4;)
                end
                local.get 1
                i32.const 0
                i32.store8
                local.get 3
                i32.const 24
                i32.sub
                local.get 2
                local.get 6
                i32.add
                local.tee 1
                i32.const 2
                i32.add
                i32.load16_u
                i32.store16
                local.get 3
                i32.const 22
                i32.sub
                local.get 1
                i32.const 4
                i32.add
                i32.load8_u
                i32.store8
                local.get 3
                i32.const 21
                i32.sub
                local.get 1
                i32.const 5
                i32.add
                i32.load8_u
                i32.store8
                local.get 3
                i32.const 20
                i32.sub
                local.get 1
                i32.const 6
                i32.add
                i32.load8_u
                i32.store8
                local.get 3
                i32.const 19
                i32.sub
                local.get 1
                i32.const 7
                i32.add
                i32.load8_u
                i32.store8
              end
              local.get 8
              i32.const 44
              i32.add
              local.set 8
              local.get 3
              i32.const 40
              i32.add
              local.set 3
              local.get 6
              i32.const 44
              i32.add
              local.set 6
              br 1 (;@2;)
            end
            unreachable
          end
          unreachable
        end
        unreachable
      )
      (func (;17;) (type 3) (param i32)
        (local i32 i32 i32 i32 i32 i32 i32)
        block ;; label = @1
          local.get 0
          i32.eqz
          br_if 0 (;@1;)
          local.get 0
          i32.const 8
          i32.sub
          local.tee 2
          local.get 0
          i32.const 4
          i32.sub
          i32.load
          local.tee 1
          i32.const -8
          i32.and
          local.tee 0
          i32.add
          local.set 5
          block ;; label = @2
            local.get 1
            i32.const 1
            i32.and
            br_if 0 (;@2;)
            local.get 1
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@1;)
            local.get 2
            local.get 2
            i32.load
            local.tee 1
            i32.sub
            local.tee 2
            i32.const 1054260
            i32.load
            i32.lt_u
            br_if 1 (;@1;)
            local.get 0
            local.get 1
            i32.add
            local.set 0
            i32.const 1054264
            i32.load
            local.get 2
            i32.ne
            if ;; label = @3
              local.get 1
              i32.const 255
              i32.le_u
              if ;; label = @4
                local.get 1
                i32.const 3
                i32.shr_u
                local.set 1
                local.get 2
                i32.load offset=12
                local.tee 3
                local.get 2
                i32.load offset=8
                local.tee 4
                i32.eq
                if ;; label = @5
                  i32.const 1054244
                  i32.const 1054244
                  i32.load
                  i32.const -2
                  local.get 1
                  i32.rotl
                  i32.and
                  i32.store
                  br 3 (;@2;)
                end
                local.get 3
                local.get 4
                i32.store offset=8
                local.get 4
                local.get 3
                i32.store offset=12
                br 2 (;@2;)
              end
              local.get 2
              i32.load offset=24
              local.set 6
              block ;; label = @4
                local.get 2
                local.get 2
                i32.load offset=12
                local.tee 1
                i32.ne
                if ;; label = @5
                  local.get 1
                  local.get 2
                  i32.load offset=8
                  local.tee 3
                  i32.store offset=8
                  local.get 3
                  local.get 1
                  i32.store offset=12
                  br 1 (;@4;)
                end
                block ;; label = @5
                  local.get 2
                  i32.const 20
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 3
                  br_if 0 (;@5;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 3
                  br_if 0 (;@5;)
                  i32.const 0
                  local.set 1
                  br 1 (;@4;)
                end
                loop ;; label = @5
                  local.get 4
                  local.set 7
                  local.get 3
                  local.tee 1
                  i32.const 20
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 3
                  br_if 0 (;@5;)
                  local.get 1
                  i32.const 16
                  i32.add
                  local.set 4
                  local.get 1
                  i32.load offset=16
                  local.tee 3
                  br_if 0 (;@5;)
                end
                local.get 7
                i32.const 0
                i32.store
              end
              local.get 6
              i32.eqz
              br_if 1 (;@2;)
              block ;; label = @4
                local.get 2
                i32.load offset=28
                local.tee 4
                i32.const 2
                i32.shl
                i32.const 1054548
                i32.add
                local.tee 3
                i32.load
                local.get 2
                i32.eq
                if ;; label = @5
                  local.get 3
                  local.get 1
                  i32.store
                  local.get 1
                  br_if 1 (;@4;)
                  i32.const 1054248
                  i32.const 1054248
                  i32.load
                  i32.const -2
                  local.get 4
                  i32.rotl
                  i32.and
                  i32.store
                  br 3 (;@2;)
                end
                local.get 6
                i32.const 16
                i32.const 20
                local.get 6
                i32.load offset=16
                local.get 2
                i32.eq
                select
                i32.add
                local.get 1
                i32.store
                local.get 1
                i32.eqz
                br_if 2 (;@2;)
              end
              local.get 1
              local.get 6
              i32.store offset=24
              local.get 2
              i32.load offset=16
              local.tee 3
              if ;; label = @4
                local.get 1
                local.get 3
                i32.store offset=16
                local.get 3
                local.get 1
                i32.store offset=24
              end
              local.get 2
              i32.load offset=20
              local.tee 3
              i32.eqz
              br_if 1 (;@2;)
              local.get 1
              i32.const 20
              i32.add
              local.get 3
              i32.store
              local.get 3
              local.get 1
              i32.store offset=24
              br 1 (;@2;)
            end
            local.get 5
            i32.load offset=4
            local.tee 1
            i32.const 3
            i32.and
            i32.const 3
            i32.ne
            br_if 0 (;@2;)
            local.get 5
            local.get 1
            i32.const -2
            i32.and
            i32.store offset=4
            i32.const 1054252
            local.get 0
            i32.store
            local.get 0
            local.get 2
            i32.add
            local.get 0
            i32.store
            local.get 2
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            return
          end
          local.get 2
          local.get 5
          i32.ge_u
          br_if 0 (;@1;)
          local.get 5
          i32.load offset=4
          local.tee 1
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@1;)
          block ;; label = @2
            local.get 1
            i32.const 2
            i32.and
            i32.eqz
            if ;; label = @3
              i32.const 1054268
              i32.load
              local.get 5
              i32.eq
              if ;; label = @4
                i32.const 1054268
                local.get 2
                i32.store
                i32.const 1054256
                i32.const 1054256
                i32.load
                local.get 0
                i32.add
                local.tee 0
                i32.store
                local.get 2
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 2
                i32.const 1054264
                i32.load
                i32.ne
                br_if 3 (;@1;)
                i32.const 1054252
                i32.const 0
                i32.store
                i32.const 1054264
                i32.const 0
                i32.store
                return
              end
              i32.const 1054264
              i32.load
              local.get 5
              i32.eq
              if ;; label = @4
                i32.const 1054264
                local.get 2
                i32.store
                i32.const 1054252
                i32.const 1054252
                i32.load
                local.get 0
                i32.add
                local.tee 0
                i32.store
                local.get 2
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                local.get 2
                i32.add
                local.get 0
                i32.store
                return
              end
              local.get 1
              i32.const -8
              i32.and
              local.get 0
              i32.add
              local.set 0
              block ;; label = @4
                local.get 1
                i32.const 255
                i32.le_u
                if ;; label = @5
                  local.get 1
                  i32.const 3
                  i32.shr_u
                  local.set 1
                  local.get 5
                  i32.load offset=12
                  local.tee 3
                  local.get 5
                  i32.load offset=8
                  local.tee 4
                  i32.eq
                  if ;; label = @6
                    i32.const 1054244
                    i32.const 1054244
                    i32.load
                    i32.const -2
                    local.get 1
                    i32.rotl
                    i32.and
                    i32.store
                    br 2 (;@4;)
                  end
                  local.get 3
                  local.get 4
                  i32.store offset=8
                  local.get 4
                  local.get 3
                  i32.store offset=12
                  br 1 (;@4;)
                end
                local.get 5
                i32.load offset=24
                local.set 6
                block ;; label = @5
                  local.get 5
                  local.get 5
                  i32.load offset=12
                  local.tee 1
                  i32.ne
                  if ;; label = @6
                    i32.const 1054260
                    i32.load
                    drop
                    local.get 1
                    local.get 5
                    i32.load offset=8
                    local.tee 3
                    i32.store offset=8
                    local.get 3
                    local.get 1
                    i32.store offset=12
                    br 1 (;@5;)
                  end
                  block ;; label = @6
                    local.get 5
                    i32.const 20
                    i32.add
                    local.tee 4
                    i32.load
                    local.tee 3
                    br_if 0 (;@6;)
                    local.get 5
                    i32.const 16
                    i32.add
                    local.tee 4
                    i32.load
                    local.tee 3
                    br_if 0 (;@6;)
                    i32.const 0
                    local.set 1
                    br 1 (;@5;)
                  end
                  loop ;; label = @6
                    local.get 4
                    local.set 7
                    local.get 3
                    local.tee 1
                    i32.const 20
                    i32.add
                    local.tee 4
                    i32.load
                    local.tee 3
                    br_if 0 (;@6;)
                    local.get 1
                    i32.const 16
                    i32.add
                    local.set 4
                    local.get 1
                    i32.load offset=16
                    local.tee 3
                    br_if 0 (;@6;)
                  end
                  local.get 7
                  i32.const 0
                  i32.store
                end
                local.get 6
                i32.eqz
                br_if 0 (;@4;)
                block ;; label = @5
                  local.get 5
                  i32.load offset=28
                  local.tee 4
                  i32.const 2
                  i32.shl
                  i32.const 1054548
                  i32.add
                  local.tee 3
                  i32.load
                  local.get 5
                  i32.eq
                  if ;; label = @6
                    local.get 3
                    local.get 1
                    i32.store
                    local.get 1
                    br_if 1 (;@5;)
                    i32.const 1054248
                    i32.const 1054248
                    i32.load
                    i32.const -2
                    local.get 4
                    i32.rotl
                    i32.and
                    i32.store
                    br 2 (;@4;)
                  end
                  local.get 6
                  i32.const 16
                  i32.const 20
                  local.get 6
                  i32.load offset=16
                  local.get 5
                  i32.eq
                  select
                  i32.add
                  local.get 1
                  i32.store
                  local.get 1
                  i32.eqz
                  br_if 1 (;@4;)
                end
                local.get 1
                local.get 6
                i32.store offset=24
                local.get 5
                i32.load offset=16
                local.tee 3
                if ;; label = @5
                  local.get 1
                  local.get 3
                  i32.store offset=16
                  local.get 3
                  local.get 1
                  i32.store offset=24
                end
                local.get 5
                i32.load offset=20
                local.tee 3
                i32.eqz
                br_if 0 (;@4;)
                local.get 1
                i32.const 20
                i32.add
                local.get 3
                i32.store
                local.get 3
                local.get 1
                i32.store offset=24
              end
              local.get 0
              local.get 2
              i32.add
              local.get 0
              i32.store
              local.get 2
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 2
              i32.const 1054264
              i32.load
              i32.ne
              br_if 1 (;@2;)
              i32.const 1054252
              local.get 0
              i32.store
              return
            end
            local.get 5
            local.get 1
            i32.const -2
            i32.and
            i32.store offset=4
            local.get 0
            local.get 2
            i32.add
            local.get 0
            i32.store
            local.get 2
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
          end
          local.get 0
          i32.const 255
          i32.le_u
          if ;; label = @2
            local.get 0
            i32.const -8
            i32.and
            i32.const 1054284
            i32.add
            local.set 1
            block (result i32) ;; label = @3
              i32.const 1054244
              i32.load
              local.tee 3
              i32.const 1
              local.get 0
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 0
              i32.and
              i32.eqz
              if ;; label = @4
                i32.const 1054244
                local.get 0
                local.get 3
                i32.or
                i32.store
                local.get 1
                br 1 (;@3;)
              end
              local.get 1
              i32.load offset=8
            end
            local.tee 0
            local.get 2
            i32.store offset=12
            local.get 1
            local.get 2
            i32.store offset=8
            local.get 2
            local.get 1
            i32.store offset=12
            local.get 2
            local.get 0
            i32.store offset=8
            return
          end
          i32.const 31
          local.set 4
          local.get 0
          i32.const 16777215
          i32.le_u
          if ;; label = @2
            local.get 0
            i32.const 38
            local.get 0
            i32.const 8
            i32.shr_u
            i32.clz
            local.tee 1
            i32.sub
            i32.shr_u
            i32.const 1
            i32.and
            local.get 1
            i32.const 1
            i32.shl
            i32.sub
            i32.const 62
            i32.add
            local.set 4
          end
          local.get 2
          local.get 4
          i32.store offset=28
          local.get 2
          i64.const 0
          i64.store offset=16 align=4
          local.get 4
          i32.const 2
          i32.shl
          i32.const 1054548
          i32.add
          local.set 7
          block ;; label = @2
            i32.const 1054248
            i32.load
            local.tee 3
            i32.const 1
            local.get 4
            i32.shl
            local.tee 1
            i32.and
            i32.eqz
            if ;; label = @3
              local.get 7
              local.get 2
              i32.store
              i32.const 1054248
              local.get 1
              local.get 3
              i32.or
              i32.store
              local.get 2
              local.get 7
              i32.store offset=24
              local.get 2
              local.get 2
              i32.store offset=8
              local.get 2
              local.get 2
              i32.store offset=12
              br 1 (;@2;)
            end
            local.get 0
            i32.const 25
            local.get 4
            i32.const 1
            i32.shr_u
            i32.sub
            i32.const 0
            local.get 4
            i32.const 31
            i32.ne
            select
            i32.shl
            local.set 4
            local.get 7
            i32.load
            local.set 1
            block ;; label = @3
              loop ;; label = @4
                local.get 1
                local.tee 3
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 0
                i32.eq
                br_if 1 (;@3;)
                local.get 4
                i32.const 29
                i32.shr_u
                local.set 1
                local.get 4
                i32.const 1
                i32.shl
                local.set 4
                local.get 3
                local.get 1
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                local.tee 7
                i32.load
                local.tee 1
                br_if 0 (;@4;)
              end
              local.get 7
              local.get 2
              i32.store
              local.get 2
              local.get 3
              i32.store offset=24
              local.get 2
              local.get 2
              i32.store offset=12
              local.get 2
              local.get 2
              i32.store offset=8
              br 1 (;@2;)
            end
            local.get 3
            i32.load offset=8
            local.tee 0
            local.get 2
            i32.store offset=12
            local.get 3
            local.get 2
            i32.store offset=8
            local.get 2
            i32.const 0
            i32.store offset=24
            local.get 2
            local.get 3
            i32.store offset=12
            local.get 2
            local.get 0
            i32.store offset=8
          end
          i32.const 1054276
          i32.const 1054276
          i32.load
          i32.const 1
          i32.sub
          local.tee 0
          i32.const -1
          local.get 0
          select
          i32.store
        end
      )
      (func (;18;) (type 4) (param i32 i32)
        (local i32 i32 i32 i32 i32 i32)
        local.get 0
        local.get 1
        i32.add
        local.set 5
        block ;; label = @1
          block ;; label = @2
            local.get 0
            i32.load offset=4
            local.tee 2
            i32.const 1
            i32.and
            br_if 0 (;@2;)
            local.get 2
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@1;)
            local.get 0
            i32.load
            local.tee 2
            local.get 1
            i32.add
            local.set 1
            block ;; label = @3
              local.get 0
              local.get 2
              i32.sub
              local.tee 0
              i32.const 1054264
              i32.load
              i32.ne
              if ;; label = @4
                local.get 2
                i32.const 255
                i32.le_u
                if ;; label = @5
                  local.get 2
                  i32.const 3
                  i32.shr_u
                  local.set 2
                  local.get 0
                  i32.load offset=8
                  local.tee 4
                  local.get 0
                  i32.load offset=12
                  local.tee 3
                  i32.ne
                  br_if 2 (;@3;)
                  i32.const 1054244
                  i32.const 1054244
                  i32.load
                  i32.const -2
                  local.get 2
                  i32.rotl
                  i32.and
                  i32.store
                  br 3 (;@2;)
                end
                local.get 0
                i32.load offset=24
                local.set 6
                block ;; label = @5
                  local.get 0
                  local.get 0
                  i32.load offset=12
                  local.tee 2
                  i32.ne
                  if ;; label = @6
                    i32.const 1054260
                    i32.load
                    drop
                    local.get 2
                    local.get 0
                    i32.load offset=8
                    local.tee 3
                    i32.store offset=8
                    local.get 3
                    local.get 2
                    i32.store offset=12
                    br 1 (;@5;)
                  end
                  block ;; label = @6
                    local.get 0
                    i32.const 20
                    i32.add
                    local.tee 4
                    i32.load
                    local.tee 3
                    br_if 0 (;@6;)
                    local.get 0
                    i32.const 16
                    i32.add
                    local.tee 4
                    i32.load
                    local.tee 3
                    br_if 0 (;@6;)
                    i32.const 0
                    local.set 2
                    br 1 (;@5;)
                  end
                  loop ;; label = @6
                    local.get 4
                    local.set 7
                    local.get 3
                    local.tee 2
                    i32.const 20
                    i32.add
                    local.tee 4
                    i32.load
                    local.tee 3
                    br_if 0 (;@6;)
                    local.get 2
                    i32.const 16
                    i32.add
                    local.set 4
                    local.get 2
                    i32.load offset=16
                    local.tee 3
                    br_if 0 (;@6;)
                  end
                  local.get 7
                  i32.const 0
                  i32.store
                end
                local.get 6
                i32.eqz
                br_if 2 (;@2;)
                block ;; label = @5
                  local.get 0
                  i32.load offset=28
                  local.tee 4
                  i32.const 2
                  i32.shl
                  i32.const 1054548
                  i32.add
                  local.tee 3
                  i32.load
                  local.get 0
                  i32.eq
                  if ;; label = @6
                    local.get 3
                    local.get 2
                    i32.store
                    local.get 2
                    br_if 1 (;@5;)
                    i32.const 1054248
                    i32.const 1054248
                    i32.load
                    i32.const -2
                    local.get 4
                    i32.rotl
                    i32.and
                    i32.store
                    br 4 (;@2;)
                  end
                  local.get 6
                  i32.const 16
                  i32.const 20
                  local.get 6
                  i32.load offset=16
                  local.get 0
                  i32.eq
                  select
                  i32.add
                  local.get 2
                  i32.store
                  local.get 2
                  i32.eqz
                  br_if 3 (;@2;)
                end
                local.get 2
                local.get 6
                i32.store offset=24
                local.get 0
                i32.load offset=16
                local.tee 3
                if ;; label = @5
                  local.get 2
                  local.get 3
                  i32.store offset=16
                  local.get 3
                  local.get 2
                  i32.store offset=24
                end
                local.get 0
                i32.load offset=20
                local.tee 3
                i32.eqz
                br_if 2 (;@2;)
                local.get 2
                i32.const 20
                i32.add
                local.get 3
                i32.store
                local.get 3
                local.get 2
                i32.store offset=24
                br 2 (;@2;)
              end
              local.get 5
              i32.load offset=4
              local.tee 2
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 1 (;@2;)
              local.get 5
              local.get 2
              i32.const -2
              i32.and
              i32.store offset=4
              i32.const 1054252
              local.get 1
              i32.store
              local.get 5
              local.get 1
              i32.store
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              return
            end
            local.get 3
            local.get 4
            i32.store offset=8
            local.get 4
            local.get 3
            i32.store offset=12
          end
          block ;; label = @2
            local.get 5
            i32.load offset=4
            local.tee 2
            i32.const 2
            i32.and
            i32.eqz
            if ;; label = @3
              i32.const 1054268
              i32.load
              local.get 5
              i32.eq
              if ;; label = @4
                i32.const 1054268
                local.get 0
                i32.store
                i32.const 1054256
                i32.const 1054256
                i32.load
                local.get 1
                i32.add
                local.tee 1
                i32.store
                local.get 0
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                i32.const 1054264
                i32.load
                i32.ne
                br_if 3 (;@1;)
                i32.const 1054252
                i32.const 0
                i32.store
                i32.const 1054264
                i32.const 0
                i32.store
                return
              end
              i32.const 1054264
              i32.load
              local.get 5
              i32.eq
              if ;; label = @4
                i32.const 1054264
                local.get 0
                i32.store
                i32.const 1054252
                i32.const 1054252
                i32.load
                local.get 1
                i32.add
                local.tee 1
                i32.store
                local.get 0
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                local.get 1
                i32.add
                local.get 1
                i32.store
                return
              end
              local.get 2
              i32.const -8
              i32.and
              local.get 1
              i32.add
              local.set 1
              block ;; label = @4
                local.get 2
                i32.const 255
                i32.le_u
                if ;; label = @5
                  local.get 2
                  i32.const 3
                  i32.shr_u
                  local.set 2
                  local.get 5
                  i32.load offset=12
                  local.tee 3
                  local.get 5
                  i32.load offset=8
                  local.tee 4
                  i32.eq
                  if ;; label = @6
                    i32.const 1054244
                    i32.const 1054244
                    i32.load
                    i32.const -2
                    local.get 2
                    i32.rotl
                    i32.and
                    i32.store
                    br 2 (;@4;)
                  end
                  local.get 3
                  local.get 4
                  i32.store offset=8
                  local.get 4
                  local.get 3
                  i32.store offset=12
                  br 1 (;@4;)
                end
                local.get 5
                i32.load offset=24
                local.set 6
                block ;; label = @5
                  local.get 5
                  local.get 5
                  i32.load offset=12
                  local.tee 2
                  i32.ne
                  if ;; label = @6
                    i32.const 1054260
                    i32.load
                    drop
                    local.get 2
                    local.get 5
                    i32.load offset=8
                    local.tee 3
                    i32.store offset=8
                    local.get 3
                    local.get 2
                    i32.store offset=12
                    br 1 (;@5;)
                  end
                  block ;; label = @6
                    local.get 5
                    i32.const 20
                    i32.add
                    local.tee 3
                    i32.load
                    local.tee 4
                    br_if 0 (;@6;)
                    local.get 5
                    i32.const 16
                    i32.add
                    local.tee 3
                    i32.load
                    local.tee 4
                    br_if 0 (;@6;)
                    i32.const 0
                    local.set 2
                    br 1 (;@5;)
                  end
                  loop ;; label = @6
                    local.get 3
                    local.set 7
                    local.get 4
                    local.tee 2
                    i32.const 20
                    i32.add
                    local.tee 3
                    i32.load
                    local.tee 4
                    br_if 0 (;@6;)
                    local.get 2
                    i32.const 16
                    i32.add
                    local.set 3
                    local.get 2
                    i32.load offset=16
                    local.tee 4
                    br_if 0 (;@6;)
                  end
                  local.get 7
                  i32.const 0
                  i32.store
                end
                local.get 6
                i32.eqz
                br_if 0 (;@4;)
                block ;; label = @5
                  local.get 5
                  i32.load offset=28
                  local.tee 4
                  i32.const 2
                  i32.shl
                  i32.const 1054548
                  i32.add
                  local.tee 3
                  i32.load
                  local.get 5
                  i32.eq
                  if ;; label = @6
                    local.get 3
                    local.get 2
                    i32.store
                    local.get 2
                    br_if 1 (;@5;)
                    i32.const 1054248
                    i32.const 1054248
                    i32.load
                    i32.const -2
                    local.get 4
                    i32.rotl
                    i32.and
                    i32.store
                    br 2 (;@4;)
                  end
                  local.get 6
                  i32.const 16
                  i32.const 20
                  local.get 6
                  i32.load offset=16
                  local.get 5
                  i32.eq
                  select
                  i32.add
                  local.get 2
                  i32.store
                  local.get 2
                  i32.eqz
                  br_if 1 (;@4;)
                end
                local.get 2
                local.get 6
                i32.store offset=24
                local.get 5
                i32.load offset=16
                local.tee 3
                if ;; label = @5
                  local.get 2
                  local.get 3
                  i32.store offset=16
                  local.get 3
                  local.get 2
                  i32.store offset=24
                end
                local.get 5
                i32.load offset=20
                local.tee 3
                i32.eqz
                br_if 0 (;@4;)
                local.get 2
                i32.const 20
                i32.add
                local.get 3
                i32.store
                local.get 3
                local.get 2
                i32.store offset=24
              end
              local.get 0
              local.get 1
              i32.add
              local.get 1
              i32.store
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              i32.const 1054264
              i32.load
              i32.ne
              br_if 1 (;@2;)
              i32.const 1054252
              local.get 1
              i32.store
              return
            end
            local.get 5
            local.get 2
            i32.const -2
            i32.and
            i32.store offset=4
            local.get 0
            local.get 1
            i32.add
            local.get 1
            i32.store
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
          end
          local.get 1
          i32.const 255
          i32.le_u
          if ;; label = @2
            local.get 1
            i32.const -8
            i32.and
            i32.const 1054284
            i32.add
            local.set 2
            block (result i32) ;; label = @3
              i32.const 1054244
              i32.load
              local.tee 3
              i32.const 1
              local.get 1
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 1
              i32.and
              i32.eqz
              if ;; label = @4
                i32.const 1054244
                local.get 1
                local.get 3
                i32.or
                i32.store
                local.get 2
                br 1 (;@3;)
              end
              local.get 2
              i32.load offset=8
            end
            local.tee 1
            local.get 0
            i32.store offset=12
            local.get 2
            local.get 0
            i32.store offset=8
            local.get 0
            local.get 2
            i32.store offset=12
            local.get 0
            local.get 1
            i32.store offset=8
            return
          end
          i32.const 31
          local.set 4
          local.get 1
          i32.const 16777215
          i32.le_u
          if ;; label = @2
            local.get 1
            i32.const 38
            local.get 1
            i32.const 8
            i32.shr_u
            i32.clz
            local.tee 2
            i32.sub
            i32.shr_u
            i32.const 1
            i32.and
            local.get 2
            i32.const 1
            i32.shl
            i32.sub
            i32.const 62
            i32.add
            local.set 4
          end
          local.get 0
          local.get 4
          i32.store offset=28
          local.get 0
          i64.const 0
          i64.store offset=16 align=4
          local.get 4
          i32.const 2
          i32.shl
          i32.const 1054548
          i32.add
          local.set 7
          i32.const 1054248
          i32.load
          local.tee 3
          i32.const 1
          local.get 4
          i32.shl
          local.tee 2
          i32.and
          i32.eqz
          if ;; label = @2
            local.get 7
            local.get 0
            i32.store
            i32.const 1054248
            local.get 2
            local.get 3
            i32.or
            i32.store
            local.get 0
            local.get 7
            i32.store offset=24
            local.get 0
            local.get 0
            i32.store offset=8
            local.get 0
            local.get 0
            i32.store offset=12
            return
          end
          local.get 1
          i32.const 25
          local.get 4
          i32.const 1
          i32.shr_u
          i32.sub
          i32.const 0
          local.get 4
          i32.const 31
          i32.ne
          select
          i32.shl
          local.set 4
          local.get 7
          i32.load
          local.set 2
          block ;; label = @2
            loop ;; label = @3
              local.get 2
              local.tee 3
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 1
              i32.eq
              br_if 1 (;@2;)
              local.get 4
              i32.const 29
              i32.shr_u
              local.set 2
              local.get 4
              i32.const 1
              i32.shl
              local.set 4
              local.get 3
              local.get 2
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee 7
              i32.load
              local.tee 2
              br_if 0 (;@3;)
            end
            local.get 7
            local.get 0
            i32.store
            local.get 0
            local.get 3
            i32.store offset=24
            local.get 0
            local.get 0
            i32.store offset=12
            local.get 0
            local.get 0
            i32.store offset=8
            return
          end
          local.get 3
          i32.load offset=8
          local.tee 1
          local.get 0
          i32.store offset=12
          local.get 3
          local.get 0
          i32.store offset=8
          local.get 0
          i32.const 0
          i32.store offset=24
          local.get 0
          local.get 3
          i32.store offset=12
          local.get 0
          local.get 1
          i32.store offset=8
        end
      )
      (func (;19;) (type 5) (result i32)
        (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
        global.get 0
        i32.const 144
        i32.sub
        local.tee 0
        global.set 0
        call 176
        local.get 0
        i32.const 0
        i32.store offset=76
        local.get 0
        i64.const 4
        i64.store offset=68 align=4
        local.get 0
        i32.const 0
        i32.store offset=80
        i32.const 1053852
        i32.load
        local.set 3
        loop ;; label = @1
          local.get 3
          if ;; label = @2
            local.get 0
            i32.const 56
            i32.add
            local.get 0
            i32.const 80
            i32.add
            local.tee 2
            call 105
            local.get 0
            i32.load offset=56
            local.set 5
            local.get 0
            i32.load offset=60
            local.set 1
            local.get 0
            i32.const 48
            i32.add
            local.get 2
            call 105
            local.get 0
            i32.load offset=48
            local.set 6
            local.get 0
            i32.load offset=52
            local.set 2
            local.get 0
            i32.const 40
            i32.add
            local.get 1
            call 92
            local.get 0
            i32.load offset=44
            local.set 7
            local.get 0
            i32.load offset=40
            local.get 5
            local.get 1
            call 22
            local.set 5
            local.get 0
            i32.const 32
            i32.add
            local.get 2
            call 92
            local.get 0
            i32.load offset=36
            local.set 8
            local.get 0
            i32.load offset=32
            local.get 6
            local.get 2
            call 22
            local.set 6
            local.get 0
            local.get 2
            i32.store offset=140
            local.get 0
            local.get 8
            i32.store offset=136
            local.get 0
            local.get 6
            i32.store offset=132
            local.get 0
            local.get 1
            i32.store offset=128
            local.get 0
            local.get 7
            i32.store offset=124
            local.get 0
            local.get 5
            i32.store offset=120
            local.get 3
            i32.const 1
            i32.sub
            local.set 3
            local.get 0
            i32.const 68
            i32.add
            local.get 0
            i32.const 120
            i32.add
            call 90
            br 1 (;@1;)
          else
            block ;; label = @3
              local.get 0
              i32.load offset=76
              local.set 6
              i32.const 1053848
              i32.load8_u
              i32.eqz
              br_if 0 (;@3;)
              local.get 0
              i32.const 0
              i32.store offset=92
              local.get 0
              i64.const 4
              i64.store offset=84 align=4
              i32.const 1053856
              i32.load
              local.set 2
              i32.const 4
              local.set 5
              loop ;; label = @4
                local.get 2
                if ;; label = @5
                  local.get 0
                  i32.const 24
                  i32.add
                  local.get 0
                  i32.const 80
                  i32.add
                  call 105
                  local.get 0
                  i32.load offset=28
                  local.set 6
                  local.get 0
                  i32.load offset=24
                  local.set 7
                  local.get 0
                  i32.load offset=88
                  local.get 4
                  i32.eq
                  if (result i32) ;; label = @6
                    local.get 0
                    i32.const 84
                    i32.add
                    local.set 3
                    global.get 0
                    i32.const 32
                    i32.sub
                    local.tee 1
                    global.set 0
                    block (result i32) ;; label = @7
                      i32.const 0
                      local.get 4
                      i32.const 1
                      i32.add
                      local.tee 4
                      i32.eqz
                      br_if 0 (;@7;)
                      drop
                      i32.const 4
                      local.get 3
                      i32.load offset=4
                      local.tee 5
                      i32.const 1
                      i32.shl
                      local.tee 8
                      local.get 4
                      local.get 4
                      local.get 8
                      i32.lt_u
                      select
                      local.tee 4
                      local.get 4
                      i32.const 4
                      i32.le_u
                      select
                      local.tee 4
                      i32.const 3
                      i32.shl
                      local.set 8
                      local.get 4
                      i32.const 268435456
                      i32.lt_u
                      i32.const 2
                      i32.shl
                      local.set 9
                      block ;; label = @8
                        local.get 5
                        if ;; label = @9
                          local.get 1
                          i32.const 4
                          i32.store offset=24
                          local.get 1
                          local.get 5
                          i32.const 3
                          i32.shl
                          i32.store offset=28
                          local.get 1
                          local.get 3
                          i32.load
                          i32.store offset=20
                          br 1 (;@8;)
                        end
                        local.get 1
                        i32.const 0
                        i32.store offset=24
                      end
                      local.get 1
                      i32.const 8
                      i32.add
                      local.get 9
                      local.get 8
                      local.get 1
                      i32.const 20
                      i32.add
                      call 55
                      local.get 1
                      i32.load offset=8
                      i32.eqz
                      if ;; label = @8
                        local.get 1
                        i32.load offset=12
                        local.set 5
                        local.get 3
                        local.get 4
                        i32.store offset=4
                        local.get 3
                        local.get 5
                        i32.store
                        i32.const -2147483647
                        br 1 (;@7;)
                      end
                      local.get 1
                      i32.const 16
                      i32.add
                      i32.load
                      local.set 4
                      local.get 1
                      i32.load offset=12
                    end
                    local.get 4
                    call 184
                    local.get 1
                    i32.const 32
                    i32.add
                    global.set 0
                    local.get 0
                    i32.load offset=84
                    local.set 5
                    local.get 0
                    i32.load offset=92
                  else
                    local.get 4
                  end
                  i32.const 3
                  i32.shl
                  local.get 5
                  i32.add
                  local.tee 4
                  local.get 6
                  i32.store offset=4
                  local.get 4
                  local.get 7
                  i32.store
                  local.get 0
                  local.get 0
                  i32.load offset=92
                  i32.const 1
                  i32.add
                  local.tee 4
                  i32.store offset=92
                  local.get 2
                  i32.const 1
                  i32.sub
                  local.set 2
                  br 1 (;@4;)
                else
                  i32.const 1053849
                  i32.load8_u
                  drop
                  unreachable
                end
                unreachable
              end
              unreachable
            end
          end
        end
        local.get 0
        i32.load offset=72
        local.set 1
        local.get 0
        i32.load offset=68
        local.set 2
        i32.const 0
        local.set 7
        block ;; label = @1
          local.get 6
          i32.const 4
          i32.shl
          local.tee 3
          if ;; label = @2
            i32.const 4
            local.get 3
            call 183
            local.tee 4
            i32.eqz
            br_if 1 (;@1;)
          end
          local.get 0
          local.get 1
          i32.store offset=124
          local.get 0
          local.get 2
          i32.store offset=120
          local.get 0
          local.get 2
          local.get 6
          i32.const 24
          i32.mul
          local.tee 3
          i32.add
          local.tee 8
          i32.store offset=132
          local.get 2
          i32.const 24
          i32.add
          local.set 5
          local.get 4
          local.set 1
          loop ;; label = @2
            block ;; label = @3
              local.get 0
              local.get 3
              if (result i32) ;; label = @4
                local.get 2
                i32.load
                local.tee 9
                br_if 1 (;@3;)
                local.get 5
              else
                local.get 8
              end
              i32.store offset=128
              local.get 0
              local.get 7
              i32.store offset=136
              local.get 0
              i32.const 120
              i32.add
              local.tee 2
              i32.load offset=12
              local.get 2
              i32.load offset=8
              local.tee 1
              i32.sub
              i32.const 24
              i32.div_u
              local.set 3
              loop ;; label = @4
                local.get 3
                if ;; label = @5
                  local.get 1
                  i32.load
                  local.get 1
                  i32.const 4
                  i32.add
                  i32.load
                  call 181
                  local.get 1
                  i32.const 12
                  i32.add
                  i32.load
                  local.get 1
                  i32.const 16
                  i32.add
                  i32.load
                  call 181
                  local.get 3
                  i32.const 1
                  i32.sub
                  local.set 3
                  local.get 1
                  i32.const 24
                  i32.add
                  local.set 1
                  br 1 (;@4;)
                end
              end
              local.get 2
              i32.load offset=4
              local.tee 1
              if ;; label = @4
                local.get 2
                i32.load
                local.get 1
                i32.const 24
                i32.mul
                call 181
              end
              i32.const 1053928
              local.get 6
              i32.store
              i32.const 1053924
              local.get 4
              i32.store
              local.get 0
              i32.const 144
              i32.add
              global.set 0
              i32.const 1053924
              return
            end
            local.get 2
            i64.load offset=4 align=4
            local.set 10
            local.get 0
            i32.const 104
            i32.add
            local.get 2
            i32.const 20
            i32.add
            i32.load
            i32.store
            local.get 0
            local.get 2
            i64.load offset=12 align=4
            i64.store offset=96
            local.get 0
            local.get 10
            i64.store offset=88 align=4
            local.get 0
            local.get 9
            i32.store offset=84
            local.get 0
            i32.const 16
            i32.add
            local.get 0
            i32.const 84
            i32.add
            call 79
            local.get 1
            local.get 0
            i64.load offset=16
            i64.store align=4
            local.get 0
            i32.const 8
            i32.add
            local.get 0
            i32.const 96
            i32.add
            call 79
            local.get 1
            i32.const 8
            i32.add
            local.get 0
            i64.load offset=8
            i64.store align=4
            local.get 3
            i32.const 24
            i32.sub
            local.set 3
            local.get 5
            i32.const 24
            i32.add
            local.set 5
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 2
            i32.const 24
            i32.add
            local.set 2
            br 0 (;@2;)
          end
          unreachable
        end
        unreachable
      )
      (func (;20;) (type 0) (param i32 i32) (result i32)
        (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
        global.get 0
        i32.const 48
        i32.sub
        local.tee 2
        global.set 0
        local.get 0
        i32.load offset=4
        local.set 9
        local.get 0
        i32.load
        local.set 6
        i32.const 1
        local.set 0
        block ;; label = @1
          block ;; label = @2
            local.get 1
            i32.load offset=20
            local.tee 10
            i32.const 34
            local.get 1
            i32.const 24
            i32.add
            i32.load
            local.tee 12
            i32.load offset=16
            local.tee 13
            call_indirect (type 0)
            br_if 0 (;@2;)
            local.get 2
            i32.const 0
            i32.store offset=16
            local.get 2
            local.get 6
            i32.store offset=8
            local.get 2
            local.get 6
            local.get 9
            i32.add
            local.tee 1
            i32.store offset=12
            local.get 6
            local.set 14
            loop ;; label = @3
              local.get 2
              i32.const 8
              i32.add
              call 65
              local.tee 3
              i32.const 1114112
              i32.eq
              if ;; label = @4
                local.get 2
                local.get 6
                local.get 9
                local.get 5
                call 103
                i32.const 1
                local.set 0
                local.get 10
                local.get 2
                i32.load
                local.get 2
                i32.load offset=4
                local.get 12
                i32.load offset=12
                call_indirect (type 1)
                br_if 2 (;@2;)
                local.get 10
                i32.const 34
                local.get 13
                call_indirect (type 0)
                local.set 0
                br 2 (;@2;)
              end
              local.get 2
              local.get 2
              i32.load offset=16
              local.tee 7
              local.get 1
              i32.add
              local.get 14
              local.get 2
              i32.load offset=12
              local.tee 15
              i32.add
              i32.sub
              local.get 2
              i32.load offset=8
              local.tee 14
              i32.add
              i32.store offset=16
              block ;; label = @4
                block ;; label = @5
                  block ;; label = @6
                    block ;; label = @7
                      block ;; label = @8
                        block ;; label = @9
                          block ;; label = @10
                            block ;; label = @11
                              block ;; label = @12
                                block ;; label = @13
                                  block ;; label = @14
                                    block ;; label = @15
                                      local.get 3
                                      i32.const 9
                                      i32.sub
                                      br_table 6 (;@9;) 4 (;@11;) 1 (;@14;) 1 (;@14;) 5 (;@10;) 0 (;@15;)
                                    end
                                    local.get 3
                                    i32.eqz
                                    br_if 6 (;@8;)
                                    local.get 3
                                    i32.const 34
                                    i32.eq
                                    br_if 1 (;@13;)
                                    local.get 3
                                    i32.const 92
                                    i32.eq
                                    br_if 2 (;@12;)
                                  end
                                  local.get 3
                                  i32.const 11
                                  i32.shl
                                  local.set 8
                                  i32.const 0
                                  local.set 1
                                  i32.const 33
                                  local.set 0
                                  i32.const 33
                                  local.set 4
                                  loop ;; label = @14
                                    local.get 0
                                    local.get 1
                                    i32.le_u
                                    if ;; label = @15
                                      local.get 1
                                      local.set 4
                                      br 8 (;@7;)
                                    end
                                    block ;; label = @15
                                      local.get 8
                                      local.get 4
                                      i32.const 1
                                      i32.shr_u
                                      local.get 1
                                      i32.add
                                      local.tee 4
                                      i32.const 2
                                      i32.shl
                                      i32.const 1052988
                                      i32.add
                                      i32.load
                                      i32.const 11
                                      i32.shl
                                      local.tee 11
                                      i32.le_u
                                      if ;; label = @16
                                        local.get 8
                                        local.get 11
                                        i32.eq
                                        br_if 9 (;@7;)
                                        local.get 4
                                        local.set 0
                                        br 1 (;@15;)
                                      end
                                      local.get 4
                                      i32.const 1
                                      i32.add
                                      local.set 1
                                    end
                                    local.get 0
                                    local.get 1
                                    i32.sub
                                    local.set 4
                                    br 0 (;@14;)
                                  end
                                  unreachable
                                end
                                local.get 2
                                i32.const 512
                                i32.store16 offset=30
                                local.get 2
                                i64.const 0
                                i64.store offset=22 align=2
                                local.get 2
                                i32.const 8796
                                i32.store16 offset=20
                                br 6 (;@6;)
                              end
                              local.get 2
                              i32.const 512
                              i32.store16 offset=30
                              local.get 2
                              i64.const 0
                              i64.store offset=22 align=2
                              local.get 2
                              i32.const 23644
                              i32.store16 offset=20
                              br 5 (;@6;)
                            end
                            local.get 2
                            i32.const 512
                            i32.store16 offset=30
                            local.get 2
                            i64.const 0
                            i64.store offset=22 align=2
                            local.get 2
                            i32.const 28252
                            i32.store16 offset=20
                            br 4 (;@6;)
                          end
                          local.get 2
                          i32.const 512
                          i32.store16 offset=30
                          local.get 2
                          i64.const 0
                          i64.store offset=22 align=2
                          local.get 2
                          i32.const 29276
                          i32.store16 offset=20
                          br 3 (;@6;)
                        end
                        local.get 2
                        i32.const 512
                        i32.store16 offset=30
                        local.get 2
                        i64.const 0
                        i64.store offset=22 align=2
                        local.get 2
                        i32.const 29788
                        i32.store16 offset=20
                        br 2 (;@6;)
                      end
                      local.get 2
                      i32.const 512
                      i32.store16 offset=30
                      local.get 2
                      i64.const 0
                      i64.store offset=22 align=2
                      local.get 2
                      i32.const 12380
                      i32.store16 offset=20
                      br 1 (;@6;)
                    end
                    local.get 4
                    local.get 0
                    local.get 1
                    i32.gt_u
                    i32.add
                    local.tee 0
                    i32.const 32
                    i32.gt_u
                    br_if 1 (;@5;)
                    local.get 0
                    i32.const 2
                    i32.shl
                    local.tee 8
                    i32.const 1052988
                    i32.add
                    i32.load
                    i32.const 21
                    i32.shr_u
                    local.set 1
                    i32.const 727
                    local.set 4
                    block (result i32) ;; label = @7
                      block ;; label = @8
                        local.get 0
                        i32.const 32
                        i32.eq
                        br_if 0 (;@8;)
                        local.get 8
                        i32.const 1052992
                        i32.add
                        i32.load
                        i32.const 21
                        i32.shr_u
                        local.set 4
                        local.get 0
                        br_if 0 (;@8;)
                        i32.const 0
                        br 1 (;@7;)
                      end
                      local.get 8
                      i32.const 1052984
                      i32.add
                      i32.load
                      i32.const 2097151
                      i32.and
                    end
                    local.set 0
                    local.get 4
                    i32.const 1
                    i32.sub
                    local.set 8
                    local.get 3
                    local.get 0
                    i32.sub
                    local.set 11
                    i32.const 727
                    local.get 1
                    local.get 1
                    i32.const 727
                    i32.ge_u
                    select
                    i32.const 727
                    i32.sub
                    local.set 0
                    i32.const 0
                    local.set 4
                    loop ;; label = @7
                      block ;; label = @8
                        block ;; label = @9
                          block ;; label = @10
                            block ;; label = @11
                              block ;; label = @12
                                local.get 1
                                local.get 8
                                i32.ne
                                if (result i32) ;; label = @13
                                  local.get 0
                                  i32.eqz
                                  br_if 8 (;@5;)
                                  local.get 4
                                  local.get 1
                                  i32.const 1053120
                                  i32.add
                                  i32.load8_u
                                  i32.add
                                  local.tee 4
                                  local.get 11
                                  i32.le_u
                                  br_if 4 (;@9;)
                                  local.get 1
                                else
                                  local.get 8
                                end
                                i32.const 1
                                i32.and
                                i32.eqz
                                if ;; label = @13
                                  local.get 3
                                  i32.const 32
                                  i32.lt_u
                                  br_if 5 (;@8;)
                                  local.get 3
                                  i32.const 127
                                  i32.lt_u
                                  br_if 3 (;@10;)
                                  local.get 3
                                  i32.const 65536
                                  i32.lt_u
                                  br_if 2 (;@11;)
                                  local.get 3
                                  i32.const 131072
                                  i32.lt_u
                                  br_if 1 (;@12;)
                                  local.get 3
                                  i32.const 205744
                                  i32.sub
                                  i32.const 712016
                                  i32.lt_u
                                  local.get 3
                                  i32.const 201547
                                  i32.sub
                                  i32.const 5
                                  i32.lt_u
                                  i32.or
                                  local.get 3
                                  i32.const 195102
                                  i32.sub
                                  i32.const 1506
                                  i32.lt_u
                                  local.get 3
                                  i32.const 191457
                                  i32.sub
                                  i32.const 3103
                                  i32.lt_u
                                  i32.or
                                  i32.or
                                  local.get 3
                                  i32.const 2097150
                                  i32.and
                                  i32.const 178206
                                  i32.eq
                                  local.get 3
                                  i32.const 183970
                                  i32.sub
                                  i32.const 14
                                  i32.lt_u
                                  i32.or
                                  local.get 3
                                  i32.const 2097120
                                  i32.and
                                  i32.const 173792
                                  i32.eq
                                  local.get 3
                                  i32.const 177978
                                  i32.sub
                                  i32.const 6
                                  i32.lt_u
                                  i32.or
                                  i32.or
                                  i32.or
                                  br_if 5 (;@8;)
                                  local.get 3
                                  i32.const 918000
                                  i32.sub
                                  i32.const 196112
                                  i32.lt_u
                                  br_if 5 (;@8;)
                                  br 3 (;@10;)
                                end
                                local.get 2
                                i32.const 20
                                i32.add
                                local.get 3
                                call 51
                                br 6 (;@6;)
                              end
                              local.get 3
                              i32.const 1051564
                              i32.const 44
                              i32.const 1051652
                              i32.const 196
                              i32.const 1051848
                              i32.const 450
                              call 41
                              br_if 1 (;@10;)
                              br 3 (;@8;)
                            end
                            local.get 3
                            i32.const 1052298
                            i32.const 40
                            i32.const 1052378
                            i32.const 287
                            i32.const 1052665
                            i32.const 303
                            call 41
                            i32.eqz
                            br_if 2 (;@8;)
                          end
                          local.get 2
                          local.get 3
                          i32.store offset=24
                          local.get 2
                          i32.const 128
                          i32.store8 offset=20
                          br 3 (;@6;)
                        end
                        local.get 0
                        i32.const 1
                        i32.add
                        local.set 0
                        local.get 1
                        i32.const 1
                        i32.add
                        local.set 1
                        br 1 (;@7;)
                      end
                    end
                    local.get 2
                    i32.const 20
                    i32.add
                    local.get 3
                    call 51
                  end
                  local.get 2
                  i32.load8_u offset=20
                  i32.const 128
                  i32.eq
                  br_if 1 (;@4;)
                  local.get 2
                  i32.load8_u offset=31
                  local.get 2
                  i32.load8_u offset=30
                  i32.sub
                  i32.const 255
                  i32.and
                  i32.const 1
                  i32.eq
                  br_if 1 (;@4;)
                  local.get 5
                  local.get 7
                  i32.gt_u
                  br_if 4 (;@1;)
                  block ;; label = @6
                    local.get 5
                    i32.eqz
                    br_if 0 (;@6;)
                    local.get 5
                    local.get 9
                    i32.ge_u
                    if ;; label = @7
                      local.get 5
                      local.get 9
                      i32.eq
                      br_if 1 (;@6;)
                      br 6 (;@1;)
                    end
                    local.get 5
                    local.get 6
                    i32.add
                    i32.load8_s
                    i32.const -64
                    i32.lt_s
                    br_if 5 (;@1;)
                  end
                  block ;; label = @6
                    local.get 7
                    i32.eqz
                    br_if 0 (;@6;)
                    local.get 7
                    local.get 9
                    i32.ge_u
                    if ;; label = @7
                      local.get 7
                      local.get 9
                      i32.ne
                      br_if 6 (;@1;)
                      br 1 (;@6;)
                    end
                    local.get 6
                    local.get 7
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.le_s
                    br_if 5 (;@1;)
                  end
                  local.get 10
                  local.get 5
                  local.get 6
                  i32.add
                  local.get 7
                  local.get 5
                  i32.sub
                  local.get 12
                  i32.load offset=12
                  call_indirect (type 1)
                  i32.eqz
                  if ;; label = @6
                    local.get 2
                    i32.const 40
                    i32.add
                    local.tee 4
                    local.get 2
                    i32.const 28
                    i32.add
                    i32.load
                    i32.store
                    local.get 2
                    local.get 2
                    i64.load offset=20 align=4
                    local.tee 16
                    i64.store offset=32
                    local.get 16
                    i32.wrap_i64
                    local.set 0
                    loop ;; label = @7
                      block ;; label = @8
                        local.get 0
                        i32.const 255
                        i32.and
                        i32.const 128
                        i32.ne
                        if ;; label = @9
                          local.get 2
                          i32.load8_u offset=42
                          local.tee 1
                          local.get 2
                          i32.load8_u offset=43
                          i32.lt_u
                          if ;; label = @10
                            local.get 2
                            local.get 1
                            i32.const 1
                            i32.add
                            i32.store8 offset=42
                            local.get 1
                            i32.const 10
                            i32.ge_u
                            br_if 5 (;@5;)
                            local.get 2
                            i32.const 32
                            i32.add
                            local.get 1
                            i32.add
                            i32.load8_u
                            local.set 1
                            br 2 (;@8;)
                          end
                          block (result i32) ;; label = @10
                            i32.const 1
                            local.get 3
                            i32.const 128
                            i32.lt_u
                            br_if 0 (;@10;)
                            drop
                            i32.const 2
                            local.get 3
                            i32.const 2048
                            i32.lt_u
                            br_if 0 (;@10;)
                            drop
                            i32.const 3
                            i32.const 4
                            local.get 3
                            i32.const 65536
                            i32.lt_u
                            select
                          end
                          local.get 7
                          i32.add
                          local.set 5
                          br 5 (;@4;)
                        end
                        i32.const 0
                        local.set 0
                        local.get 4
                        i32.const 0
                        i32.store
                        local.get 2
                        i32.load offset=36
                        local.set 1
                        local.get 2
                        i64.const 0
                        i64.store offset=32
                      end
                      local.get 10
                      local.get 1
                      local.get 13
                      call_indirect (type 0)
                      i32.eqz
                      br_if 0 (;@7;)
                    end
                  end
                  i32.const 1
                  local.set 0
                  br 3 (;@2;)
                end
                unreachable
              end
              local.get 15
              local.set 1
              br 0 (;@3;)
            end
            unreachable
          end
          local.get 2
          i32.const 48
          i32.add
          global.set 0
          local.get 0
          return
        end
        local.get 6
        local.get 9
        local.get 5
        local.get 7
        call 182
        unreachable
      )
      (func (;21;) (type 9) (param i32 i32 i32)
        (local i32 i32 i32 i32)
        block ;; label = @1
          block ;; label = @2
            local.get 2
            i32.const 33
            i32.lt_u
            if ;; label = @3
              local.get 0
              local.get 1
              i32.eq
              br_if 2 (;@1;)
              local.get 1
              local.get 0
              local.get 2
              i32.add
              local.tee 3
              i32.sub
              i32.const 0
              local.get 2
              i32.const 1
              i32.shl
              i32.sub
              i32.gt_u
              br_if 1 (;@2;)
            end
            local.get 0
            local.get 1
            local.get 2
            memory.copy
            br 1 (;@1;)
          end
          local.get 0
          local.get 1
          i32.xor
          i32.const 3
          i32.and
          local.set 4
          block ;; label = @2
            block ;; label = @3
              local.get 0
              local.get 1
              i32.lt_u
              if ;; label = @4
                local.get 4
                if ;; label = @5
                  local.get 2
                  local.set 4
                  local.get 0
                  local.set 3
                  br 3 (;@2;)
                end
                local.get 0
                i32.const 3
                i32.and
                i32.eqz
                if ;; label = @5
                  local.get 2
                  local.set 4
                  local.get 0
                  local.set 3
                  br 2 (;@3;)
                end
                local.get 2
                i32.eqz
                br_if 3 (;@1;)
                local.get 0
                local.get 1
                i32.load8_u
                i32.store8
                local.get 2
                i32.const 1
                i32.sub
                local.set 4
                local.get 0
                i32.const 1
                i32.add
                local.tee 3
                i32.const 3
                i32.and
                i32.eqz
                if ;; label = @5
                  local.get 1
                  i32.const 1
                  i32.add
                  local.set 1
                  br 2 (;@3;)
                end
                local.get 4
                i32.eqz
                br_if 3 (;@1;)
                local.get 0
                local.get 1
                i32.load8_u offset=1
                i32.store8 offset=1
                local.get 2
                i32.const 2
                i32.sub
                local.set 4
                local.get 0
                i32.const 2
                i32.add
                local.tee 3
                i32.const 3
                i32.and
                i32.eqz
                if ;; label = @5
                  local.get 1
                  i32.const 2
                  i32.add
                  local.set 1
                  br 2 (;@3;)
                end
                local.get 4
                i32.eqz
                br_if 3 (;@1;)
                local.get 0
                local.get 1
                i32.load8_u offset=2
                i32.store8 offset=2
                local.get 2
                i32.const 3
                i32.sub
                local.set 4
                local.get 0
                i32.const 3
                i32.add
                local.tee 3
                i32.const 3
                i32.and
                i32.eqz
                if ;; label = @5
                  local.get 1
                  i32.const 3
                  i32.add
                  local.set 1
                  br 2 (;@3;)
                end
                local.get 4
                i32.eqz
                br_if 3 (;@1;)
                local.get 0
                local.get 1
                i32.load8_u offset=3
                i32.store8 offset=3
                local.get 0
                i32.const 4
                i32.add
                local.set 3
                local.get 1
                i32.const 4
                i32.add
                local.set 1
                local.get 2
                i32.const 4
                i32.sub
                local.set 4
                br 1 (;@3;)
              end
              block ;; label = @4
                local.get 4
                br_if 0 (;@4;)
                block ;; label = @5
                  local.get 3
                  i32.const 3
                  i32.and
                  i32.eqz
                  br_if 0 (;@5;)
                  local.get 2
                  i32.eqz
                  br_if 4 (;@1;)
                  local.get 0
                  local.get 2
                  i32.const 1
                  i32.sub
                  local.tee 4
                  i32.add
                  local.tee 3
                  local.get 1
                  local.get 4
                  i32.add
                  i32.load8_u
                  i32.store8
                  local.get 3
                  i32.const 3
                  i32.and
                  i32.eqz
                  if ;; label = @6
                    local.get 4
                    local.set 2
                    br 1 (;@5;)
                  end
                  local.get 4
                  i32.eqz
                  br_if 4 (;@1;)
                  local.get 0
                  local.get 2
                  i32.const 2
                  i32.sub
                  local.tee 4
                  i32.add
                  local.tee 3
                  local.get 1
                  local.get 4
                  i32.add
                  i32.load8_u
                  i32.store8
                  local.get 3
                  i32.const 3
                  i32.and
                  i32.eqz
                  if ;; label = @6
                    local.get 4
                    local.set 2
                    br 1 (;@5;)
                  end
                  local.get 4
                  i32.eqz
                  br_if 4 (;@1;)
                  local.get 0
                  local.get 2
                  i32.const 3
                  i32.sub
                  local.tee 4
                  i32.add
                  local.tee 3
                  local.get 1
                  local.get 4
                  i32.add
                  i32.load8_u
                  i32.store8
                  local.get 3
                  i32.const 3
                  i32.and
                  i32.eqz
                  if ;; label = @6
                    local.get 4
                    local.set 2
                    br 1 (;@5;)
                  end
                  local.get 4
                  i32.eqz
                  br_if 4 (;@1;)
                  local.get 0
                  local.get 2
                  i32.const 4
                  i32.sub
                  local.tee 2
                  i32.add
                  local.get 1
                  local.get 2
                  i32.add
                  i32.load8_u
                  i32.store8
                end
                local.get 2
                i32.const 4
                i32.lt_u
                br_if 0 (;@4;)
                local.get 2
                i32.const 4
                i32.sub
                local.tee 4
                i32.const 2
                i32.shr_u
                i32.const 1
                i32.add
                i32.const 3
                i32.and
                local.tee 3
                if ;; label = @5
                  local.get 1
                  i32.const 4
                  i32.sub
                  local.set 5
                  local.get 0
                  i32.const 4
                  i32.sub
                  local.set 6
                  loop ;; label = @6
                    local.get 2
                    local.get 6
                    i32.add
                    local.get 2
                    local.get 5
                    i32.add
                    i32.load
                    i32.store
                    local.get 2
                    i32.const 4
                    i32.sub
                    local.set 2
                    local.get 3
                    i32.const 1
                    i32.sub
                    local.tee 3
                    br_if 0 (;@6;)
                  end
                end
                local.get 4
                i32.const 12
                i32.lt_u
                br_if 0 (;@4;)
                local.get 1
                i32.const 16
                i32.sub
                local.set 5
                local.get 0
                i32.const 16
                i32.sub
                local.set 6
                loop ;; label = @5
                  local.get 2
                  local.get 6
                  i32.add
                  local.tee 4
                  i32.const 12
                  i32.add
                  local.get 2
                  local.get 5
                  i32.add
                  local.tee 3
                  i32.const 12
                  i32.add
                  i32.load
                  i32.store
                  local.get 4
                  i32.const 8
                  i32.add
                  local.get 3
                  i32.const 8
                  i32.add
                  i32.load
                  i32.store
                  local.get 4
                  i32.const 4
                  i32.add
                  local.get 3
                  i32.const 4
                  i32.add
                  i32.load
                  i32.store
                  local.get 4
                  local.get 3
                  i32.load
                  i32.store
                  local.get 2
                  i32.const 16
                  i32.sub
                  local.tee 2
                  i32.const 3
                  i32.gt_u
                  br_if 0 (;@5;)
                end
              end
              local.get 2
              i32.eqz
              br_if 2 (;@1;)
              local.get 2
              local.tee 3
              i32.const 3
              i32.and
              local.tee 5
              if ;; label = @4
                local.get 1
                i32.const 1
                i32.sub
                local.set 4
                local.get 0
                i32.const 1
                i32.sub
                local.set 6
                loop ;; label = @5
                  local.get 3
                  local.get 6
                  i32.add
                  local.get 3
                  local.get 4
                  i32.add
                  i32.load8_u
                  i32.store8
                  local.get 3
                  i32.const 1
                  i32.sub
                  local.set 3
                  local.get 5
                  i32.const 1
                  i32.sub
                  local.tee 5
                  br_if 0 (;@5;)
                end
              end
              local.get 2
              i32.const 4
              i32.lt_u
              br_if 2 (;@1;)
              local.get 1
              i32.const 4
              i32.sub
              local.set 2
              local.get 0
              i32.const 4
              i32.sub
              local.set 4
              loop ;; label = @4
                local.get 3
                local.get 4
                i32.add
                local.tee 0
                i32.const 3
                i32.add
                local.get 2
                local.get 3
                i32.add
                local.tee 1
                i32.const 3
                i32.add
                i32.load8_u
                i32.store8
                local.get 0
                i32.const 2
                i32.add
                local.get 1
                i32.const 2
                i32.add
                i32.load8_u
                i32.store8
                local.get 0
                i32.const 1
                i32.add
                local.get 1
                i32.const 1
                i32.add
                i32.load8_u
                i32.store8
                local.get 0
                local.get 1
                i32.load8_u
                i32.store8
                local.get 3
                i32.const 4
                i32.sub
                local.tee 3
                br_if 0 (;@4;)
              end
              br 2 (;@1;)
            end
            local.get 4
            i32.const 4
            i32.lt_u
            br_if 0 (;@2;)
            local.get 4
            i32.const 4
            i32.sub
            local.tee 0
            i32.const 2
            i32.shr_u
            i32.const 1
            i32.add
            i32.const 7
            i32.and
            local.tee 2
            if ;; label = @3
              loop ;; label = @4
                local.get 3
                local.get 1
                i32.load
                i32.store
                local.get 1
                i32.const 4
                i32.add
                local.set 1
                local.get 3
                i32.const 4
                i32.add
                local.set 3
                local.get 4
                i32.const 4
                i32.sub
                local.set 4
                local.get 2
                i32.const 1
                i32.sub
                local.tee 2
                br_if 0 (;@4;)
              end
            end
            local.get 0
            i32.const 28
            i32.lt_u
            br_if 0 (;@2;)
            loop ;; label = @3
              local.get 3
              local.get 1
              i32.load
              i32.store
              local.get 3
              local.get 1
              i32.load offset=4
              i32.store offset=4
              local.get 3
              local.get 1
              i32.load offset=8
              i32.store offset=8
              local.get 3
              local.get 1
              i32.load offset=12
              i32.store offset=12
              local.get 3
              local.get 1
              i32.load offset=16
              i32.store offset=16
              local.get 3
              local.get 1
              i32.load offset=20
              i32.store offset=20
              local.get 3
              local.get 1
              i32.load offset=24
              i32.store offset=24
              local.get 3
              local.get 1
              i32.load offset=28
              i32.store offset=28
              local.get 1
              i32.const 32
              i32.add
              local.set 1
              local.get 3
              i32.const 32
              i32.add
              local.set 3
              local.get 4
              i32.const 32
              i32.sub
              local.tee 4
              i32.const 3
              i32.gt_u
              br_if 0 (;@3;)
            end
          end
          local.get 4
          i32.eqz
          br_if 0 (;@1;)
          block ;; label = @2
            local.get 4
            i32.const 7
            i32.and
            local.tee 5
            i32.eqz
            if ;; label = @3
              local.get 4
              local.set 2
              br 1 (;@2;)
            end
            local.get 4
            local.set 2
            loop ;; label = @3
              local.get 3
              local.get 1
              i32.load8_u
              i32.store8
              local.get 2
              i32.const 1
              i32.sub
              local.set 2
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 5
              i32.const 1
              i32.sub
              local.tee 5
              br_if 0 (;@3;)
            end
          end
          local.get 4
          i32.const 8
          i32.lt_u
          br_if 0 (;@1;)
          loop ;; label = @2
            local.get 3
            local.get 1
            i32.load8_u
            i32.store8
            local.get 3
            local.get 1
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 3
            local.get 1
            i32.load8_u offset=2
            i32.store8 offset=2
            local.get 3
            local.get 1
            i32.load8_u offset=3
            i32.store8 offset=3
            local.get 3
            local.get 1
            i32.load8_u offset=4
            i32.store8 offset=4
            local.get 3
            local.get 1
            i32.load8_u offset=5
            i32.store8 offset=5
            local.get 3
            local.get 1
            i32.load8_u offset=6
            i32.store8 offset=6
            local.get 3
            local.get 1
            i32.load8_u offset=7
            i32.store8 offset=7
            local.get 3
            i32.const 8
            i32.add
            local.set 3
            local.get 1
            i32.const 8
            i32.add
            local.set 1
            local.get 2
            i32.const 8
            i32.sub
            local.tee 2
            br_if 0 (;@2;)
          end
        end
      )
      (func (;22;) (type 1) (param i32 i32 i32) (result i32)
        (local i32 i32 i32 i32)
        block ;; label = @1
          block (result i32) ;; label = @2
            block ;; label = @3
              local.get 2
              i32.const 32
              i32.le_u
              if ;; label = @4
                local.get 1
                i32.const 3
                i32.and
                i32.eqz
                local.get 2
                i32.eqz
                i32.or
                br_if 1 (;@3;)
                local.get 0
                local.get 1
                i32.load8_u
                i32.store8
                local.get 0
                i32.const 1
                i32.add
                local.get 1
                i32.const 1
                i32.add
                local.tee 3
                i32.const 3
                i32.and
                i32.eqz
                local.get 2
                i32.const 1
                i32.sub
                local.tee 5
                i32.eqz
                i32.or
                br_if 2 (;@2;)
                drop
                local.get 0
                local.get 1
                i32.load8_u offset=1
                i32.store8 offset=1
                local.get 0
                i32.const 2
                i32.add
                local.get 1
                i32.const 2
                i32.add
                local.tee 3
                i32.const 3
                i32.and
                i32.eqz
                local.get 2
                i32.const 2
                i32.sub
                local.tee 5
                i32.eqz
                i32.or
                br_if 2 (;@2;)
                drop
                local.get 0
                local.get 1
                i32.load8_u offset=2
                i32.store8 offset=2
                local.get 0
                i32.const 3
                i32.add
                local.get 1
                i32.const 3
                i32.add
                local.tee 3
                i32.const 3
                i32.and
                i32.eqz
                local.get 2
                i32.const 3
                i32.sub
                local.tee 5
                i32.eqz
                i32.or
                br_if 2 (;@2;)
                drop
                local.get 0
                local.get 1
                i32.load8_u offset=3
                i32.store8 offset=3
                local.get 2
                i32.const 4
                i32.sub
                local.set 5
                local.get 1
                i32.const 4
                i32.add
                local.set 3
                local.get 0
                i32.const 4
                i32.add
                br 2 (;@2;)
              end
              local.get 0
              local.get 1
              local.get 2
              memory.copy
              local.get 0
              return
            end
            local.get 2
            local.set 5
            local.get 1
            local.set 3
            local.get 0
          end
          local.tee 4
          i32.const 3
          i32.and
          local.tee 1
          i32.eqz
          if ;; label = @2
            block ;; label = @3
              local.get 5
              i32.const 16
              i32.lt_u
              if ;; label = @4
                local.get 5
                local.set 2
                br 1 (;@3;)
              end
              local.get 5
              i32.const 16
              i32.sub
              local.tee 2
              i32.const 16
              i32.and
              i32.eqz
              if ;; label = @4
                local.get 4
                local.get 3
                i64.load align=4
                i64.store align=4
                local.get 4
                local.get 3
                i64.load offset=8 align=4
                i64.store offset=8 align=4
                local.get 4
                i32.const 16
                i32.add
                local.set 4
                local.get 3
                i32.const 16
                i32.add
                local.set 3
                local.get 2
                local.set 5
              end
              local.get 2
              i32.const 16
              i32.lt_u
              br_if 0 (;@3;)
              local.get 5
              local.set 2
              loop ;; label = @4
                local.get 4
                local.get 3
                i64.load align=4
                i64.store align=4
                local.get 4
                local.get 3
                i64.load offset=8 align=4
                i64.store offset=8 align=4
                local.get 4
                local.get 3
                i64.load offset=16 align=4
                i64.store offset=16 align=4
                local.get 4
                local.get 3
                i64.load offset=24 align=4
                i64.store offset=24 align=4
                local.get 4
                i32.const 32
                i32.add
                local.set 4
                local.get 3
                i32.const 32
                i32.add
                local.set 3
                local.get 2
                i32.const 32
                i32.sub
                local.tee 2
                i32.const 15
                i32.gt_u
                br_if 0 (;@4;)
              end
            end
            local.get 2
            i32.const 8
            i32.ge_u
            if ;; label = @3
              local.get 4
              local.get 3
              i64.load align=4
              i64.store align=4
              local.get 4
              i32.const 8
              i32.add
              local.set 4
              local.get 3
              i32.const 8
              i32.add
              local.set 3
            end
            local.get 2
            i32.const 4
            i32.and
            if ;; label = @3
              local.get 4
              local.get 3
              i32.load
              i32.store
              local.get 4
              i32.const 4
              i32.add
              local.set 4
              local.get 3
              i32.const 4
              i32.add
              local.set 3
            end
            local.get 2
            i32.const 2
            i32.and
            if ;; label = @3
              local.get 4
              local.get 3
              i32.load16_u align=1
              i32.store16 align=1
              local.get 4
              i32.const 2
              i32.add
              local.set 4
              local.get 3
              i32.const 2
              i32.add
              local.set 3
            end
            local.get 2
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@1;)
            local.get 4
            local.get 3
            i32.load8_u
            i32.store8
            local.get 0
            return
          end
          block ;; label = @2
            block ;; label = @3
              block (result i32) ;; label = @4
                block ;; label = @5
                  local.get 5
                  i32.const 32
                  i32.ge_u
                  if ;; label = @6
                    block ;; label = @7
                      block ;; label = @8
                        local.get 1
                        i32.const 1
                        i32.sub
                        br_table 3 (;@5;) 0 (;@8;) 1 (;@7;) 7 (;@1;)
                      end
                      local.get 4
                      local.get 3
                      i32.load
                      i32.store16 align=1
                      local.get 4
                      local.get 3
                      i32.const 2
                      i32.add
                      i32.load align=2
                      i32.store offset=2
                      local.get 4
                      local.get 3
                      i32.const 6
                      i32.add
                      i64.load align=2
                      i64.store offset=6 align=4
                      local.get 3
                      i32.const 18
                      i32.add
                      local.set 1
                      i32.const 14
                      local.set 6
                      local.get 3
                      i32.const 14
                      i32.add
                      i32.load align=2
                      local.set 3
                      i32.const 14
                      local.set 5
                      local.get 4
                      i32.const 18
                      i32.add
                      br 3 (;@4;)
                    end
                    local.get 4
                    local.get 3
                    i32.load
                    i32.store8
                    local.get 4
                    local.get 3
                    i32.const 1
                    i32.add
                    i32.load align=1
                    i32.store offset=1
                    local.get 4
                    local.get 3
                    i32.const 5
                    i32.add
                    i64.load align=1
                    i64.store offset=5 align=4
                    local.get 3
                    i32.const 17
                    i32.add
                    local.set 1
                    i32.const 13
                    local.set 6
                    local.get 3
                    i32.const 13
                    i32.add
                    i32.load align=1
                    local.set 3
                    i32.const 15
                    local.set 5
                    local.get 4
                    i32.const 17
                    i32.add
                    br 2 (;@4;)
                  end
                  block (result i32) ;; label = @6
                    local.get 5
                    i32.const 16
                    i32.lt_u
                    if ;; label = @7
                      local.get 4
                      local.set 2
                      local.get 3
                      br 1 (;@6;)
                    end
                    local.get 4
                    local.get 3
                    i32.load8_u
                    i32.store8
                    local.get 4
                    local.get 3
                    i32.load offset=1 align=1
                    i32.store offset=1 align=1
                    local.get 4
                    local.get 3
                    i64.load offset=5 align=1
                    i64.store offset=5 align=1
                    local.get 4
                    local.get 3
                    i32.load16_u offset=13 align=1
                    i32.store16 offset=13 align=1
                    local.get 4
                    local.get 3
                    i32.load8_u offset=15
                    i32.store8 offset=15
                    local.get 4
                    i32.const 16
                    i32.add
                    local.set 2
                    local.get 3
                    i32.const 16
                    i32.add
                  end
                  local.set 1
                  local.get 5
                  i32.const 8
                  i32.and
                  br_if 2 (;@3;)
                  br 3 (;@2;)
                end
                local.get 4
                local.get 3
                i32.load
                local.tee 1
                i32.store8
                local.get 4
                local.get 1
                i32.const 16
                i32.shr_u
                i32.store8 offset=2
                local.get 4
                local.get 1
                i32.const 8
                i32.shr_u
                i32.store8 offset=1
                local.get 4
                local.get 3
                i32.const 3
                i32.add
                i32.load align=1
                i32.store offset=3
                local.get 4
                local.get 3
                i32.const 7
                i32.add
                i64.load align=1
                i64.store offset=7 align=4
                local.get 3
                i32.const 19
                i32.add
                local.set 1
                i32.const 15
                local.set 6
                local.get 3
                i32.const 15
                i32.add
                i32.load align=1
                local.set 3
                i32.const 13
                local.set 5
                local.get 4
                i32.const 19
                i32.add
              end
              local.set 2
              local.get 4
              local.get 6
              i32.add
              local.get 3
              i32.store
            end
            local.get 2
            local.get 1
            i64.load align=1
            i64.store align=1
            local.get 2
            i32.const 8
            i32.add
            local.set 2
            local.get 1
            i32.const 8
            i32.add
            local.set 1
          end
          local.get 5
          i32.const 4
          i32.and
          if ;; label = @2
            local.get 2
            local.get 1
            i32.load align=1
            i32.store align=1
            local.get 2
            i32.const 4
            i32.add
            local.set 2
            local.get 1
            i32.const 4
            i32.add
            local.set 1
          end
          local.get 5
          i32.const 2
          i32.and
          if ;; label = @2
            local.get 2
            local.get 1
            i32.load16_u align=1
            i32.store16 align=1
            local.get 2
            i32.const 2
            i32.add
            local.set 2
            local.get 1
            i32.const 2
            i32.add
            local.set 1
          end
          local.get 5
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@1;)
          local.get 2
          local.get 1
          i32.load8_u
          i32.store8
        end
        local.get 0
      )
      (func (;23;) (type 10) (param i32 i32 i32 i32 i32 i32) (result i32)
        (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 10
        global.set 0
        block (result i32) ;; label = @1
          local.get 1
          if ;; label = @2
            i32.const 43
            i32.const 1114112
            local.get 0
            i32.load offset=28
            local.tee 14
            i32.const 1
            i32.and
            local.tee 1
            select
            local.set 12
            local.get 1
            local.get 5
            i32.add
            br 1 (;@1;)
          end
          local.get 0
          i32.load offset=28
          local.set 14
          i32.const 45
          local.set 12
          local.get 5
          i32.const 1
          i32.add
        end
        local.set 13
        block ;; label = @1
          local.get 14
          i32.const 4
          i32.and
          i32.eqz
          if ;; label = @2
            i32.const 0
            local.set 2
            br 1 (;@1;)
          end
          block ;; label = @2
            block ;; label = @3
              local.get 3
              i32.const 16
              i32.lt_u
              br_if 0 (;@3;)
              local.get 3
              local.get 2
              i32.const 3
              i32.add
              i32.const -4
              i32.and
              local.get 2
              i32.sub
              local.tee 1
              i32.sub
              local.tee 6
              i32.const 4
              i32.lt_u
              br_if 0 (;@3;)
              local.get 2
              local.get 1
              call 125
              local.get 1
              local.get 2
              i32.add
              local.tee 1
              local.get 6
              i32.const -4
              i32.and
              i32.add
              local.get 6
              i32.const 3
              i32.and
              call 125
              i32.add
              local.set 9
              local.get 6
              i32.const 2
              i32.shr_u
              local.set 11
              loop ;; label = @4
                local.get 11
                i32.eqz
                br_if 2 (;@2;)
                local.get 1
                local.tee 6
                i32.const 192
                local.get 11
                local.get 11
                i32.const 192
                i32.ge_u
                select
                local.tee 15
                i32.const 252
                i32.and
                local.tee 16
                i32.const 2
                i32.shl
                i32.add
                local.set 17
                i32.const 0
                local.set 7
                local.get 6
                local.set 8
                loop ;; label = @5
                  block ;; label = @6
                    local.get 8
                    local.get 17
                    i32.ne
                    if ;; label = @7
                      i32.const 0
                      local.set 1
                      loop ;; label = @8
                        local.get 1
                        i32.const 16
                        i32.eq
                        br_if 2 (;@6;)
                        local.get 7
                        local.get 1
                        local.get 8
                        i32.add
                        i32.load
                        local.tee 7
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 7
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        i32.add
                        local.set 7
                        local.get 1
                        i32.const 4
                        i32.add
                        local.set 1
                        br 0 (;@8;)
                      end
                      unreachable
                    end
                    local.get 7
                    i32.const 8
                    i32.shr_u
                    i32.const 16711935
                    i32.and
                    local.get 7
                    i32.const 16711935
                    i32.and
                    i32.add
                    i32.const 65537
                    i32.mul
                    i32.const 16
                    i32.shr_u
                    local.get 9
                    i32.add
                    local.set 9
                    local.get 11
                    local.get 15
                    i32.sub
                    local.set 11
                    local.get 6
                    local.get 15
                    i32.const 2
                    i32.shl
                    i32.add
                    local.set 1
                    local.get 15
                    i32.const 3
                    i32.and
                    local.tee 8
                    i32.eqz
                    br_if 2 (;@4;)
                    local.get 8
                    i32.const 2
                    i32.shl
                    local.set 7
                    local.get 6
                    local.get 16
                    i32.const 2
                    i32.shl
                    i32.add
                    local.set 1
                    i32.const 0
                    local.set 6
                    loop ;; label = @7
                      local.get 7
                      i32.const 0
                      local.get 1
                      select
                      if ;; label = @8
                        local.get 6
                        local.get 1
                        i32.load
                        local.tee 6
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 6
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        i32.add
                        local.set 6
                        local.get 7
                        i32.const 4
                        i32.sub
                        local.set 7
                        local.get 1
                        i32.const 4
                        i32.add
                        local.set 1
                        br 1 (;@7;)
                      else
                        local.get 6
                        i32.const 8
                        i32.shr_u
                        i32.const 16711935
                        i32.and
                        local.get 6
                        i32.const 16711935
                        i32.and
                        i32.add
                        i32.const 65537
                        i32.mul
                        i32.const 16
                        i32.shr_u
                        local.get 9
                        i32.add
                        local.set 9
                        br 6 (;@2;)
                      end
                      unreachable
                    end
                    unreachable
                  end
                  local.get 8
                  i32.const 16
                  i32.add
                  local.set 8
                  br 0 (;@5;)
                end
                unreachable
              end
              unreachable
            end
            local.get 2
            local.get 3
            call 125
            local.set 9
          end
          local.get 9
          local.get 13
          i32.add
          local.set 13
        end
        block ;; label = @1
          local.get 0
          i32.load
          i32.eqz
          if ;; label = @2
            i32.const 1
            local.set 1
            local.get 0
            i32.load offset=20
            local.tee 6
            local.get 0
            i32.load offset=24
            local.tee 0
            local.get 12
            local.get 2
            local.get 3
            call 117
            br_if 1 (;@1;)
            local.get 6
            local.get 4
            local.get 5
            local.get 0
            i32.load offset=12
            call_indirect (type 1)
            local.set 1
            br 1 (;@1;)
          end
          local.get 13
          local.get 0
          i32.load offset=4
          local.tee 6
          i32.ge_u
          if ;; label = @2
            i32.const 1
            local.set 1
            local.get 0
            i32.load offset=20
            local.tee 6
            local.get 0
            i32.load offset=24
            local.tee 0
            local.get 12
            local.get 2
            local.get 3
            call 117
            br_if 1 (;@1;)
            local.get 6
            local.get 4
            local.get 5
            local.get 0
            i32.load offset=12
            call_indirect (type 1)
            local.set 1
            br 1 (;@1;)
          end
          local.get 14
          i32.const 8
          i32.and
          if ;; label = @2
            local.get 0
            i32.load offset=16
            local.set 9
            local.get 0
            i32.const 48
            i32.store offset=16
            local.get 0
            i32.load8_u offset=32
            local.set 11
            i32.const 1
            local.set 1
            local.get 0
            i32.const 1
            i32.store8 offset=32
            local.get 0
            i32.load offset=20
            local.tee 8
            local.get 0
            i32.load offset=24
            local.tee 7
            local.get 12
            local.get 2
            local.get 3
            call 117
            br_if 1 (;@1;)
            local.get 10
            i32.const 8
            i32.add
            local.get 0
            local.get 6
            local.get 13
            i32.sub
            call 76
            local.get 10
            i32.load offset=8
            local.tee 2
            i32.const 1114112
            i32.eq
            br_if 1 (;@1;)
            local.get 10
            i32.load offset=12
            local.set 3
            local.get 8
            local.get 4
            local.get 5
            local.get 7
            i32.load offset=12
            call_indirect (type 1)
            br_if 1 (;@1;)
            local.get 2
            local.get 3
            local.get 8
            local.get 7
            call 112
            br_if 1 (;@1;)
            local.get 0
            local.get 11
            i32.store8 offset=32
            local.get 0
            local.get 9
            i32.store offset=16
            i32.const 0
            local.set 1
            br 1 (;@1;)
          end
          local.get 10
          local.get 0
          local.get 6
          local.get 13
          i32.sub
          call 76
          i32.const 1
          local.set 1
          local.get 10
          i32.load
          local.tee 8
          i32.const 1114112
          i32.eq
          br_if 0 (;@1;)
          local.get 10
          i32.load offset=4
          local.set 7
          local.get 0
          i32.load offset=20
          local.tee 6
          local.get 0
          i32.load offset=24
          local.tee 0
          local.get 12
          local.get 2
          local.get 3
          call 117
          br_if 0 (;@1;)
          local.get 6
          local.get 4
          local.get 5
          local.get 0
          i32.load offset=12
          call_indirect (type 1)
          br_if 0 (;@1;)
          local.get 8
          local.get 7
          local.get 6
          local.get 0
          call 112
          local.set 1
        end
        local.get 10
        i32.const 16
        i32.add
        global.set 0
        local.get 1
      )
      (func (;24;) (type 4) (param i32 i32)
        (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
        global.get 0
        i32.const 48
        i32.sub
        local.tee 3
        global.set 0
        local.get 1
        i32.load
        local.tee 8
        local.get 1
        i32.load offset=8
        local.tee 6
        i32.const 2
        i32.shl
        local.tee 4
        i32.add
        local.set 11
        loop ;; label = @1
          local.get 2
          local.get 4
          i32.eq
          local.tee 5
          i32.eqz
          if ;; label = @2
            local.get 2
            local.get 8
            i32.add
            local.get 2
            i32.const 4
            i32.add
            local.set 2
            i32.load
            i32.load
            i32.eqz
            br_if 1 (;@1;)
          end
        end
        local.get 6
        i32.const 2
        i32.shl
        local.set 4
        i32.const 0
        local.set 2
        block ;; label = @1
          block ;; label = @2
            block ;; label = @3
              block ;; label = @4
                loop ;; label = @5
                  local.get 2
                  local.get 4
                  i32.eq
                  br_if 1 (;@4;)
                  local.get 2
                  local.get 8
                  i32.add
                  local.get 2
                  i32.const 4
                  i32.add
                  local.set 2
                  i32.load
                  i32.load
                  br_if 0 (;@5;)
                end
                i32.const 4
                local.set 5
                local.get 6
                if ;; label = @5
                  local.get 6
                  i32.const 536870911
                  i32.gt_u
                  br_if 2 (;@3;)
                  local.get 6
                  i32.const 2
                  i32.shl
                  local.tee 4
                  i32.const 0
                  i32.lt_s
                  br_if 2 (;@3;)
                  i32.const 4
                  local.get 4
                  call 172
                  local.tee 5
                  i32.eqz
                  br_if 2 (;@3;)
                end
                i32.const 0
                local.set 2
                local.get 5
                local.set 4
                loop ;; label = @5
                  local.get 2
                  local.get 6
                  i32.eq
                  br_if 3 (;@2;)
                  local.get 4
                  local.get 2
                  i32.store
                  local.get 4
                  i32.const 4
                  i32.add
                  local.set 4
                  local.get 2
                  i32.const 1
                  i32.add
                  local.set 2
                  br 0 (;@5;)
                end
                unreachable
              end
              local.get 5
              i32.eqz
              if ;; label = @4
                block ;; label = @5
                  local.get 6
                  i32.eqz
                  if ;; label = @6
                    i32.const 0
                    local.set 6
                    i32.const 4
                    local.set 5
                    br 1 (;@5;)
                  end
                  i32.const 4
                  local.get 6
                  i32.const 2
                  i32.shl
                  call 172
                  local.tee 5
                  i32.eqz
                  br_if 2 (;@3;)
                  i32.const 0
                  local.set 2
                  local.get 6
                  local.set 4
                  loop ;; label = @6
                    local.get 2
                    local.get 8
                    i32.add
                    i32.load
                    local.tee 7
                    i32.load
                    i32.eqz
                    br_if 3 (;@3;)
                    local.get 2
                    local.get 5
                    i32.add
                    local.get 7
                    i32.const 4
                    i32.add
                    i32.store
                    local.get 2
                    i32.const 4
                    i32.add
                    local.set 2
                    local.get 4
                    i32.const 1
                    i32.sub
                    local.tee 4
                    br_if 0 (;@6;)
                  end
                end
                local.get 0
                local.get 5
                local.get 6
                call 68
                local.get 5
                local.get 6
                call 171
                br 3 (;@1;)
              end
              i32.const 0
              local.set 7
              local.get 3
              i32.const 0
              i32.store offset=20
              local.get 3
              i64.const 4
              i64.store offset=12 align=4
              local.get 3
              i32.const 0
              i32.store offset=32
              local.get 3
              i64.const 4
              i64.store offset=24 align=4
              i32.const 4
              local.set 9
              local.get 8
              local.set 2
              i32.const 0
              local.set 4
              loop ;; label = @4
                local.get 4
                local.set 5
                local.get 2
                local.get 11
                i32.eq
                if ;; label = @5
                  local.get 3
                  i32.const 36
                  i32.add
                  local.get 3
                  i32.load offset=12
                  local.tee 9
                  local.get 7
                  call 68
                  local.get 3
                  i32.load offset=40
                  local.set 10
                  local.get 3
                  i32.load offset=24
                  local.set 7
                  local.get 3
                  i32.load offset=32
                  local.set 5
                  local.get 3
                  i32.load offset=44
                  local.tee 11
                  local.set 4
                  local.get 3
                  i32.load offset=36
                  local.tee 12
                  local.set 2
                  loop ;; label = @6
                    local.get 4
                    if ;; label = @7
                      local.get 5
                      local.get 2
                      i32.load
                      local.tee 13
                      i32.le_u
                      br_if 4 (;@3;)
                      local.get 2
                      local.get 7
                      local.get 13
                      i32.const 2
                      i32.shl
                      i32.add
                      i32.load
                      i32.store
                      local.get 4
                      i32.const 1
                      i32.sub
                      local.set 4
                      local.get 2
                      i32.const 4
                      i32.add
                      local.set 2
                      br 1 (;@6;)
                    end
                  end
                  i32.const 0
                  local.set 5
                  i32.const 4
                  i32.const 0
                  call 171
                  local.get 3
                  local.get 11
                  i32.store offset=44
                  local.get 3
                  local.get 10
                  i32.store offset=40
                  local.get 3
                  local.get 12
                  i32.store offset=36
                  i32.const 4
                  i32.const 0
                  call 171
                  local.get 6
                  i32.const 2
                  i32.shl
                  local.set 2
                  local.get 8
                  local.set 4
                  loop ;; label = @6
                    local.get 2
                    i32.eqz
                    if ;; label = @7
                      local.get 0
                      local.get 3
                      i64.load offset=36 align=4
                      i64.store align=4
                      local.get 0
                      i32.const 8
                      i32.add
                      local.get 3
                      i32.const 44
                      i32.add
                      i32.load
                      i32.store
                      local.get 7
                      local.get 3
                      i32.load offset=28
                      call 171
                      local.get 9
                      local.get 3
                      i32.load offset=16
                      call 171
                      br 6 (;@1;)
                    end
                    local.get 4
                    i32.load
                    i32.load
                    i32.eqz
                    if ;; label = @7
                      local.get 3
                      i32.const 36
                      i32.add
                      local.get 5
                      call 116
                    end
                    local.get 4
                    i32.const 4
                    i32.add
                    local.set 4
                    local.get 5
                    i32.const 1
                    i32.add
                    local.set 5
                    local.get 2
                    i32.const 4
                    i32.sub
                    local.set 2
                    br 0 (;@6;)
                  end
                  unreachable
                end
                local.get 5
                i32.const 1
                i32.add
                local.set 4
                local.get 2
                i32.load
                local.set 10
                local.get 2
                i32.const 4
                i32.add
                local.set 2
                local.get 10
                i32.load
                i32.eqz
                br_if 0 (;@4;)
                local.get 3
                i32.load offset=16
                local.get 7
                i32.eq
                if (result i32) ;; label = @5
                  local.get 3
                  i32.const 12
                  i32.add
                  local.get 7
                  call 58
                  local.get 3
                  i32.load offset=12
                  local.set 9
                  local.get 3
                  i32.load offset=20
                else
                  local.get 7
                end
                i32.const 2
                i32.shl
                local.get 9
                i32.add
                local.get 10
                i32.const 4
                i32.add
                i32.store
                local.get 3
                local.get 3
                i32.load offset=20
                i32.const 1
                i32.add
                local.tee 7
                i32.store offset=20
                local.get 3
                i32.const 24
                i32.add
                local.get 5
                call 116
                br 0 (;@4;)
              end
              unreachable
            end
            unreachable
          end
          local.get 0
          local.get 6
          i32.store offset=8
          local.get 0
          local.get 6
          i32.store offset=4
          local.get 0
          local.get 5
          i32.store
        end
        local.get 8
        local.get 1
        i32.load offset=4
        call 171
        local.get 3
        i32.const 48
        i32.add
        global.set 0
      )
      (func (;25;) (type 9) (param i32 i32 i32)
        (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
        global.get 0
        i32.const 48
        i32.sub
        local.tee 5
        global.set 0
        local.get 1
        local.get 2
        i32.const 1048590
        i32.const 2
        call 152
        if ;; label = @1
          local.get 5
          i32.const 40
          i32.add
          local.get 1
          local.get 2
          i32.const 2
          call 103
          local.get 5
          i32.load offset=44
          local.set 2
          local.get 5
          i32.load offset=40
          local.set 1
        end
        i32.const 1053892
        i32.load
        i32.const 0
        i32.const 1053884
        i32.load
        local.tee 6
        select
        local.set 11
        local.get 6
        i32.const 0
        i32.ne
        local.set 12
        i32.const 1053888
        i32.load
        local.set 9
        block ;; label = @1
          block ;; label = @2
            block ;; label = @3
              loop ;; label = @4
                block ;; label = @5
                  local.get 11
                  if ;; label = @6
                    local.get 12
                    local.get 8
                    i32.eqz
                    i32.and
                    i32.eqz
                    if ;; label = @7
                      local.get 12
                      i32.eqz
                      br_if 5 (;@2;)
                      br 2 (;@5;)
                    end
                    local.get 6
                    local.set 8
                    loop ;; label = @7
                      local.get 9
                      if ;; label = @8
                        local.get 9
                        i32.const 1
                        i32.sub
                        local.set 9
                        local.get 8
                        i32.load offset=184
                        local.set 8
                        br 1 (;@7;)
                      else
                        i32.const 0
                        local.set 9
                        i32.const 0
                        local.set 6
                        br 3 (;@5;)
                      end
                      unreachable
                    end
                    unreachable
                  end
                  local.get 0
                  i32.const 0
                  i32.store
                  br 4 (;@1;)
                end
                local.get 11
                i32.const 1
                i32.sub
                local.set 11
                local.get 9
                local.set 10
                local.get 8
                local.set 3
                loop ;; label = @5
                  local.get 3
                  i32.load16_u offset=182
                  local.get 10
                  i32.le_u
                  if ;; label = @6
                    local.get 3
                    i32.load
                    local.tee 8
                    i32.eqz
                    br_if 4 (;@2;)
                    local.get 6
                    i32.const 1
                    i32.add
                    local.set 6
                    local.get 3
                    i32.load16_u offset=180
                    local.set 10
                    local.get 8
                    local.set 3
                    br 1 (;@5;)
                  end
                end
                local.get 10
                i32.const 1
                i32.add
                local.set 9
                block ;; label = @5
                  local.get 6
                  i32.eqz
                  if ;; label = @6
                    local.get 3
                    local.set 8
                    br 1 (;@5;)
                  end
                  local.get 3
                  local.get 9
                  i32.const 2
                  i32.shl
                  i32.add
                  i32.const 184
                  i32.add
                  local.set 4
                  i32.const 0
                  local.set 9
                  i32.const 0
                  local.set 7
                  loop ;; label = @6
                    local.get 4
                    i32.load
                    local.tee 8
                    i32.const 184
                    i32.add
                    local.set 4
                    local.get 6
                    local.get 7
                    i32.const 1
                    i32.add
                    local.tee 7
                    i32.ne
                    br_if 0 (;@6;)
                  end
                end
                block ;; label = @5
                  local.get 3
                  local.get 10
                  i32.const 12
                  i32.mul
                  i32.add
                  local.tee 6
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 7
                  local.get 6
                  i32.const 12
                  i32.add
                  i32.load
                  local.tee 4
                  i32.const 1048590
                  i32.const 2
                  call 152
                  i32.eqz
                  if ;; label = @6
                    local.get 7
                    local.get 4
                    i32.const 1048592
                    i32.const 1
                    call 152
                    i32.eqz
                    br_if 1 (;@5;)
                    local.get 5
                    i32.const 32
                    i32.add
                    local.get 7
                    local.get 4
                    i32.const 1
                    call 118
                    local.get 5
                    i32.load offset=36
                    local.set 4
                    local.get 5
                    i32.load offset=32
                    local.set 7
                    br 1 (;@5;)
                  end
                  local.get 5
                  i32.const 24
                  i32.add
                  local.get 7
                  local.get 4
                  i32.const 2
                  call 118
                  local.get 5
                  i32.load offset=28
                  local.set 4
                  local.get 5
                  i32.load offset=24
                  local.set 7
                end
                i32.const 0
                local.set 6
                i32.const 1
                local.set 12
                local.get 1
                local.get 2
                local.get 7
                local.get 4
                call 152
                i32.eqz
                br_if 0 (;@4;)
                local.get 4
                i32.eqz
                if ;; label = @5
                  local.get 2
                  i32.eqz
                  br_if 3 (;@2;)
                  local.get 1
                  i32.load8_u
                  i32.const 47
                  i32.eq
                  br_if 1 (;@4;)
                  local.get 3
                  local.get 10
                  i32.const 2
                  i32.shl
                  i32.add
                  i32.const 136
                  i32.add
                  i32.load
                  local.set 3
                  local.get 0
                  local.get 2
                  i32.store offset=8
                  local.get 0
                  local.get 1
                  i32.store offset=4
                  local.get 0
                  local.get 3
                  i32.const 8
                  i32.add
                  i32.store
                  br 4 (;@1;)
                end
                block ;; label = @5
                  local.get 7
                  local.get 4
                  i32.const 1048593
                  i32.const 1
                  call 186
                  i32.eqz
                  br_if 0 (;@5;)
                  local.get 2
                  i32.eqz
                  br_if 3 (;@2;)
                  local.get 1
                  i32.load8_u
                  i32.const 47
                  i32.ne
                  br_if 0 (;@5;)
                  local.get 3
                  local.get 10
                  i32.const 2
                  i32.shl
                  i32.add
                  i32.const 136
                  i32.add
                  i32.load
                  local.set 3
                  local.get 5
                  i32.const 8
                  i32.add
                  local.get 1
                  local.get 2
                  i32.const 1
                  call 103
                  local.get 0
                  local.get 5
                  i64.load offset=8
                  i64.store offset=4 align=4
                  local.get 0
                  local.get 3
                  i32.const 8
                  i32.add
                  i32.store
                  br 4 (;@1;)
                end
                local.get 2
                local.get 4
                i32.eq
                br_if 1 (;@3;)
                local.get 2
                local.get 4
                i32.le_u
                br_if 2 (;@2;)
                local.get 1
                local.get 4
                i32.add
                i32.load8_u
                i32.const 47
                i32.ne
                br_if 0 (;@4;)
              end
              local.get 3
              local.get 10
              i32.const 2
              i32.shl
              i32.add
              i32.const 136
              i32.add
              i32.load
              local.set 3
              local.get 5
              i32.const 16
              i32.add
              local.get 1
              local.get 2
              local.get 4
              i32.const 1
              i32.add
              call 103
              local.get 0
              local.get 5
              i64.load offset=16
              i64.store offset=4 align=4
              local.get 0
              local.get 3
              i32.const 8
              i32.add
              i32.store
              br 2 (;@1;)
            end
            local.get 3
            local.get 10
            i32.const 2
            i32.shl
            i32.add
            i32.const 136
            i32.add
            i32.load
            local.set 1
            local.get 0
            i32.const 0
            i32.store offset=8
            local.get 0
            i32.const 1051032
            i32.store offset=4
            local.get 0
            local.get 1
            i32.const 8
            i32.add
            i32.store
            br 1 (;@1;)
          end
          unreachable
        end
        local.get 5
        i32.const 48
        i32.add
        global.set 0
      )
      (func (;26;) (type 6) (param i32 i32 i32 i32)
        (local i32 i32 i32 i32 i32 i32 i32 i32)
        global.get 0
        i32.const -64
        i32.add
        local.tee 4
        global.set 0
        block ;; label = @1
          local.get 3
          if ;; label = @2
            local.get 4
            i32.const 44
            i32.add
            local.get 3
            i32.store
            local.get 4
            local.get 3
            i32.store offset=52
            local.get 4
            local.get 2
            i32.store offset=40
            local.get 4
            i64.const 201863462913
            i64.store offset=56 align=4
            local.get 4
            i32.const 47
            i32.store offset=36
            local.get 4
            i32.const 60
            i32.add
            local.set 9
            block (result i32) ;; label = @3
              block ;; label = @4
                block ;; label = @5
                  block ;; label = @6
                    loop ;; label = @7
                      local.get 3
                      local.get 6
                      i32.lt_u
                      local.tee 8
                      br_if 1 (;@6;)
                      local.get 2
                      local.get 6
                      i32.add
                      local.set 5
                      block ;; label = @8
                        local.get 3
                        local.get 6
                        i32.sub
                        local.tee 7
                        i32.const 7
                        i32.le_u
                        if ;; label = @9
                          i32.const 0
                          local.get 5
                          local.get 8
                          select
                          local.set 10
                          i32.const 0
                          local.set 8
                          i32.const 0
                          local.set 5
                          loop ;; label = @10
                            local.get 5
                            local.get 7
                            i32.eq
                            if ;; label = @11
                              local.get 7
                              local.set 5
                              br 3 (;@8;)
                            end
                            local.get 5
                            local.get 10
                            i32.add
                            i32.load8_u
                            i32.const 47
                            i32.eq
                            if ;; label = @11
                              i32.const 1
                              local.set 8
                              br 3 (;@8;)
                            else
                              local.get 5
                              i32.const 1
                              i32.add
                              local.set 5
                              br 1 (;@10;)
                            end
                            unreachable
                          end
                          unreachable
                        end
                        local.get 4
                        i32.const 24
                        i32.add
                        i32.const 47
                        local.get 5
                        local.get 7
                        call 49
                        local.get 4
                        i32.load offset=28
                        local.set 5
                        local.get 4
                        i32.load offset=24
                        local.set 8
                      end
                      local.get 8
                      i32.const 1
                      i32.ne
                      br_if 1 (;@6;)
                      local.get 4
                      local.get 5
                      local.get 6
                      i32.add
                      local.tee 7
                      i32.const 1
                      i32.add
                      local.tee 6
                      i32.store offset=48
                      local.get 6
                      i32.eqz
                      local.get 3
                      local.get 6
                      i32.lt_u
                      i32.or
                      br_if 0 (;@7;)
                      local.get 2
                      local.get 7
                      i32.add
                      local.tee 5
                      i32.const 1
                      local.get 9
                      i32.const 1
                      call 186
                      i32.eqz
                      br_if 0 (;@7;)
                    end
                    local.get 7
                    i32.eqz
                    br_if 2 (;@4;)
                    local.get 3
                    local.get 7
                    i32.gt_u
                    br_if 1 (;@5;)
                    local.get 3
                    local.get 7
                    i32.eq
                    br_if 2 (;@4;)
                    br 5 (;@1;)
                  end
                  i32.const 1051032
                  local.set 9
                  local.get 3
                  local.set 7
                  i32.const 0
                  br 2 (;@3;)
                end
                local.get 5
                i32.load8_s
                i32.const -65
                i32.le_s
                br_if 3 (;@1;)
              end
              local.get 4
              i32.const 16
              i32.add
              local.get 2
              local.get 3
              local.get 6
              call 103
              local.get 4
              i32.load offset=16
              local.set 9
              local.get 4
              i32.load offset=20
            end
            local.set 8
            local.get 4
            i32.const 36
            i32.add
            local.get 1
            call 77
            block ;; label = @3
              block ;; label = @4
                block ;; label = @5
                  local.get 4
                  i32.load offset=36
                  local.tee 10
                  if ;; label = @6
                    i32.const 0
                    local.set 5
                    local.get 4
                    i32.load offset=40
                    local.tee 1
                    local.set 6
                    loop ;; label = @7
                      local.get 1
                      local.get 5
                      i32.le_u
                      br_if 2 (;@5;)
                      local.get 4
                      i32.const 8
                      i32.add
                      local.get 10
                      local.get 6
                      i32.const 1
                      i32.shr_u
                      local.get 5
                      i32.add
                      local.tee 3
                      i32.const 4
                      i32.shl
                      i32.add
                      local.tee 6
                      i32.load
                      call 110
                      block ;; label = @8
                        local.get 4
                        i32.load offset=8
                        local.get 4
                        i32.load offset=12
                        local.get 2
                        local.get 7
                        call 126
                        i32.const 255
                        i32.and
                        local.tee 11
                        i32.const 1
                        i32.eq
                        if ;; label = @9
                          local.get 3
                          local.set 1
                          br 1 (;@8;)
                        end
                        local.get 11
                        i32.const 255
                        i32.ne
                        br_if 4 (;@4;)
                        local.get 3
                        i32.const 1
                        i32.add
                        local.set 5
                      end
                      local.get 1
                      local.get 5
                      i32.sub
                      local.set 6
                      br 0 (;@7;)
                    end
                    unreachable
                  end
                  local.get 4
                  i32.load8_u offset=40
                  local.set 1
                  local.get 0
                  i32.const 1
                  i32.store8
                  local.get 0
                  local.get 1
                  i32.store8 offset=1
                  br 2 (;@3;)
                end
                local.get 0
                i32.const 5121
                i32.store16
                br 1 (;@3;)
              end
              local.get 8
              if ;; label = @4
                local.get 0
                local.get 6
                local.get 9
                local.get 8
                call 26
                br 1 (;@3;)
              end
              local.get 0
              i32.const 0
              i32.store8
              local.get 0
              local.get 6
              i32.store offset=4
            end
            local.get 4
            i32.const -64
            i32.sub
            global.set 0
            return
          end
          unreachable
        end
        local.get 2
        local.get 3
        i32.const 0
        local.get 7
        call 182
        unreachable
      )
      (func (;27;) (type 8) (param i32 i32 i32 i32) (result i32)
        (local i32 i32 i64 i64 i64 i64 i64 i64)
        global.get 0
        i32.const 112
        i32.sub
        local.tee 4
        global.set 0
        call 176
        block ;; label = @1
          block ;; label = @2
            block ;; label = @3
              local.get 0
              i32.load
              local.tee 5
              i32.const 2
              i32.eq
              br_if 0 (;@3;)
              block (result i64) ;; label = @4
                block (result i32) ;; label = @5
                  block ;; label = @6
                    block ;; label = @7
                      block ;; label = @8
                        block ;; label = @9
                          local.get 5
                          i32.eqz
                          if ;; label = @10
                            local.get 4
                            i32.const 16
                            i32.add
                            local.get 0
                            i32.load offset=4
                            local.get 2
                            local.get 3
                            call 26
                            local.get 4
                            i32.load8_u offset=16
                            br_if 1 (;@9;)
                            local.get 4
                            i32.load offset=20
                            local.tee 0
                            i32.load offset=4
                            local.tee 5
                            i32.const 3
                            i32.sub
                            i32.const 2
                            i32.lt_u
                            br_if 2 (;@8;)
                            local.get 4
                            i32.const 16
                            i32.add
                            local.get 0
                            call 60
                            local.get 4
                            i32.load8_u offset=16
                            br_if 1 (;@9;)
                            i32.const 3
                            i32.const 6
                            local.get 5
                            i32.const 6
                            i32.and
                            i32.const 2
                            i32.eq
                            select
                            local.set 0
                            local.get 4
                            i64.load offset=24
                            local.set 7
                            i64.const 0
                            br 6 (;@4;)
                          end
                          local.get 1
                          i32.const 255
                          i32.and
                          i32.const 2
                          i32.ge_u
                          br_if 6 (;@3;)
                          local.get 4
                          i32.const 16
                          i32.add
                          local.get 0
                          i32.load offset=4
                          i32.load offset=8
                          local.get 1
                          local.get 2
                          local.get 3
                          call 39
                          local.get 4
                          i32.load8_u offset=16
                          local.set 0
                          local.get 4
                          i64.load offset=88
                          local.tee 6
                          i64.const 2
                          i64.eq
                          br_if 2 (;@7;)
                          br 7 (;@2;)
                        end
                        local.get 4
                        i32.load8_u offset=17
                        br 3 (;@5;)
                      end
                      local.get 4
                      i32.const 8
                      i32.add
                      local.get 0
                      i32.const 8
                      i32.add
                      i32.load
                      call 110
                      local.get 4
                      i32.const 16
                      i32.add
                      local.get 4
                      i32.load offset=8
                      local.get 4
                      i32.load offset=12
                      call 25
                      local.get 4
                      i32.load offset=16
                      local.tee 0
                      i32.eqz
                      br_if 1 (;@6;)
                      local.get 1
                      i32.const 255
                      i32.and
                      i32.const 2
                      i32.ge_u
                      br_if 4 (;@3;)
                      local.get 4
                      i32.const 16
                      i32.add
                      local.get 0
                      i32.load
                      local.get 1
                      local.get 4
                      i32.load offset=20
                      local.get 4
                      i32.const 24
                      i32.add
                      i32.load
                      call 39
                      local.get 4
                      i32.load8_u offset=16
                      local.set 0
                      local.get 4
                      i64.load offset=88
                      local.tee 6
                      i64.const 2
                      i64.eq
                      br_if 0 (;@7;)
                      br 5 (;@2;)
                    end
                    i64.const 2
                    br 2 (;@4;)
                  end
                  i32.const 20
                end
                local.set 0
                i64.const 2
              end
              local.set 6
              br 2 (;@1;)
            end
            unreachable
          end
          local.get 4
          i32.const 104
          i32.add
          i32.load
          local.set 5
          local.get 4
          i64.load offset=96
          local.set 11
          local.get 4
          i32.load offset=80
          local.set 1
          local.get 4
          i64.load offset=72
          local.set 10
          local.get 4
          i64.load32_u offset=64
          local.set 8
          local.get 4
          i64.load offset=32
          local.set 7
          local.get 4
          i64.load offset=24
          local.set 9
        end
        local.get 2
        local.get 3
        call 181
        block ;; label = @1
          local.get 6
          i64.const 2
          i64.ne
          if ;; label = @2
            i32.const 1053984
            local.get 7
            i64.store
            i32.const 1053976
            local.get 9
            i64.store
            i32.const 1053968
            local.get 0
            i32.store8
            i32.const 1053960
            i32.const 0
            i32.store8
            block ;; label = @3
              local.get 8
              i64.eqz
              if ;; label = @4
                i32.const 1054016
                i32.const 0
                i32.store8
                i32.const 1053992
                i32.const 0
                i32.store8
                br 1 (;@3;)
              end
              i32.const 1054032
              local.get 1
              i32.store
              i32.const 1054024
              local.get 10
              i64.store
              i32.const 1054016
              i32.const 1
              i32.store8
              i32.const 1054008
              local.get 1
              i32.store
              i32.const 1054000
              local.get 10
              i64.store
              i32.const 1053992
              i32.const 1
              i32.store8
            end
            local.get 6
            i64.eqz
            if ;; label = @3
              i32.const 1054040
              i32.const 0
              i32.store8
              br 2 (;@1;)
            end
            i32.const 1054056
            local.get 5
            i32.store
            i32.const 1054048
            local.get 11
            i64.store
            i32.const 1054040
            i32.const 1
            i32.store8
            br 1 (;@1;)
          end
          i32.const 1053968
          local.get 0
          i32.store8
          i32.const 1053960
          i32.const 1
          i32.store8
        end
        local.get 4
        i32.const 112
        i32.add
        global.set 0
        i32.const 1053960
      )
      (func (;28;) (type 14) (param i32 i32 i64)
        (local i32 i32 i32 i32 i32 i64)
        global.get 0
        i32.const 48
        i32.sub
        local.tee 6
        global.set 0
        block ;; label = @1
          block ;; label = @2
            block ;; label = @3
              block ;; label = @4
                block ;; label = @5
                  block ;; label = @6
                    local.get 1
                    i32.load
                    i32.const 1
                    i32.sub
                    br_table 1 (;@5;) 2 (;@4;) 3 (;@3;) 0 (;@6;)
                  end
                  local.get 0
                  i32.const 0
                  i32.store offset=8
                  local.get 0
                  i64.const 1
                  i64.store align=4
                  br 4 (;@1;)
                end
                local.get 0
                i64.const 4294967296
                i64.store align=4
                br 3 (;@1;)
              end
              block ;; label = @4
                block ;; label = @5
                  block ;; label = @6
                    block ;; label = @7
                      local.get 1
                      i32.load offset=4
                      local.tee 4
                      i32.load offset=4
                      i32.const 1
                      i32.sub
                      br_table 3 (;@4;) 0 (;@7;) 0 (;@7;) 1 (;@6;) 2 (;@5;)
                    end
                    local.get 0
                    i32.const 8
                    i32.add
                    i64.const 3584
                    call 175
                    i32.store
                    local.get 0
                    i64.const 0
                    i64.store align=4
                    br 5 (;@1;)
                  end
                  unreachable
                end
                local.get 4
                i32.const 12
                i32.add
                i32.load
                local.tee 5
                local.get 1
                i64.load offset=8
                local.tee 8
                i32.wrap_i64
                local.tee 3
                i32.eq
                br_if 2 (;@2;)
                local.get 3
                local.get 5
                i32.le_u
                if ;; label = @5
                  local.get 1
                  local.get 8
                  local.get 5
                  local.get 3
                  i32.sub
                  local.tee 1
                  local.get 2
                  i32.wrap_i64
                  local.tee 5
                  local.get 1
                  local.get 5
                  i32.lt_u
                  select
                  local.tee 1
                  i64.extend_i32_u
                  i64.add
                  i64.store offset=8
                  local.get 4
                  i32.load offset=8
                  local.set 4
                  local.get 6
                  i32.const 8
                  i32.add
                  local.get 1
                  call 92
                  local.get 6
                  i32.load offset=12
                  local.set 5
                  local.get 6
                  i32.load offset=8
                  local.get 3
                  local.get 4
                  i32.add
                  local.get 1
                  call 22
                  local.set 4
                  local.get 0
                  local.get 1
                  i32.store offset=8
                  local.get 0
                  local.get 5
                  i32.store offset=4
                  local.get 0
                  local.get 4
                  i32.store
                  br 4 (;@1;)
                end
                local.get 0
                i32.const 8
                i32.add
                i64.const 8704
                call 175
                i32.store
                local.get 0
                i64.const 0
                i64.store align=4
                br 3 (;@1;)
              end
              local.get 4
              i32.const 12
              i32.add
              i32.load
              local.tee 3
              local.get 1
              i32.load offset=8
              local.tee 5
              i32.le_u
              if ;; label = @4
                local.get 0
                i64.const 4294967296
                i64.store align=4
                br 3 (;@1;)
              end
              local.get 3
              local.get 5
              i32.sub
              local.tee 3
              local.get 2
              i32.wrap_i64
              local.tee 7
              local.get 3
              local.get 7
              i32.lt_u
              select
              local.tee 3
              local.get 5
              local.get 4
              i32.load offset=8
              i32.add
              i32.add
              local.set 4
              local.get 6
              i32.const 16
              i32.add
              local.get 3
              call 92
              local.get 6
              i32.load offset=20
              local.set 5
              local.get 6
              i32.load offset=16
              local.get 4
              local.get 3
              call 22
              local.set 7
              local.get 4
              call 17
              local.get 0
              local.get 3
              i32.store offset=8
              local.get 0
              local.get 5
              i32.store offset=4
              local.get 0
              local.get 7
              i32.store
              local.get 1
              local.get 1
              i64.load offset=8
              local.get 3
              i64.extend_i32_u
              i64.add
              i64.store offset=8
              br 2 (;@1;)
            end
            local.get 1
            i32.load offset=4
            drop
            unreachable
          end
          local.get 0
          i64.const 4294967296
          i64.store align=4
        end
        local.get 6
        i32.const 48
        i32.add
        global.set 0
      )
      (func (;29;) (type 5) (result i32)
        global.get 0
        i32.const 32
        i32.sub
        global.set 0
        call 176
        unreachable
      )
      (func (;30;) (type 1) (param i32 i32 i32) (result i32)
        (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
        global.get 0
        i32.const -64
        i32.add
        local.tee 3
        global.set 0
        local.get 3
        i32.const 0
        i32.store16 offset=56
        local.get 3
        local.get 2
        i32.store offset=52
        local.get 3
        i32.const 0
        i32.store offset=48
        local.get 3
        i64.const 42949672961
        i64.store offset=40 align=4
        local.get 3
        local.get 2
        i32.store offset=36
        local.get 3
        i32.const 0
        i32.store offset=32
        local.get 3
        local.get 2
        i32.store offset=28
        local.get 3
        local.get 1
        i32.store offset=24
        local.get 3
        i32.const 10
        i32.store offset=20
        local.get 0
        i32.load offset=4
        local.set 11
        local.get 0
        i32.load
        local.set 7
        local.get 0
        i32.load offset=8
        local.set 8
        local.get 3
        i32.const 44
        i32.add
        local.set 9
        block (result i32) ;; label = @1
          loop ;; label = @2
            block ;; label = @3
              block ;; label = @4
                local.get 3
                i32.load8_u offset=57
                i32.eqz
                if ;; label = @5
                  local.get 3
                  i32.load offset=24
                  local.set 4
                  block ;; label = @6
                    local.get 3
                    i32.load offset=36
                    local.tee 6
                    local.get 3
                    i32.load offset=28
                    local.tee 12
                    i32.gt_u
                    br_if 0 (;@6;)
                    local.get 3
                    i32.load offset=40
                    local.tee 0
                    local.get 9
                    i32.add
                    i32.const 1
                    i32.sub
                    local.set 13
                    local.get 3
                    i32.load offset=32
                    local.set 2
                    block ;; label = @7
                      loop ;; label = @8
                        local.get 2
                        local.get 6
                        i32.gt_u
                        br_if 2 (;@6;)
                        local.get 2
                        local.get 4
                        i32.add
                        local.set 1
                        local.get 13
                        i32.load8_u
                        local.set 5
                        block (result i32) ;; label = @9
                          local.get 6
                          local.get 2
                          i32.sub
                          local.tee 10
                          i32.const 8
                          i32.ge_u
                          if ;; label = @10
                            local.get 3
                            i32.const 8
                            i32.add
                            local.get 5
                            local.get 1
                            local.get 10
                            call 49
                            local.get 3
                            i32.load offset=12
                            local.set 5
                            local.get 3
                            i32.load offset=8
                            br 1 (;@9;)
                          end
                          local.get 3
                          local.get 5
                          local.get 1
                          local.get 10
                          call 100
                          local.get 3
                          i32.load offset=4
                          local.set 5
                          local.get 3
                          i32.load
                        end
                        i32.const 1
                        i32.ne
                        br_if 1 (;@7;)
                        local.get 3
                        local.get 2
                        local.get 5
                        i32.add
                        i32.const 1
                        i32.add
                        local.tee 2
                        i32.store offset=32
                        local.get 0
                        local.get 2
                        i32.gt_u
                        local.get 2
                        local.get 12
                        i32.gt_u
                        i32.or
                        br_if 0 (;@8;)
                        local.get 0
                        i32.const 5
                        i32.ge_u
                        br_if 4 (;@4;)
                        local.get 4
                        local.get 2
                        local.get 0
                        i32.sub
                        i32.add
                        local.get 0
                        local.get 9
                        local.get 0
                        call 186
                        i32.eqz
                        br_if 0 (;@8;)
                      end
                      local.get 3
                      i32.load offset=48
                      local.set 1
                      local.get 3
                      local.get 2
                      i32.store offset=48
                      local.get 2
                      local.get 1
                      i32.sub
                      local.set 2
                      br 4 (;@3;)
                    end
                    local.get 3
                    local.get 6
                    i32.store offset=32
                  end
                  local.get 3
                  i32.const 1
                  i32.store8 offset=57
                  local.get 3
                  i32.load offset=52
                  local.tee 0
                  local.get 3
                  i32.load offset=48
                  local.tee 1
                  i32.sub
                  local.set 2
                  local.get 3
                  i32.load8_u offset=56
                  local.get 0
                  local.get 1
                  i32.ne
                  i32.or
                  br_if 2 (;@3;)
                end
                i32.const 0
                br 3 (;@1;)
              end
              unreachable
            end
            local.get 11
            i32.load offset=12
            local.set 0
            block ;; label = @3
              local.get 8
              i32.load8_u
              if ;; label = @4
                local.get 7
                i32.const 1051060
                i32.const 4
                local.get 0
                call_indirect (type 1)
                br_if 1 (;@3;)
              end
              local.get 1
              local.get 4
              i32.add
              local.set 4
              local.get 3
              i32.const 10
              i32.store offset=60
              local.get 8
              local.get 2
              if (result i32) ;; label = @4
                local.get 3
                i32.const 60
                i32.add
                i32.const 1
                local.get 2
                local.get 4
                i32.add
                i32.const 1
                i32.sub
                i32.const 1
                call 186
              else
                i32.const 0
              end
              i32.store8
              local.get 7
              local.get 4
              local.get 2
              local.get 0
              call_indirect (type 1)
              i32.eqz
              br_if 1 (;@2;)
            end
          end
          i32.const 1
        end
        local.get 3
        i32.const -64
        i32.sub
        global.set 0
      )
      (func (;31;) (type 1) (param i32 i32 i32) (result i32)
        (local i32 i32 i32 i32 i32 i32)
        global.get 0
        i32.const -64
        i32.add
        local.tee 3
        global.set 0
        local.get 3
        i32.const 52
        i32.add
        local.get 1
        i32.store
        local.get 3
        i32.const 3
        i32.store8 offset=60
        local.get 3
        i32.const 32
        i32.store offset=44
        local.get 3
        i32.const 0
        i32.store offset=56
        local.get 3
        local.get 0
        i32.store offset=48
        local.get 3
        i32.const 0
        i32.store offset=36
        local.get 3
        i32.const 0
        i32.store offset=28
        block (result i32) ;; label = @1
          block ;; label = @2
            block ;; label = @3
              local.get 2
              i32.load offset=16
              local.tee 1
              i32.eqz
              if ;; label = @4
                local.get 2
                i32.const 12
                i32.add
                i32.load
                local.tee 0
                i32.const 3
                i32.shl
                local.set 6
                local.get 0
                i32.const 536870911
                i32.and
                local.set 7
                local.get 2
                i32.load
                local.set 8
                local.get 2
                i32.load offset=8
                local.set 1
                loop ;; label = @5
                  local.get 4
                  local.get 6
                  i32.eq
                  br_if 2 (;@3;)
                  local.get 4
                  local.get 8
                  i32.add
                  local.tee 0
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 5
                  if ;; label = @6
                    local.get 3
                    i32.load offset=48
                    local.get 0
                    i32.load
                    local.get 5
                    local.get 3
                    i32.load offset=52
                    i32.load offset=12
                    call_indirect (type 1)
                    br_if 4 (;@2;)
                  end
                  local.get 4
                  i32.const 8
                  i32.add
                  local.set 4
                  local.get 1
                  i32.load
                  local.get 1
                  i32.load offset=4
                  local.set 5
                  local.get 1
                  i32.const 8
                  i32.add
                  local.set 1
                  local.get 3
                  i32.const 28
                  i32.add
                  local.get 5
                  call_indirect (type 0)
                  i32.eqz
                  br_if 0 (;@5;)
                end
                br 2 (;@2;)
              end
              local.get 2
              i32.const 20
              i32.add
              i32.load
              local.tee 4
              i32.const 5
              i32.shl
              local.set 0
              local.get 4
              i32.const 134217727
              i32.and
              local.set 7
              local.get 2
              i32.load offset=8
              local.set 6
              local.get 2
              i32.load
              local.tee 8
              local.set 4
              loop ;; label = @4
                local.get 0
                i32.eqz
                br_if 1 (;@3;)
                local.get 4
                i32.const 4
                i32.add
                i32.load
                local.tee 5
                if ;; label = @5
                  local.get 3
                  i32.load offset=48
                  local.get 4
                  i32.load
                  local.get 5
                  local.get 3
                  i32.load offset=52
                  i32.load offset=12
                  call_indirect (type 1)
                  br_if 3 (;@2;)
                end
                local.get 3
                local.get 1
                i32.load offset=16
                i32.store offset=44
                local.get 3
                local.get 1
                i32.load8_u offset=28
                i32.store8 offset=60
                local.get 3
                local.get 1
                i32.load offset=24
                i32.store offset=56
                local.get 3
                i32.const 16
                i32.add
                local.get 6
                local.get 1
                i32.const 8
                i32.add
                call 102
                local.get 3
                local.get 3
                i64.load offset=16
                i64.store offset=28 align=4
                local.get 3
                i32.const 8
                i32.add
                local.get 6
                local.get 1
                call 102
                local.get 3
                local.get 3
                i64.load offset=8
                i64.store offset=36 align=4
                local.get 4
                i32.const 8
                i32.add
                local.set 4
                local.get 0
                i32.const 32
                i32.sub
                local.set 0
                local.get 1
                i32.load offset=20
                local.set 5
                local.get 1
                i32.const 32
                i32.add
                local.set 1
                local.get 6
                local.get 5
                i32.const 3
                i32.shl
                i32.add
                local.tee 5
                i32.load
                local.get 3
                i32.const 28
                i32.add
                local.get 5
                i32.load offset=4
                call_indirect (type 0)
                i32.eqz
                br_if 0 (;@4;)
              end
              br 1 (;@2;)
            end
            local.get 2
            i32.load offset=4
            local.get 7
            i32.gt_u
            if ;; label = @3
              local.get 3
              i32.load offset=48
              local.get 8
              local.get 7
              i32.const 3
              i32.shl
              i32.add
              local.tee 0
              i32.load
              local.get 0
              i32.load offset=4
              local.get 3
              i32.load offset=52
              i32.load offset=12
              call_indirect (type 1)
              br_if 1 (;@2;)
            end
            i32.const 0
            br 1 (;@1;)
          end
          i32.const 1
        end
        local.get 3
        i32.const -64
        i32.sub
        global.set 0
      )
      (func (;32;) (type 12) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
        (local i32 i32)
        global.get 0
        i32.const 32
        i32.sub
        local.tee 7
        global.set 0
        call 176
        block (result i32) ;; label = @1
          block ;; label = @2
            block ;; label = @3
              local.get 0
              i32.load
              local.tee 8
              i32.const 2
              i32.eq
              br_if 0 (;@3;)
              block ;; label = @4
                block ;; label = @5
                  local.get 8
                  i32.eqz
                  if ;; label = @6
                    local.get 7
                    i32.const 20
                    i32.add
                    local.get 0
                    i32.load offset=4
                    local.get 2
                    local.get 3
                    call 26
                    local.get 7
                    i32.load8_u offset=20
                    br_if 2 (;@4;)
                    local.get 7
                    i32.load offset=24
                    local.tee 8
                    i32.load offset=4
                    i32.const 3
                    i32.sub
                    i32.const 2
                    i32.lt_u
                    br_if 1 (;@5;)
                    i32.const 0
                    local.get 8
                    call 164
                    local.set 1
                    i32.const 1
                    br 5 (;@1;)
                  end
                  local.get 1
                  i32.const 255
                  i32.and
                  i32.const 2
                  i32.ge_u
                  local.get 4
                  i32.const 255
                  i32.and
                  i32.const 16
                  i32.ge_u
                  i32.or
                  local.get 5
                  i32.const 255
                  i32.and
                  i32.const 64
                  i32.ge_u
                  local.get 6
                  i32.const 255
                  i32.and
                  i32.const 8
                  i32.ge_u
                  i32.or
                  i32.or
                  br_if 2 (;@3;)
                  local.get 7
                  i32.const 20
                  i32.add
                  local.get 0
                  i32.load offset=4
                  i32.load offset=8
                  local.get 2
                  local.get 3
                  call 80
                  local.get 7
                  i32.load8_u offset=20
                  br_if 1 (;@4;)
                  i32.const 1
                  local.get 7
                  i32.load offset=24
                  call 168
                  call 164
                  local.set 1
                  i32.const 1
                  br 4 (;@1;)
                end
                local.get 7
                i32.const 8
                i32.add
                local.get 8
                i32.const 8
                i32.add
                i32.load
                call 110
                local.get 7
                i32.const 20
                i32.add
                local.get 7
                i32.load offset=8
                local.get 7
                i32.load offset=12
                call 25
                local.get 7
                i32.load offset=20
                local.tee 0
                i32.eqz
                br_if 2 (;@2;)
                local.get 1
                i32.const 255
                i32.and
                i32.const 2
                i32.ge_u
                local.get 4
                i32.const 255
                i32.and
                i32.const 16
                i32.ge_u
                i32.or
                local.get 5
                i32.const 255
                i32.and
                i32.const 64
                i32.ge_u
                local.get 6
                i32.const 255
                i32.and
                i32.const 8
                i32.ge_u
                i32.or
                i32.or
                br_if 1 (;@3;)
                local.get 7
                i32.const 20
                i32.add
                local.get 0
                i32.load
                local.get 7
                i32.load offset=24
                local.get 7
                i32.const 28
                i32.add
                i32.load
                call 80
                local.get 7
                i32.load8_u offset=20
                br_if 0 (;@4;)
                i32.const 1
                local.get 7
                i32.load offset=24
                call 168
                call 164
                local.set 1
                i32.const 1
                br 3 (;@1;)
              end
              local.get 7
              i32.load8_u offset=21
              local.set 4
              i32.const 0
              br 2 (;@1;)
            end
            unreachable
          end
          i32.const 20
          local.set 4
          i32.const 0
        end
        local.set 0
        local.get 2
        local.get 3
        call 181
        block ;; label = @1
          local.get 0
          if ;; label = @2
            i32.const 1053964
            local.get 1
            i32.store
            i32.const 1053960
            i32.const 0
            i32.store8
            br 1 (;@1;)
          end
          i32.const 1053964
          local.get 4
          i32.store8
          i32.const 1053960
          i32.const 1
          i32.store8
        end
        local.get 7
        i32.const 32
        i32.add
        global.set 0
        i32.const 1053960
      )
      (func (;33;) (type 2) (param i32) (result i32)
        (local i32 i32 i32 i32 i32 i32 i32)
        global.get 0
        i32.const 48
        i32.sub
        local.tee 1
        global.set 0
        call 176
        local.get 0
        i32.load
        if ;; label = @1
          block ;; label = @2
            block ;; label = @3
              block ;; label = @4
                block (result i32) ;; label = @5
                  block ;; label = @6
                    local.get 0
                    i32.load offset=4
                    local.tee 2
                    if ;; label = @7
                      local.get 1
                      i32.const 28
                      i32.add
                      local.get 2
                      call 77
                      local.get 1
                      i32.load offset=28
                      local.tee 3
                      i32.eqz
                      br_if 3 (;@4;)
                      local.get 0
                      i32.load offset=8
                      local.tee 2
                      local.get 1
                      i32.load offset=32
                      i32.lt_u
                      br_if 1 (;@6;)
                      i32.const 0
                      local.set 3
                      i32.const 8
                      br 2 (;@5;)
                    end
                    local.get 0
                    i32.load offset=8
                    drop
                    unreachable
                  end
                  local.get 3
                  local.get 2
                  i32.const 4
                  i32.shl
                  i32.add
                  local.tee 2
                  i32.load offset=4
                  local.set 4
                  local.get 1
                  i32.const 16
                  i32.add
                  local.get 2
                  i32.load
                  call 110
                  local.get 1
                  i32.load offset=16
                  local.set 2
                  local.get 1
                  i32.const 8
                  i32.add
                  local.get 1
                  i32.load offset=20
                  local.tee 5
                  call 92
                  local.get 1
                  i32.load offset=12
                  local.set 6
                  local.get 1
                  i32.load offset=8
                  local.tee 7
                  local.get 2
                  local.get 5
                  call 22
                  i32.const 8
                  i32.shr_u
                  local.set 3
                  local.get 0
                  i32.load offset=8
                  local.set 2
                  i32.const 3
                  i32.const 6
                  local.get 4
                  i32.const 6
                  i32.and
                  i32.const 2
                  i32.eq
                  select
                end
                local.set 4
                local.get 0
                local.get 2
                i32.const 1
                i32.add
                i32.store offset=8
                i32.const 1053960
                i32.const 0
                i32.store8
                local.get 4
                i32.const 8
                i32.ne
                br_if 1 (;@3;)
                i32.const 1053964
                i32.const 0
                i32.store8
                br 2 (;@2;)
              end
              i32.const 1053964
              local.get 1
              i32.load8_u offset=32
              i32.store8
              i32.const 1053960
              i32.const 1
              i32.store8
              br 1 (;@2;)
            end
            i32.const 1053968
            local.get 4
            i32.store8
            i32.const 1053964
            i32.const 1
            i32.store8
            local.get 1
            local.get 5
            i32.store offset=36
            local.get 1
            local.get 6
            i32.store offset=32
            local.get 1
            local.get 7
            i32.store8 offset=28
            local.get 1
            local.get 3
            i32.store16 offset=29 align=1
            local.get 1
            local.get 3
            i32.const 16
            i32.shr_u
            i32.store8 offset=31
            local.get 1
            local.get 1
            i32.const 28
            i32.add
            call 79
            i32.const 1053972
            local.get 1
            i64.load
            i64.store align=4
          end
          local.get 1
          i32.const 48
          i32.add
          global.set 0
          i32.const 1053960
          return
        end
        unreachable
      )
      (func (;34;) (type 2) (param i32) (result i32)
        (local i32 i32)
        global.get 0
        i32.const 112
        i32.sub
        local.tee 1
        global.set 0
        call 176
        local.get 0
        i32.load
        local.tee 2
        i32.const 2
        i32.ne
        if ;; label = @1
          local.get 0
          i32.load offset=4
          local.set 0
          block ;; label = @2
            block ;; label = @3
              block ;; label = @4
                i32.const 1053984
                block (result i64) ;; label = @5
                  local.get 2
                  i32.eqz
                  if ;; label = @6
                    local.get 0
                    i32.load offset=4
                    local.set 2
                    local.get 1
                    i32.const 8
                    i32.add
                    local.get 0
                    call 60
                    local.get 1
                    i32.load8_u offset=8
                    br_if 2 (;@4;)
                    i32.const 3
                    i32.const 6
                    local.get 2
                    i32.const 6
                    i32.and
                    i32.const 2
                    i32.eq
                    select
                    local.set 0
                    local.get 1
                    i64.load offset=16
                    br 1 (;@5;)
                  end
                  local.get 0
                  i32.load offset=8
                  drop
                  unreachable
                end
                i64.store
                i32.const 1053976
                i64.const 0
                i64.store
                i32.const 1053968
                local.get 0
                i32.store8
                i32.const 1053960
                i32.const 0
                i32.store8
                i32.const 1054016
                i32.const 0
                i32.store8
                i32.const 1053992
                i32.const 0
                i32.store8
                br 1 (;@3;)
              end
              i32.const 1053968
              local.get 1
              i32.load8_u offset=9
              i32.store8
              i32.const 1053960
              i32.const 1
              i32.store8
              br 1 (;@2;)
            end
            i32.const 1054040
            i32.const 0
            i32.store8
          end
          local.get 1
          i32.const 112
          i32.add
          global.set 0
          i32.const 1053960
          return
        end
        unreachable
      )
      (func (;35;) (type 2) (param i32) (result i32)
        local.get 0
        i32.const 32
        call 213
      )
      (func (;36;) (type 1) (param i32 i32 i32) (result i32)
        (local i32 i32)
        global.get 0
        i32.const 48
        i32.sub
        local.tee 3
        global.set 0
        call 176
        local.get 0
        i32.load
        local.tee 4
        i32.const 2
        i32.ne
        if ;; label = @1
          block (result i32) ;; label = @2
            block ;; label = @3
              block ;; label = @4
                block ;; label = @5
                  local.get 4
                  i32.eqz
                  if ;; label = @6
                    local.get 3
                    i32.const 36
                    i32.add
                    local.get 0
                    i32.load offset=4
                    local.get 1
                    local.get 2
                    call 26
                    local.get 3
                    i32.load8_u offset=36
                    br_if 2 (;@4;)
                    i32.const 0
                    local.set 0
                    i32.const 12
                    local.get 3
                    i32.load offset=40
                    local.tee 4
                    i32.load offset=4
                    i32.const 3
                    i32.sub
                    i32.const 2
                    i32.ge_u
                    br_if 4 (;@2;)
                    drop
                    local.get 3
                    i32.const 16
                    i32.add
                    local.get 4
                    i32.const 8
                    i32.add
                    i32.load
                    call 110
                    local.get 3
                    i32.const 36
                    i32.add
                    local.get 3
                    i32.load offset=16
                    local.get 3
                    i32.load offset=20
                    call 25
                    local.get 3
                    i32.load offset=36
                    local.tee 4
                    i32.eqz
                    br_if 3 (;@3;)
                    local.get 3
                    i32.const 36
                    i32.add
                    local.get 4
                    i32.load
                    local.get 3
                    i32.load offset=40
                    local.get 3
                    i32.const 44
                    i32.add
                    i32.load
                    call 80
                    local.get 3
                    i32.load offset=36
                    local.tee 0
                    i32.eqz
                    br_if 1 (;@5;)
                    local.get 3
                    local.get 3
                    i32.load offset=41 align=1
                    i32.store offset=28
                    local.get 3
                    local.get 3
                    i32.const 44
                    i32.add
                    i32.load align=1
                    i32.store offset=31 align=1
                    br 1 (;@5;)
                  end
                  local.get 3
                  i32.const 36
                  i32.add
                  local.get 0
                  i32.load offset=4
                  i32.load offset=8
                  local.get 1
                  local.get 2
                  call 80
                  local.get 3
                  i32.load offset=36
                  local.tee 0
                  i32.eqz
                  br_if 0 (;@5;)
                  local.get 3
                  local.get 3
                  i32.load offset=41 align=1
                  i32.store offset=28
                  local.get 3
                  local.get 3
                  i32.const 44
                  i32.add
                  i32.load align=1
                  i32.store offset=31 align=1
                end
                local.get 3
                i32.load8_u offset=40
                br 2 (;@2;)
              end
              i32.const 0
              local.set 0
              local.get 3
              i32.load8_u offset=37
              br 1 (;@2;)
            end
            i32.const 20
          end
          local.set 4
          local.get 1
          local.get 2
          call 181
          block ;; label = @2
            local.get 0
            if ;; label = @3
              local.get 3
              i32.const 44
              i32.add
              local.get 3
              i32.load offset=31 align=1
              i32.store align=1
              local.get 3
              local.get 3
              i32.load offset=28
              i32.store offset=41 align=1
              i32.const 1053960
              i32.const 0
              i32.store8
              local.get 3
              local.get 4
              i32.store8 offset=40
              local.get 3
              local.get 0
              i32.store offset=36
              local.get 3
              i32.const 8
              i32.add
              local.get 3
              i32.const 36
              i32.add
              call 79
              i32.const 1053964
              local.get 3
              i64.load offset=8
              i64.store align=4
              br 1 (;@2;)
            end
            i32.const 1053964
            local.get 4
            i32.store8
            i32.const 1053960
            i32.const 1
            i32.store8
          end
          local.get 3
          i32.const 48
          i32.add
          global.set 0
          i32.const 1053960
          return
        end
        unreachable
      )
      (func (;37;) (type 11) (param i32 i32 i32 i32 i32) (result i32)
        (local i32 i32 i32 i32 i32 i64)
        global.get 0
        i32.const -64
        i32.add
        local.tee 5
        global.set 0
        i32.const 1
        local.set 7
        block ;; label = @1
          local.get 0
          i32.load8_u offset=4
          br_if 0 (;@1;)
          local.get 0
          i32.load8_u offset=5
          local.set 9
          local.get 0
          i32.load
          local.tee 6
          i32.load offset=28
          local.tee 8
          i32.const 4
          i32.and
          i32.eqz
          if ;; label = @2
            local.get 6
            i32.load offset=20
            i32.const 1051067
            i32.const 1051064
            local.get 9
            select
            i32.const 2
            i32.const 3
            local.get 9
            select
            local.get 6
            i32.const 24
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 1)
            br_if 1 (;@1;)
            local.get 6
            i32.load offset=20
            local.get 1
            local.get 2
            local.get 6
            i32.load offset=24
            i32.load offset=12
            call_indirect (type 1)
            br_if 1 (;@1;)
            local.get 6
            i32.load offset=20
            i32.const 1051069
            i32.const 2
            local.get 6
            i32.load offset=24
            i32.load offset=12
            call_indirect (type 1)
            br_if 1 (;@1;)
            local.get 3
            local.get 6
            local.get 4
            call_indirect (type 0)
            local.set 7
            br 1 (;@1;)
          end
          local.get 9
          i32.eqz
          if ;; label = @2
            local.get 6
            i32.load offset=20
            i32.const 1051071
            i32.const 3
            local.get 6
            i32.const 24
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 1)
            br_if 1 (;@1;)
            local.get 6
            i32.load offset=28
            local.set 8
          end
          local.get 5
          i32.const 1
          i32.store8 offset=27
          local.get 5
          i32.const 52
          i32.add
          i32.const 1051036
          i32.store
          local.get 5
          local.get 6
          i64.load offset=20 align=4
          i64.store offset=12 align=4
          local.get 5
          local.get 5
          i32.const 27
          i32.add
          i32.store offset=20
          local.get 5
          local.get 6
          i64.load offset=8 align=4
          i64.store offset=36 align=4
          local.get 6
          i64.load align=4
          local.set 10
          local.get 5
          local.get 8
          i32.store offset=56
          local.get 5
          local.get 6
          i32.load offset=16
          i32.store offset=44
          local.get 5
          local.get 6
          i32.load8_u offset=32
          i32.store8 offset=60
          local.get 5
          local.get 10
          i64.store offset=28 align=4
          local.get 5
          local.get 5
          i32.const 12
          i32.add
          local.tee 8
          i32.store offset=48
          local.get 8
          local.get 1
          local.get 2
          call 30
          br_if 0 (;@1;)
          local.get 5
          i32.const 12
          i32.add
          i32.const 1051069
          i32.const 2
          call 30
          br_if 0 (;@1;)
          local.get 3
          local.get 5
          i32.const 28
          i32.add
          local.get 4
          call_indirect (type 0)
          br_if 0 (;@1;)
          local.get 5
          i32.load offset=48
          i32.const 1051074
          i32.const 2
          local.get 5
          i32.load offset=52
          i32.load offset=12
          call_indirect (type 1)
          local.set 7
        end
        local.get 0
        i32.const 1
        i32.store8 offset=5
        local.get 0
        local.get 7
        i32.store8 offset=4
        local.get 5
        i32.const -64
        i32.sub
        global.set 0
        local.get 0
      )
      (func (;38;) (type 8) (param i32 i32 i32 i32) (result i32)
        (local i32 i32 i64 i64)
        global.get 0
        i32.const 32
        i32.sub
        local.tee 4
        global.set 0
        call 176
        block (result i32) ;; label = @1
          block ;; label = @2
            block ;; label = @3
              local.get 0
              i32.load
              local.tee 5
              i32.const 2
              i32.eq
              br_if 0 (;@3;)
              block (result i32) ;; label = @4
                block ;; label = @5
                  block ;; label = @6
                    block ;; label = @7
                      local.get 5
                      i32.eqz
                      if ;; label = @8
                        local.get 4
                        i32.const 8
                        i32.add
                        local.get 0
                        i32.load offset=4
                        local.get 2
                        local.get 3
                        call 26
                        local.get 4
                        i32.load8_u offset=8
                        br_if 2 (;@6;)
                        local.get 4
                        i32.load offset=12
                        local.tee 0
                        i32.load offset=4
                        i32.const 3
                        i32.sub
                        i32.const 2
                        i32.lt_u
                        br_if 1 (;@7;)
                        local.get 0
                        i32.const 1053916
                        i32.load
                        i32.sub
                        i32.const 4
                        i32.shr_u
                        i64.extend_i32_u
                        local.set 6
                        i32.const 1
                        br 7 (;@1;)
                      end
                      local.get 1
                      i32.const 255
                      i32.and
                      i32.const 2
                      i32.ge_u
                      br_if 4 (;@3;)
                      local.get 4
                      i32.const 8
                      i32.add
                      local.get 0
                      i32.load offset=4
                      i32.load offset=8
                      local.get 1
                      local.get 2
                      local.get 3
                      call 78
                      local.get 4
                      i32.load8_u offset=8
                      br_if 1 (;@6;)
                      br 5 (;@2;)
                    end
                    local.get 4
                    local.get 0
                    i32.const 8
                    i32.add
                    i32.load
                    call 110
                    local.get 4
                    i32.const 8
                    i32.add
                    local.get 4
                    i32.load
                    local.get 4
                    i32.load offset=4
                    call 25
                    local.get 4
                    i32.load offset=8
                    local.tee 0
                    i32.eqz
                    br_if 1 (;@5;)
                    local.get 1
                    i32.const 255
                    i32.and
                    i32.const 2
                    i32.ge_u
                    br_if 3 (;@3;)
                    local.get 4
                    i32.const 8
                    i32.add
                    local.get 0
                    i32.load
                    local.get 1
                    local.get 4
                    i32.load offset=12
                    local.get 4
                    i32.const 16
                    i32.add
                    i32.load
                    call 78
                    local.get 4
                    i32.load8_u offset=8
                    br_if 0 (;@6;)
                    br 4 (;@2;)
                  end
                  local.get 4
                  i32.load8_u offset=9
                  local.set 1
                  i32.const 0
                  br 1 (;@4;)
                end
                i32.const 20
                local.set 1
                i32.const 0
              end
              br 2 (;@1;)
            end
            unreachable
          end
          local.get 4
          i32.const 24
          i32.add
          i64.load
          local.set 6
          local.get 4
          i64.load offset=16
          local.set 7
          i32.const 1
        end
        local.set 0
        local.get 2
        local.get 3
        call 181
        block ;; label = @1
          local.get 0
          if ;; label = @2
            i32.const 1053976
            local.get 6
            i64.store
            i32.const 1053968
            local.get 7
            i64.store
            i32.const 1053960
            i32.const 0
            i32.store8
            br 1 (;@1;)
          end
          i32.const 1053968
          local.get 1
          i32.store8
          i32.const 1053960
          i32.const 1
          i32.store8
        end
        local.get 4
        i32.const 32
        i32.add
        global.set 0
        i32.const 1053960
      )
      (func (;39;) (type 13) (param i32 i32 i32 i32 i32)
        global.get 0
        i32.const 112
        i32.sub
        global.set 0
        unreachable
      )
      (func (;40;) (type 17) (param i64 i32 i32) (result i32)
        (local i32 i32 i32 i32 i32)
        global.get 0
        i32.const 48
        i32.sub
        local.tee 5
        global.set 0
        i32.const 39
        local.set 3
        block ;; label = @1
          loop ;; label = @2
            local.get 0
            i64.const 9999
            i64.le_u
            if ;; label = @3
              block ;; label = @4
                local.get 0
                i32.wrap_i64
                local.tee 4
                i32.const 99
                i32.gt_u
                br_if 0 (;@4;)
                br 3 (;@1;)
              end
            else
              local.get 5
              i32.const 9
              i32.add
              local.get 3
              i32.add
              local.tee 4
              i32.const 4
              i32.sub
              local.get 0
              local.get 0
              i64.const 10000
              i64.div_u
              local.tee 0
              i64.const 10000
              i64.mul
              i64.sub
              i32.wrap_i64
              local.tee 6
              i32.const 65535
              i32.and
              i32.const 100
              i32.div_u
              local.tee 7
              i32.const 1
              i32.shl
              i32.const 1051084
              i32.add
              i32.load16_u align=1
              i32.store16 align=1
              local.get 4
              i32.const 2
              i32.sub
              local.get 6
              local.get 7
              i32.const 100
              i32.mul
              i32.sub
              i32.const 65535
              i32.and
              i32.const 1
              i32.shl
              i32.const 1051084
              i32.add
              i32.load16_u align=1
              i32.store16 align=1
              local.get 3
              i32.const 4
              i32.sub
              local.set 3
              br 1 (;@2;)
            end
          end
          local.get 3
          i32.const 2
          i32.sub
          local.tee 3
          local.get 5
          i32.const 9
          i32.add
          i32.add
          local.get 0
          i32.wrap_i64
          local.tee 4
          local.get 4
          i32.const 65535
          i32.and
          i32.const 100
          i32.div_u
          local.tee 4
          i32.const 100
          i32.mul
          i32.sub
          i32.const 65535
          i32.and
          i32.const 1
          i32.shl
          i32.const 1051084
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
        end
        block ;; label = @1
          local.get 4
          i32.const 10
          i32.ge_u
          if ;; label = @2
            local.get 3
            i32.const 2
            i32.sub
            local.tee 3
            local.get 5
            i32.const 9
            i32.add
            i32.add
            local.get 4
            i32.const 1
            i32.shl
            i32.const 1051084
            i32.add
            i32.load16_u align=1
            i32.store16 align=1
            br 1 (;@1;)
          end
          local.get 3
          i32.const 1
          i32.sub
          local.tee 3
          local.get 5
          i32.const 9
          i32.add
          i32.add
          local.get 4
          i32.const 48
          i32.add
          i32.store8
        end
        local.get 2
        local.get 1
        i32.const 1051032
        i32.const 0
        local.get 5
        i32.const 9
        i32.add
        local.get 3
        i32.add
        i32.const 39
        local.get 3
        i32.sub
        call 23
        local.get 5
        i32.const 48
        i32.add
        global.set 0
      )
      (func (;41;) (type 12) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
        (local i32 i32 i32 i32 i32 i32 i32)
        local.get 1
        local.get 2
        i32.const 1
        i32.shl
        i32.add
        local.set 11
        local.get 0
        i32.const 65280
        i32.and
        i32.const 8
        i32.shr_u
        local.set 9
        local.get 0
        i32.const 255
        i32.and
        local.set 12
        block ;; label = @1
          block ;; label = @2
            block ;; label = @3
              loop ;; label = @4
                local.get 1
                local.get 11
                i32.eq
                br_if 1 (;@3;)
                local.get 1
                i32.const 2
                i32.add
                local.set 10
                local.get 7
                local.get 1
                i32.load8_u offset=1
                local.tee 2
                i32.add
                local.set 8
                local.get 9
                local.get 1
                i32.load8_u
                local.tee 13
                i32.ne
                if ;; label = @5
                  local.get 10
                  local.set 1
                  local.get 8
                  local.set 7
                  local.get 9
                  local.get 13
                  i32.ge_u
                  br_if 1 (;@4;)
                  br 2 (;@3;)
                end
                local.get 4
                local.get 8
                i32.lt_u
                local.get 7
                local.get 8
                i32.gt_u
                i32.or
                br_if 3 (;@1;)
                local.get 3
                local.get 7
                i32.add
                local.set 1
                loop ;; label = @5
                  local.get 2
                  i32.eqz
                  if ;; label = @6
                    local.get 10
                    local.set 1
                    local.get 8
                    local.set 7
                    br 2 (;@4;)
                  end
                  local.get 2
                  i32.const 1
                  i32.sub
                  local.set 2
                  local.get 1
                  i32.load8_u
                  local.get 1
                  i32.const 1
                  i32.add
                  local.set 1
                  local.get 12
                  i32.ne
                  br_if 0 (;@5;)
                end
              end
              i32.const 0
              local.set 1
              br 1 (;@2;)
            end
            local.get 5
            local.get 6
            i32.add
            local.set 3
            local.get 0
            i32.const 65535
            i32.and
            local.set 0
            i32.const 1
            local.set 1
            loop ;; label = @3
              local.get 3
              local.get 5
              i32.eq
              br_if 1 (;@2;)
              local.get 5
              i32.const 1
              i32.add
              local.set 2
              local.get 5
              i32.load8_u
              local.tee 7
              i32.extend8_s
              local.tee 4
              i32.const 0
              i32.lt_s
              if ;; label = @4
                local.get 2
                local.get 3
                i32.eq
                br_if 3 (;@1;)
                local.get 5
                i32.load8_u offset=1
                local.get 4
                i32.const 127
                i32.and
                i32.const 8
                i32.shl
                i32.or
                local.set 7
                local.get 5
                i32.const 2
                i32.add
                local.set 2
              end
              local.get 0
              local.get 7
              i32.sub
              local.tee 0
              i32.const 0
              i32.lt_s
              br_if 1 (;@2;)
              local.get 1
              i32.const 1
              i32.xor
              local.set 1
              local.get 2
              local.set 5
              br 0 (;@3;)
            end
            unreachable
          end
          local.get 1
          i32.const 1
          i32.and
          return
        end
        unreachable
      )
      (func (;42;) (type 0) (param i32 i32) (result i32)
        (local i32 i32 i32 i32 i32 i32)
        global.get 0
        i32.const 32
        i32.sub
        local.tee 2
        global.set 0
        call 176
        i32.const 4
        local.set 5
        block ;; label = @1
          local.get 1
          if ;; label = @2
            local.get 1
            i32.const 536870911
            i32.gt_u
            br_if 1 (;@1;)
            local.get 1
            i32.const 2
            i32.shl
            local.tee 4
            i32.const 0
            i32.lt_s
            br_if 1 (;@1;)
            i32.const 4
            local.get 4
            call 172
            local.tee 5
            i32.eqz
            br_if 1 (;@1;)
          end
          local.get 2
          local.get 1
          i32.store offset=12
          local.get 2
          local.get 5
          i32.store offset=8
          local.get 1
          local.set 4
          local.get 0
          local.set 6
          loop ;; label = @2
            local.get 2
            local.get 3
            i32.store offset=16
            local.get 4
            i32.eqz
            if ;; label = @3
              local.get 0
              local.get 1
              i32.const 2
              i32.shl
              call 181
              local.get 2
              i32.const 20
              i32.add
              local.get 2
              i32.const 8
              i32.add
              call 24
              local.get 2
              i32.load offset=20
              local.set 3
              block ;; label = @4
                local.get 2
                i32.load offset=24
                local.tee 1
                local.get 2
                i32.load offset=28
                local.tee 0
                i32.le_u
                br_if 0 (;@4;)
                local.get 1
                i32.const 2
                i32.shl
                local.set 1
                local.get 0
                i32.eqz
                if ;; label = @5
                  local.get 3
                  local.get 1
                  call 181
                  i32.const 4
                  local.set 3
                  br 1 (;@4;)
                end
                local.get 3
                local.get 1
                i32.const 4
                local.get 0
                i32.const 2
                i32.shl
                call 107
                local.tee 3
                i32.eqz
                br_if 3 (;@1;)
              end
              i32.const 1054116
              local.get 0
              i32.store
              i32.const 1054112
              local.get 3
              i32.store
              local.get 2
              i32.const 32
              i32.add
              global.set 0
              i32.const 1054112
              return
            end
            local.get 6
            i32.load
            local.tee 7
            i32.load
            i32.const 2
            i32.eq
            br_if 1 (;@1;)
            local.get 2
            i32.load offset=12
            local.get 3
            i32.eq
            if (result i32) ;; label = @3
              local.get 2
              i32.const 8
              i32.add
              local.get 3
              call 58
              local.get 2
              i32.load offset=8
              local.set 5
              local.get 2
              i32.load offset=16
            else
              local.get 3
            end
            i32.const 2
            i32.shl
            local.get 5
            i32.add
            local.get 7
            i32.store
            local.get 4
            i32.const 1
            i32.sub
            local.set 4
            local.get 6
            i32.const 4
            i32.add
            local.set 6
            local.get 2
            i32.load offset=16
            i32.const 1
            i32.add
            local.set 3
            br 0 (;@2;)
          end
          unreachable
        end
        unreachable
      )
      (func (;43;) (type 18) (param i32 i32 i64) (result i32)
        (local i32 i32)
        global.get 0
        i32.const 48
        i32.sub
        local.tee 3
        global.set 0
        call 176
        block ;; label = @1
          block ;; label = @2
            block ;; label = @3
              local.get 0
              i32.load
              local.tee 4
              i32.const 3
              i32.eq
              br_if 0 (;@3;)
              block ;; label = @4
                block ;; label = @5
                  block ;; label = @6
                    block ;; label = @7
                      block ;; label = @8
                        local.get 4
                        i32.const 1
                        i32.sub
                        br_table 0 (;@8;) 1 (;@7;) 2 (;@6;)
                      end
                      local.get 3
                      i32.const 1
                      i32.store offset=4
                      br 2 (;@5;)
                    end
                    local.get 3
                    i32.const 32
                    i32.add
                    local.get 1
                    call 111
                    block ;; label = @7
                      block ;; label = @8
                        block ;; label = @9
                          local.get 3
                          i32.load offset=32
                          local.tee 4
                          i32.const 1
                          i32.sub
                          br_table 1 (;@8;) 6 (;@3;) 2 (;@7;) 0 (;@9;)
                        end
                        local.get 3
                        local.get 2
                        i64.store offset=8
                        br 4 (;@4;)
                      end
                      local.get 3
                      i32.const 1
                      i32.store offset=4
                      br 3 (;@4;)
                    end
                    local.get 0
                    i32.load offset=4
                    drop
                    local.get 3
                    i32.load offset=36
                    drop
                    unreachable
                  end
                  local.get 3
                  local.get 2
                  i64.store offset=8
                end
                local.get 1
                call 7
              end
              local.get 4
              i32.eqz
              if ;; label = @4
                i32.const 1054128
                local.get 3
                i64.load offset=8
                i64.store
                i32.const 1054120
                i32.const 0
                i32.store8
                br 3 (;@1;)
              end
              i32.const 1054120
              i32.const 1
              i32.store8
              local.get 3
              i32.load offset=4
              i32.eqz
              br_if 1 (;@2;)
              i32.const 1054128
              i32.const 1
              i32.store8
              br 2 (;@1;)
            end
            unreachable
          end
          i32.const 1054132
          local.get 3
          i32.const 8
          i32.add
          i32.load
          i32.store
          i32.const 1054128
          i32.const 0
          i32.store8
        end
        local.get 3
        i32.const 48
        i32.add
        global.set 0
        i32.const 1054120
      )
      (func (;44;) (type 0) (param i32 i32) (result i32)
        (local i32 i32)
        global.get 0
        i32.const 48
        i32.sub
        local.tee 2
        global.set 0
        call 176
        block ;; label = @1
          block ;; label = @2
            block ;; label = @3
              local.get 0
              i32.load
              local.tee 3
              i32.const 3
              i32.eq
              br_if 0 (;@3;)
              block ;; label = @4
                block ;; label = @5
                  block ;; label = @6
                    block ;; label = @7
                      block ;; label = @8
                        local.get 3
                        i32.const 1
                        i32.sub
                        br_table 0 (;@8;) 1 (;@7;) 2 (;@6;)
                      end
                      local.get 2
                      i32.const 1
                      i32.store offset=4
                      br 2 (;@5;)
                    end
                    local.get 2
                    i32.const 32
                    i32.add
                    local.get 1
                    call 111
                    block ;; label = @7
                      block ;; label = @8
                        block ;; label = @9
                          local.get 2
                          i32.load offset=32
                          local.tee 3
                          i32.const 1
                          i32.sub
                          br_table 1 (;@8;) 6 (;@3;) 2 (;@7;) 0 (;@9;)
                        end
                        local.get 2
                        i64.const 0
                        i64.store offset=8
                        br 4 (;@4;)
                      end
                      local.get 2
                      i32.const 1
                      i32.store offset=4
                      br 3 (;@4;)
                    end
                    local.get 0
                    i32.load offset=4
                    drop
                    local.get 2
                    i32.load offset=36
                    drop
                    unreachable
                  end
                  local.get 2
                  i64.const 0
                  i64.store offset=8
                end
                local.get 1
                call 7
              end
              local.get 3
              i32.eqz
              if ;; label = @4
                i32.const 1054128
                local.get 2
                i64.load offset=8
                i64.store
                i32.const 1054120
                i32.const 0
                i32.store8
                br 3 (;@1;)
              end
              i32.const 1054120
              i32.const 1
              i32.store8
              local.get 2
              i32.load offset=4
              i32.eqz
              br_if 1 (;@2;)
              i32.const 1054128
              i32.const 1
              i32.store8
              br 2 (;@1;)
            end
            unreachable
          end
          i32.const 1054132
          local.get 2
          i32.const 8
          i32.add
          i32.load
          i32.store
          i32.const 1054128
          i32.const 0
          i32.store8
        end
        local.get 2
        i32.const 48
        i32.add
        global.set 0
        i32.const 1054120
      )
      (func (;45;) (type 0) (param i32 i32) (result i32)
        (local i32 i32 i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 2
        global.set 0
        block ;; label = @1
          local.get 0
          i32.load
          local.tee 0
          local.get 2
          i32.const 12
          i32.add
          block (result i32) ;; label = @2
            block ;; label = @3
              block ;; label = @4
                local.get 1
                i32.const 128
                i32.ge_u
                if ;; label = @5
                  local.get 2
                  i32.const 0
                  i32.store offset=12
                  local.get 1
                  i32.const 2048
                  i32.lt_u
                  br_if 1 (;@4;)
                  local.get 1
                  i32.const 65536
                  i32.ge_u
                  br_if 2 (;@3;)
                  local.get 2
                  local.get 1
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=14
                  local.get 2
                  local.get 1
                  i32.const 12
                  i32.shr_u
                  i32.const 224
                  i32.or
                  i32.store8 offset=12
                  local.get 2
                  local.get 1
                  i32.const 6
                  i32.shr_u
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=13
                  i32.const 3
                  br 3 (;@2;)
                end
                local.get 0
                i32.load offset=8
                local.tee 3
                local.get 0
                i32.load offset=4
                i32.eq
                if ;; label = @5
                  global.get 0
                  i32.const 16
                  i32.sub
                  local.tee 4
                  global.set 0
                  local.get 4
                  i32.const 8
                  i32.add
                  local.get 0
                  local.get 3
                  i32.const 1
                  call 59
                  local.get 4
                  i32.load offset=8
                  local.get 4
                  i32.load offset=12
                  call 184
                  local.get 4
                  i32.const 16
                  i32.add
                  global.set 0
                  local.get 0
                  i32.load offset=8
                  local.set 3
                end
                local.get 0
                local.get 3
                i32.const 1
                i32.add
                i32.store offset=8
                local.get 0
                i32.load
                local.get 3
                i32.add
                local.get 1
                i32.store8
                br 3 (;@1;)
              end
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 192
              i32.or
              i32.store8 offset=12
              i32.const 2
              br 1 (;@2;)
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=15
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 7
            i32.and
            i32.const 240
            i32.or
            i32.store8 offset=12
            i32.const 4
          end
          call 87
        end
        local.get 2
        i32.const 16
        i32.add
        global.set 0
        i32.const 0
      )
      (func (;46;) (type 15) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)
        global.get 0
        i32.const 16
        i32.sub
        global.set 0
        call 176
        local.get 0
        i32.load
        local.set 1
        block ;; label = @1
          block ;; label = @2
            local.get 2
            i32.eqz
            if ;; label = @3
              local.get 1
              i32.eqz
              br_if 2 (;@1;)
              br 1 (;@2;)
            end
            local.get 1
            i32.eqz
            br_if 1 (;@1;)
          end
          local.get 0
          i32.load offset=4
          drop
          unreachable
        end
        unreachable
      )
      (func (;47;) (type 19) (param i32 i64 i64) (result i32)
        (local i32 i32 i32 i32 i32 i32)
        global.get 0
        i32.const 48
        i32.sub
        local.tee 3
        global.set 0
        call 176
        block ;; label = @1
          block ;; label = @2
            block (result i32) ;; label = @3
              block ;; label = @4
                block ;; label = @5
                  local.get 0
                  i32.load
                  local.tee 4
                  i32.const 2
                  i32.eq
                  br_if 0 (;@5;)
                  local.get 3
                  i32.const 40
                  i32.add
                  local.get 4
                  local.get 0
                  i32.const 4
                  i32.add
                  i32.load
                  local.get 2
                  call 72
                  local.get 3
                  i32.load8_u offset=40
                  i32.eqz
                  if ;; label = @6
                    local.get 3
                    i32.load offset=44
                    local.tee 8
                    call 6
                    local.tee 0
                    i32.load
                    i32.const 4
                    i32.eq
                    br_if 1 (;@5;)
                    local.get 3
                    i32.const 28
                    i32.add
                    local.get 0
                    local.get 1
                    call 63
                    local.get 3
                    i32.load offset=28
                    local.tee 4
                    br_if 2 (;@4;)
                    local.get 3
                    i32.load offset=32
                    if ;; label = @7
                      i32.const 1
                      br 4 (;@3;)
                    end
                    local.get 3
                    i32.const 36
                    i32.add
                    i32.load
                    call 9
                    i32.const 1
                    local.set 5
                    i32.const 13
                    br 3 (;@3;)
                  end
                  local.get 3
                  i32.load8_u offset=41
                  local.set 0
                  br 3 (;@2;)
                end
                unreachable
              end
              local.get 3
              i32.load offset=36
              local.set 6
              local.get 3
              i32.load offset=32
              local.set 7
              local.get 4
            end
            local.set 0
            local.get 8
            call 7
            local.get 5
            br_if 0 (;@2;)
            local.get 3
            local.get 6
            i32.store offset=24
            local.get 3
            local.get 7
            i32.store offset=20
            local.get 3
            local.get 0
            i32.store offset=16
            i32.const 1053960
            i32.const 0
            i32.store8
            local.get 3
            i32.const 8
            i32.add
            local.get 3
            i32.const 16
            i32.add
            call 79
            i32.const 1053972
            local.get 4
            i32.eqz
            i32.store8
            i32.const 1053964
            local.get 3
            i64.load offset=8
            i64.store align=4
            br 1 (;@1;)
          end
          i32.const 1053964
          local.get 0
          i32.store8
          i32.const 1053960
          i32.const 1
          i32.store8
        end
        local.get 3
        i32.const 48
        i32.add
        global.set 0
        i32.const 1053960
      )
      (func (;48;) (type 8) (param i32 i32 i32 i32) (result i32)
        (local i32 i32 i32 i32 i32)
        global.get 0
        i32.const -64
        i32.add
        local.tee 4
        global.set 0
        i32.const 1
        local.set 5
        block ;; label = @1
          local.get 0
          i32.load offset=20
          local.tee 6
          local.get 1
          i32.const 4
          local.get 0
          i32.const 24
          i32.add
          i32.load
          local.tee 7
          i32.load offset=12
          local.tee 1
          call_indirect (type 1)
          br_if 0 (;@1;)
          block ;; label = @2
            local.get 0
            i32.load offset=28
            local.tee 8
            i32.const 4
            i32.and
            i32.eqz
            if ;; label = @3
              local.get 6
              i32.const 1051079
              i32.const 1
              local.get 1
              call_indirect (type 1)
              br_if 2 (;@1;)
              local.get 2
              local.get 0
              local.get 3
              call_indirect (type 0)
              i32.eqz
              br_if 1 (;@2;)
              br 2 (;@1;)
            end
            local.get 6
            i32.const 1051080
            i32.const 2
            local.get 1
            call_indirect (type 1)
            br_if 1 (;@1;)
            local.get 4
            i32.const 1
            i32.store8 offset=27
            local.get 4
            i32.const 52
            i32.add
            i32.const 1051036
            i32.store
            local.get 4
            local.get 7
            i32.store offset=16
            local.get 4
            local.get 6
            i32.store offset=12
            local.get 4
            local.get 8
            i32.store offset=56
            local.get 4
            local.get 0
            i32.load8_u offset=32
            i32.store8 offset=60
            local.get 4
            local.get 0
            i32.load offset=16
            i32.store offset=44
            local.get 4
            local.get 0
            i64.load offset=8 align=4
            i64.store offset=36 align=4
            local.get 4
            local.get 0
            i64.load align=4
            i64.store offset=28 align=4
            local.get 4
            local.get 4
            i32.const 27
            i32.add
            i32.store offset=20
            local.get 4
            local.get 4
            i32.const 12
            i32.add
            i32.store offset=48
            local.get 2
            local.get 4
            i32.const 28
            i32.add
            local.get 3
            call_indirect (type 0)
            br_if 1 (;@1;)
            local.get 4
            i32.load offset=48
            i32.const 1051074
            i32.const 2
            local.get 4
            i32.load offset=52
            i32.load offset=12
            call_indirect (type 1)
            br_if 1 (;@1;)
          end
          local.get 0
          i32.load offset=20
          i32.const 1051032
          i32.const 1
          local.get 0
          i32.load offset=24
          i32.load offset=12
          call_indirect (type 1)
          local.set 5
        end
        local.get 4
        i32.const -64
        i32.sub
        global.set 0
        local.get 5
      )
      (func (;49;) (type 6) (param i32 i32 i32 i32)
        (local i32 i32 i32 i32 i32 i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 5
        global.set 0
        local.get 0
        block (result i32) ;; label = @1
          block ;; label = @2
            local.get 2
            i32.const 3
            i32.add
            i32.const -4
            i32.and
            local.tee 6
            local.get 2
            i32.eq
            br_if 0 (;@2;)
            local.get 5
            i32.const 8
            i32.add
            local.get 1
            local.get 2
            local.get 6
            local.get 2
            i32.sub
            local.tee 4
            local.get 3
            local.get 3
            local.get 4
            i32.gt_u
            select
            local.tee 4
            call 100
            i32.const 1
            local.set 6
            local.get 5
            i32.load offset=8
            i32.const 1
            i32.ne
            br_if 0 (;@2;)
            local.get 5
            i32.load offset=12
            br 1 (;@1;)
          end
          local.get 3
          i32.const 8
          i32.sub
          local.set 8
          local.get 1
          i32.const 255
          i32.and
          i32.const 16843009
          i32.mul
          local.set 6
          loop ;; label = @2
            block ;; label = @3
              local.get 4
              local.get 8
              i32.gt_u
              br_if 0 (;@3;)
              local.get 2
              local.get 4
              i32.add
              local.tee 7
              i32.load
              local.get 6
              i32.xor
              local.tee 9
              i32.const -1
              i32.xor
              local.get 9
              i32.const 16843009
              i32.sub
              i32.and
              local.get 7
              i32.const 4
              i32.add
              i32.load
              local.get 6
              i32.xor
              local.tee 7
              i32.const -1
              i32.xor
              local.get 7
              i32.const 16843009
              i32.sub
              i32.and
              i32.or
              i32.const -2139062144
              i32.and
              br_if 0 (;@3;)
              local.get 4
              i32.const 8
              i32.add
              local.set 4
              br 1 (;@2;)
            end
          end
          local.get 5
          local.get 1
          local.get 2
          local.get 4
          i32.add
          local.get 3
          local.get 4
          i32.sub
          call 100
          local.get 5
          i32.load
          i32.const 1
          i32.eq
          local.set 6
          local.get 5
          i32.load offset=4
          local.get 4
          i32.add
        end
        i32.store offset=4
        local.get 0
        local.get 6
        i32.store
        local.get 5
        i32.const 16
        i32.add
        global.set 0
      )
      (func (;50;) (type 7) (param i32 i64) (result i32)
        (local i32)
        global.get 0
        i32.const 32
        i32.sub
        local.tee 2
        global.set 0
        call 176
        block ;; label = @1
          block ;; label = @2
            block ;; label = @3
              block ;; label = @4
                block ;; label = @5
                  block ;; label = @6
                    local.get 0
                    i32.load
                    i32.const 1
                    i32.sub
                    br_table 4 (;@2;) 3 (;@3;) 1 (;@5;) 0 (;@6;) 2 (;@4;)
                  end
                  unreachable
                end
                local.get 0
                i32.load offset=4
                drop
                unreachable
              end
              i32.const 1054128
              i64.const 0
              i64.store
              i32.const 1054120
              i32.const 0
              i32.store8
              br 2 (;@1;)
            end
            i64.const 3328
            call 175
            local.set 0
            i32.const 1054120
            i32.const 1
            i32.store8
            i32.const 1054132
            local.get 0
            i32.store
            i32.const 1054128
            i32.const 0
            i32.store8
            br 1 (;@1;)
          end
          i32.const 1054120
          i32.const 1
          i32.store8
          i32.const 1054128
          i32.const 1
          i32.store8
        end
        local.get 2
        i32.const 32
        i32.add
        global.set 0
        i32.const 1054120
      )
      (func (;51;) (type 4) (param i32 i32)
        (local i32 i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 2
        i32.const 8
        i32.add
        i32.const 0
        i32.store8
        local.get 2
        i32.const 0
        i32.store16 offset=6
        local.get 2
        i32.const 125
        i32.store8 offset=15
        local.get 2
        local.get 1
        i32.const 15
        i32.and
        i32.const 1052968
        i32.add
        i32.load8_u
        i32.store8 offset=14
        local.get 2
        local.get 1
        i32.const 4
        i32.shr_u
        i32.const 15
        i32.and
        i32.const 1052968
        i32.add
        i32.load8_u
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 8
        i32.shr_u
        i32.const 15
        i32.and
        i32.const 1052968
        i32.add
        i32.load8_u
        i32.store8 offset=12
        local.get 2
        local.get 1
        i32.const 12
        i32.shr_u
        i32.const 15
        i32.and
        i32.const 1052968
        i32.add
        i32.load8_u
        i32.store8 offset=11
        local.get 2
        local.get 1
        i32.const 16
        i32.shr_u
        i32.const 15
        i32.and
        i32.const 1052968
        i32.add
        i32.load8_u
        i32.store8 offset=10
        local.get 2
        local.get 1
        i32.const 20
        i32.shr_u
        i32.const 15
        i32.and
        i32.const 1052968
        i32.add
        i32.load8_u
        i32.store8 offset=9
        local.get 1
        i32.const 1
        i32.or
        i32.clz
        i32.const 2
        i32.shr_u
        i32.const 2
        i32.sub
        local.tee 1
        i32.const 11
        i32.ge_u
        if ;; label = @1
          unreachable
        end
        local.get 2
        i32.const 6
        i32.add
        local.get 1
        i32.add
        local.tee 3
        i32.const 1052984
        i32.load16_u align=1
        i32.store16 align=1
        local.get 3
        i32.const 2
        i32.add
        i32.const 1052986
        i32.load8_u
        i32.store8
        local.get 0
        i32.const 10
        i32.store8 offset=11
        local.get 0
        local.get 1
        i32.store8 offset=10
        local.get 0
        local.get 2
        i64.load offset=6 align=2
        i64.store align=1
        local.get 0
        i32.const 8
        i32.add
        local.get 2
        i32.const 14
        i32.add
        i32.load16_u
        i32.store16 align=1
      )
      (func (;52;) (type 0) (param i32 i32) (result i32)
        (local i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 2
        global.set 0
        local.get 2
        i32.const 0
        i32.store offset=12
        local.get 0
        local.get 2
        i32.const 12
        i32.add
        block (result i32) ;; label = @1
          block ;; label = @2
            block ;; label = @3
              local.get 1
              i32.const 128
              i32.ge_u
              if ;; label = @4
                local.get 1
                i32.const 2048
                i32.lt_u
                br_if 1 (;@3;)
                local.get 1
                i32.const 65536
                i32.ge_u
                br_if 2 (;@2;)
                local.get 2
                local.get 1
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=14
                local.get 2
                local.get 1
                i32.const 12
                i32.shr_u
                i32.const 224
                i32.or
                i32.store8 offset=12
                local.get 2
                local.get 1
                i32.const 6
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=13
                i32.const 3
                br 3 (;@1;)
              end
              local.get 2
              local.get 1
              i32.store8 offset=12
              i32.const 1
              br 2 (;@1;)
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 192
            i32.or
            i32.store8 offset=12
            i32.const 2
            br 1 (;@1;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=15
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 18
          i32.shr_u
          i32.const 7
          i32.and
          i32.const 240
          i32.or
          i32.store8 offset=12
          i32.const 4
        end
        call 30
        local.get 2
        i32.const 16
        i32.add
        global.set 0
      )
      (func (;53;) (type 2) (param i32) (result i32)
        (local i32 i32)
        global.get 0
        i32.const 32
        i32.sub
        local.tee 1
        global.set 0
        call 176
        block ;; label = @1
          local.get 0
          i32.load
          local.tee 2
          i32.const 3
          i32.ne
          if ;; label = @2
            block ;; label = @3
              block ;; label = @4
                block ;; label = @5
                  local.get 2
                  i32.const 1
                  i32.sub
                  br_table 2 (;@3;) 0 (;@5;) 1 (;@4;)
                end
                local.get 0
                i32.load offset=4
                drop
                unreachable
              end
              i32.const 1054128
              i64.const 1048576
              i64.store
              i32.const 1054120
              i32.const 0
              i32.store8
              br 2 (;@1;)
            end
            i32.const 1054120
            i32.const 1
            i32.store8
            i32.const 1054128
            i32.const 1
            i32.store8
            br 1 (;@1;)
          end
          unreachable
        end
        local.get 1
        i32.const 32
        i32.add
        global.set 0
        i32.const 1054120
      )
      (func (;54;) (type 2) (param i32) (result i32)
        (local i32 i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 2
        global.set 0
        call 176
        local.get 0
        i32.load
        local.tee 1
        i32.const 2
        i32.ne
        if ;; label = @1
          local.get 2
          local.get 1
          local.get 0
          i32.const 4
          i32.add
          i32.load
          call 89
          block ;; label = @2
            i32.const 1053964
            block (result i32) ;; label = @3
              local.get 2
              i32.load8_u offset=1
              local.tee 1
              local.get 2
              i32.load8_u
              i32.const 1
              i32.and
              br_if 0 (;@3;)
              drop
              i32.const 24
              local.get 1
              i32.const 3
              i32.ne
              br_if 0 (;@3;)
              drop
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.set 1
              local.get 0
              i32.load
              if ;; label = @4
                local.get 1
                i32.load offset=8
                drop
                unreachable
              end
              i32.const 12
              i32.const 4
              call 167
              local.tee 0
              i32.const 0
              i32.store offset=8
              local.get 0
              local.get 1
              i32.store offset=4
              local.get 0
              i32.const 1
              i32.store
              i32.const 1053964
              local.get 0
              call 10
              i32.store
              i32.const 1053960
              i32.const 0
              i32.store8
              br 1 (;@2;)
            end
            i32.store8
            i32.const 1053960
            i32.const 1
            i32.store8
          end
          local.get 2
          i32.const 16
          i32.add
          global.set 0
          i32.const 1053960
          return
        end
        unreachable
      )
      (func (;55;) (type 6) (param i32 i32 i32 i32)
        (local i32 i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 4
        global.set 0
        local.get 0
        block (result i32) ;; label = @1
          block ;; label = @2
            block ;; label = @3
              local.get 1
              if ;; label = @4
                local.get 2
                i32.const 0
                i32.lt_s
                br_if 1 (;@3;)
                block (result i32) ;; label = @5
                  local.get 3
                  i32.load offset=4
                  if ;; label = @6
                    local.get 3
                    i32.const 8
                    i32.add
                    i32.load
                    local.tee 5
                    i32.eqz
                    if ;; label = @7
                      local.get 4
                      i32.const 8
                      i32.add
                      local.get 1
                      local.get 2
                      call 137
                      local.get 4
                      i32.load offset=8
                      local.set 3
                      local.get 4
                      i32.load offset=12
                      br 2 (;@5;)
                    end
                    local.get 3
                    i32.load
                    local.get 5
                    local.get 1
                    local.get 2
                    call 107
                    local.set 3
                    local.get 2
                    br 1 (;@5;)
                  end
                  local.get 4
                  local.get 1
                  local.get 2
                  call 137
                  local.get 4
                  i32.load
                  local.set 3
                  local.get 4
                  i32.load offset=4
                end
                local.set 5
                local.get 3
                if ;; label = @5
                  local.get 0
                  local.get 3
                  i32.store offset=4
                  local.get 0
                  i32.const 8
                  i32.add
                  local.get 5
                  i32.store
                  i32.const 0
                  br 4 (;@1;)
                end
                local.get 0
                local.get 1
                i32.store offset=4
                local.get 0
                i32.const 8
                i32.add
                local.get 2
                i32.store
                br 2 (;@2;)
              end
              local.get 0
              i32.const 0
              i32.store offset=4
              local.get 0
              i32.const 8
              i32.add
              local.get 2
              i32.store
              br 1 (;@2;)
            end
            local.get 0
            i32.const 0
            i32.store offset=4
          end
          i32.const 1
        end
        i32.store
        local.get 4
        i32.const 16
        i32.add
        global.set 0
      )
      (func (;56;) (type 6) (param i32 i32 i32 i32)
        (local i32 i32 i32)
        global.get 0
        i32.const 32
        i32.sub
        local.tee 4
        global.set 0
        block (result i32) ;; label = @1
          i32.const 0
          local.get 2
          local.get 3
          i32.add
          local.tee 3
          local.get 2
          i32.lt_u
          br_if 0 (;@1;)
          drop
          i32.const 4
          local.get 1
          i32.load offset=4
          local.tee 2
          i32.const 1
          i32.shl
          local.tee 5
          local.get 3
          local.get 3
          local.get 5
          i32.lt_u
          select
          local.tee 3
          local.get 3
          i32.const 4
          i32.le_u
          select
          local.tee 3
          i32.const 44
          i32.mul
          local.set 5
          local.get 3
          i32.const 48806447
          i32.lt_u
          i32.const 2
          i32.shl
          local.set 6
          block ;; label = @2
            local.get 2
            if ;; label = @3
              local.get 4
              i32.const 4
              i32.store offset=24
              local.get 4
              local.get 2
              i32.const 44
              i32.mul
              i32.store offset=28
              local.get 4
              local.get 1
              i32.load
              i32.store offset=20
              br 1 (;@2;)
            end
            local.get 4
            i32.const 0
            i32.store offset=24
          end
          local.get 4
          i32.const 8
          i32.add
          local.get 6
          local.get 5
          local.get 4
          i32.const 20
          i32.add
          call 55
          local.get 4
          i32.load offset=8
          i32.eqz
          if ;; label = @2
            local.get 4
            i32.load offset=12
            local.set 2
            local.get 1
            local.get 3
            i32.store offset=4
            local.get 1
            local.get 2
            i32.store
            i32.const -2147483647
            br 1 (;@1;)
          end
          local.get 4
          i32.const 16
          i32.add
          i32.load
          local.set 3
          local.get 4
          i32.load offset=12
        end
        local.set 5
        local.get 0
        local.get 3
        i32.store offset=4
        local.get 0
        local.get 5
        i32.store
        local.get 4
        i32.const 32
        i32.add
        global.set 0
      )
      (func (;57;) (type 1) (param i32 i32 i32) (result i32)
        (local i32 i32 i32)
        global.get 0
        i32.const 32
        i32.sub
        local.tee 4
        global.set 0
        call 176
        block ;; label = @1
          block ;; label = @2
            local.get 0
            i32.load
            local.tee 5
            i32.const 3
            i32.ne
            if ;; label = @3
              i32.const 2
              local.set 3
              block ;; label = @4
                block ;; label = @5
                  block ;; label = @6
                    local.get 5
                    i32.const 1
                    i32.sub
                    br_table 0 (;@6;) 1 (;@5;) 2 (;@4;)
                  end
                  i32.const 1
                  local.set 3
                  br 1 (;@4;)
                end
                local.get 0
                i32.load offset=4
                drop
                unreachable
              end
              local.get 1
              local.get 2
              call 181
              local.get 3
              i32.const 2
              i32.eq
              if ;; label = @4
                i32.const 1054120
                i32.const 0
                i32.store8
                br 3 (;@1;)
              end
              i32.const 1054120
              i32.const 1
              i32.store8
              local.get 3
              i32.eqz
              br_if 1 (;@2;)
              i32.const 1054124
              i32.const 1
              i32.store8
              br 2 (;@1;)
            end
            unreachable
          end
          i32.const 1054128
          i32.const 0
          i32.store
          i32.const 1054124
          i32.const 0
          i32.store8
        end
        local.get 4
        i32.const 32
        i32.add
        global.set 0
        i32.const 1054120
      )
      (func (;58;) (type 4) (param i32 i32)
        (local i32 i32 i32 i32)
        global.get 0
        i32.const 32
        i32.sub
        local.tee 2
        global.set 0
        block (result i32) ;; label = @1
          i32.const 0
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.eqz
          br_if 0 (;@1;)
          drop
          i32.const 4
          local.get 0
          i32.load offset=4
          local.tee 3
          i32.const 1
          i32.shl
          local.tee 4
          local.get 1
          local.get 1
          local.get 4
          i32.lt_u
          select
          local.tee 1
          local.get 1
          i32.const 4
          i32.le_u
          select
          local.tee 1
          i32.const 2
          i32.shl
          local.set 4
          local.get 1
          i32.const 536870912
          i32.lt_u
          i32.const 2
          i32.shl
          local.set 5
          block ;; label = @2
            local.get 3
            if ;; label = @3
              local.get 2
              i32.const 4
              i32.store offset=24
              local.get 2
              local.get 3
              i32.const 2
              i32.shl
              i32.store offset=28
              local.get 2
              local.get 0
              i32.load
              i32.store offset=20
              br 1 (;@2;)
            end
            local.get 2
            i32.const 0
            i32.store offset=24
          end
          local.get 2
          i32.const 8
          i32.add
          local.get 5
          local.get 4
          local.get 2
          i32.const 20
          i32.add
          call 55
          local.get 2
          i32.load offset=8
          i32.eqz
          if ;; label = @2
            local.get 2
            i32.load offset=12
            local.set 3
            local.get 0
            local.get 1
            i32.store offset=4
            local.get 0
            local.get 3
            i32.store
            i32.const -2147483647
            br 1 (;@1;)
          end
          local.get 2
          i32.const 16
          i32.add
          i32.load
          local.set 1
          local.get 2
          i32.load offset=12
        end
        local.get 1
        call 184
        local.get 2
        i32.const 32
        i32.add
        global.set 0
      )
      (func (;59;) (type 6) (param i32 i32 i32 i32)
        (local i32 i32)
        global.get 0
        i32.const 32
        i32.sub
        local.tee 4
        global.set 0
        block (result i32) ;; label = @1
          i32.const 0
          local.get 2
          local.get 3
          i32.add
          local.tee 3
          local.get 2
          i32.lt_u
          br_if 0 (;@1;)
          drop
          i32.const 8
          local.get 1
          i32.load offset=4
          local.tee 2
          i32.const 1
          i32.shl
          local.tee 5
          local.get 3
          local.get 3
          local.get 5
          i32.lt_u
          select
          local.tee 3
          local.get 3
          i32.const 8
          i32.le_u
          select
          local.tee 3
          i32.const -1
          i32.xor
          i32.const 31
          i32.shr_u
          local.set 5
          block ;; label = @2
            local.get 2
            if ;; label = @3
              local.get 4
              local.get 2
              i32.store offset=28
              local.get 4
              i32.const 1
              i32.store offset=24
              local.get 4
              local.get 1
              i32.load
              i32.store offset=20
              br 1 (;@2;)
            end
            local.get 4
            i32.const 0
            i32.store offset=24
          end
          local.get 4
          i32.const 8
          i32.add
          local.get 5
          local.get 3
          local.get 4
          i32.const 20
          i32.add
          call 55
          local.get 4
          i32.load offset=8
          i32.eqz
          if ;; label = @2
            local.get 4
            i32.load offset=12
            local.set 2
            local.get 1
            local.get 3
            i32.store offset=4
            local.get 1
            local.get 2
            i32.store
            i32.const -2147483647
            br 1 (;@1;)
          end
          local.get 4
          i32.const 16
          i32.add
          i32.load
          local.set 3
          local.get 4
          i32.load offset=12
        end
        local.set 5
        local.get 0
        local.get 3
        i32.store offset=4
        local.get 0
        local.get 5
        i32.store
        local.get 4
        i32.const 32
        i32.add
        global.set 0
      )
      (func (;60;) (type 4) (param i32 i32)
        (local i32 i32)
        global.get 0
        i32.const 112
        i32.sub
        local.tee 2
        global.set 0
        block ;; label = @1
          block ;; label = @2
            block ;; label = @3
              block ;; label = @4
                block ;; label = @5
                  block ;; label = @6
                    local.get 1
                    i32.load offset=4
                    i32.const 1
                    i32.sub
                    br_table 0 (;@6;) 1 (;@5;) 1 (;@5;) 4 (;@2;) 2 (;@4;)
                  end
                  local.get 0
                  local.get 1
                  i32.const 12
                  i32.add
                  i64.load32_u
                  i64.store offset=8
                  br 2 (;@3;)
                end
                local.get 0
                i64.const 0
                i64.store offset=8
                br 1 (;@3;)
              end
              local.get 0
              local.get 1
              i32.const 12
              i32.add
              i64.load32_u
              i64.store offset=8
            end
            i32.const 0
            local.set 1
            br 1 (;@1;)
          end
          local.get 2
          i32.const 8
          i32.add
          local.get 1
          i32.load offset=8
          call 110
          local.get 2
          i32.const 16
          i32.add
          local.get 2
          i32.load offset=8
          local.get 2
          i32.load offset=12
          call 25
          local.get 2
          i32.load offset=16
          local.tee 3
          if ;; label = @2
            i32.const 0
            local.set 1
            local.get 2
            i32.const 16
            i32.add
            local.get 3
            i32.load
            i32.const 0
            local.get 2
            i32.load offset=20
            local.get 2
            i32.const 24
            i32.add
            i32.load
            call 39
            local.get 2
            i64.load offset=88
            i64.const 2
            i64.ne
            if ;; label = @3
              local.get 0
              local.get 2
              i64.load offset=32
              i64.store offset=8
              br 2 (;@1;)
            end
            local.get 0
            local.get 2
            i32.load8_u offset=16
            i32.store8 offset=1
            i32.const 1
            local.set 1
            br 1 (;@1;)
          end
          local.get 0
          i32.const 20
          i32.store8 offset=1
          i32.const 1
          local.set 1
        end
        local.get 0
        local.get 1
        i32.store8
        local.get 2
        i32.const 112
        i32.add
        global.set 0
      )
      (func (;61;) (type 2) (param i32) (result i32)
        local.get 0
        i32.const 48
        call 213
      )
      (func (;62;) (type 7) (param i32 i64) (result i32)
        (local i32 i32)
        global.get 0
        i32.const 32
        i32.sub
        local.tee 2
        global.set 0
        call 176
        block ;; label = @1
          local.get 0
          i32.load
          local.tee 3
          i32.const 3
          i32.ne
          if ;; label = @2
            block ;; label = @3
              block ;; label = @4
                block ;; label = @5
                  local.get 3
                  i32.const 1
                  i32.sub
                  br_table 2 (;@3;) 0 (;@5;) 1 (;@4;)
                end
                local.get 0
                i32.load offset=4
                drop
                unreachable
              end
              i32.const 1054120
              i32.const 0
              i32.store8
              br 2 (;@1;)
            end
            i32.const 1054120
            i32.const 1
            i32.store8
            i32.const 1054124
            i32.const 1
            i32.store8
            br 1 (;@1;)
          end
          unreachable
        end
        local.get 2
        i32.const 32
        i32.add
        global.set 0
        i32.const 1054120
      )
      (func (;63;) (type 14) (param i32 i32 i64)
        (local i32)
        global.get 0
        i32.const 32
        i32.sub
        local.tee 3
        global.set 0
        block ;; label = @1
          block ;; label = @2
            block ;; label = @3
              block ;; label = @4
                block ;; label = @5
                  local.get 1
                  i32.load
                  i32.const 1
                  i32.sub
                  br_table 1 (;@4;) 2 (;@3;) 3 (;@2;) 0 (;@5;)
                end
                local.get 0
                i32.const 0
                i32.store offset=8
                local.get 0
                i64.const 1
                i64.store align=4
                br 3 (;@1;)
              end
              local.get 0
              i64.const 4294967296
              i64.store align=4
              br 2 (;@1;)
            end
            local.get 0
            local.get 1
            local.get 2
            call 28
            br 1 (;@1;)
          end
          local.get 1
          i32.load offset=4
          drop
          unreachable
        end
        local.get 3
        i32.const 32
        i32.add
        global.set 0
      )
      (func (;64;) (type 2) (param i32) (result i32)
        (local i32 i32)
        global.get 0
        i32.const 32
        i32.sub
        local.tee 1
        global.set 0
        call 176
        block ;; label = @1
          local.get 0
          i32.load
          local.tee 2
          i32.const 3
          i32.ne
          if ;; label = @2
            block ;; label = @3
              block ;; label = @4
                block ;; label = @5
                  local.get 2
                  i32.const 1
                  i32.sub
                  br_table 2 (;@3;) 0 (;@5;) 1 (;@4;)
                end
                local.get 0
                i32.load offset=4
                drop
                unreachable
              end
              i32.const 1054120
              i32.const 0
              i32.store8
              br 2 (;@1;)
            end
            i32.const 1054120
            i32.const 1
            i32.store8
            i32.const 1054124
            i32.const 1
            i32.store8
            br 1 (;@1;)
          end
          unreachable
        end
        local.get 1
        i32.const 32
        i32.add
        global.set 0
        i32.const 1054120
      )
      (func (;65;) (type 2) (param i32) (result i32)
        (local i32 i32 i32 i32)
        local.get 0
        i32.load
        local.tee 1
        local.get 0
        i32.load offset=4
        i32.eq
        if ;; label = @1
          i32.const 1114112
          return
        end
        local.get 0
        local.get 1
        i32.const 1
        i32.add
        i32.store
        local.get 1
        i32.load8_u
        local.tee 3
        i32.extend8_s
        i32.const 0
        i32.lt_s
        if (result i32) ;; label = @1
          local.get 0
          local.get 1
          i32.const 2
          i32.add
          i32.store
          local.get 1
          i32.load8_u offset=1
          i32.const 63
          i32.and
          local.set 2
          local.get 3
          i32.const 31
          i32.and
          local.set 4
          local.get 3
          i32.const 223
          i32.le_u
          if ;; label = @2
            local.get 4
            i32.const 6
            i32.shl
            local.get 2
            i32.or
            return
          end
          local.get 0
          local.get 1
          i32.const 3
          i32.add
          i32.store
          local.get 1
          i32.load8_u offset=2
          i32.const 63
          i32.and
          local.get 2
          i32.const 6
          i32.shl
          i32.or
          local.set 2
          local.get 3
          i32.const 240
          i32.lt_u
          if ;; label = @2
            local.get 2
            local.get 4
            i32.const 12
            i32.shl
            i32.or
            return
          end
          local.get 0
          local.get 1
          i32.const 4
          i32.add
          i32.store
          local.get 4
          i32.const 18
          i32.shl
          i32.const 1835008
          i32.and
          local.get 1
          i32.load8_u offset=3
          i32.const 63
          i32.and
          local.get 2
          i32.const 6
          i32.shl
          i32.or
          i32.or
        else
          local.get 3
        end
      )
      (func (;66;) (type 2) (param i32) (result i32)
        (local i32)
        global.get 0
        i32.const 80
        i32.sub
        local.tee 1
        global.set 0
        call 176
        block ;; label = @1
          local.get 0
          i32.load8_u
          i32.const 2
          i32.eq
          br_if 0 (;@1;)
          local.get 1
          local.get 0
          i32.store offset=32
          local.get 1
          i32.const 48
          i32.add
          i64.const 1
          i64.store align=4
          local.get 1
          i32.const 1
          i32.store offset=40
          local.get 1
          i32.const 1048596
          i32.store offset=36
          local.get 1
          i32.const 7
          i32.store offset=64
          local.get 1
          local.get 1
          i32.const 60
          i32.add
          i32.store offset=44
          local.get 1
          local.get 1
          i32.const 32
          i32.add
          i32.store offset=60
          local.get 1
          i32.const 8
          i32.add
          i32.const 0
          call 92
          local.get 1
          i32.const 0
          i32.store offset=76
          local.get 1
          local.get 1
          i64.load offset=8
          i64.store offset=68 align=4
          local.get 1
          i32.const 68
          i32.add
          local.get 1
          i32.const 36
          i32.add
          call 130
          br_if 0 (;@1;)
          local.get 1
          i32.const 24
          i32.add
          local.get 1
          i32.const 76
          i32.add
          i32.load
          i32.store
          local.get 1
          local.get 1
          i64.load offset=68 align=4
          i64.store offset=16
          local.get 1
          local.get 1
          i32.const 16
          i32.add
          call 79
          i32.const 1054120
          local.get 1
          i64.load
          i64.store
          local.get 1
          i32.const 80
          i32.add
          global.set 0
          i32.const 1054120
          return
        end
        unreachable
      )
      (func (;67;) (type 2) (param i32) (result i32)
        local.get 0
        i32.const 16
        call 213
      )
      (func (;68;) (type 9) (param i32 i32 i32)
        (local i32)
        global.get 0
        i32.const 16
        i32.sub
        global.set 0
        block ;; label = @1
          local.get 2
          i32.const 2
          i32.shl
          local.tee 0
          if ;; label = @2
            i32.const 4
            local.get 0
            call 183
            local.tee 3
            i32.eqz
            br_if 1 (;@1;)
          end
          loop ;; label = @2
            local.get 0
            if ;; label = @3
              local.get 3
              local.get 1
              i32.load
              i32.load
              i32.store
              local.get 3
              i32.const 4
              i32.add
              local.set 3
              local.get 0
              i32.const 4
              i32.sub
              local.set 0
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              br 1 (;@2;)
            else
              unreachable
            end
            unreachable
          end
          unreachable
        end
        unreachable
      )
      (func (;69;) (type 7) (param i32 i64) (result i32)
        (local i32)
        global.get 0
        i32.const 48
        i32.sub
        local.tee 2
        global.set 0
        call 176
        block ;; label = @1
          block ;; label = @2
            local.get 0
            i32.load
            i32.const 4
            i32.ne
            if ;; label = @3
              local.get 2
              i32.const 20
              i32.add
              local.get 0
              local.get 1
              call 63
              local.get 2
              i32.load offset=20
              if ;; label = @4
                local.get 2
                i32.const 40
                i32.add
                local.get 2
                i32.const 28
                i32.add
                i32.load
                i32.store
                local.get 2
                local.get 2
                i64.load offset=20 align=4
                i64.store offset=32
                i32.const 1054120
                i32.const 0
                i32.store8
                local.get 2
                i32.const 8
                i32.add
                local.get 2
                i32.const 32
                i32.add
                call 79
                i32.const 1054124
                local.get 2
                i64.load offset=8
                i64.store align=4
                br 3 (;@1;)
              end
              i32.const 1054120
              i32.const 1
              i32.store8
              local.get 2
              i32.load offset=24
              i32.eqz
              br_if 1 (;@2;)
              i32.const 1054124
              i32.const 1
              i32.store8
              br 2 (;@1;)
            end
            unreachable
          end
          i32.const 1054128
          local.get 2
          i32.const 28
          i32.add
          i32.load
          i32.store
          i32.const 1054124
          i32.const 0
          i32.store8
        end
        local.get 2
        i32.const 48
        i32.add
        global.set 0
        i32.const 1054120
      )
      (func (;70;) (type 7) (param i32 i64) (result i32)
        (local i32)
        global.get 0
        i32.const 48
        i32.sub
        local.tee 2
        global.set 0
        call 176
        block ;; label = @1
          block ;; label = @2
            local.get 0
            i32.load
            i32.const 4
            i32.ne
            if ;; label = @3
              local.get 2
              i32.const 20
              i32.add
              local.get 0
              local.get 1
              call 28
              local.get 2
              i32.load offset=20
              if ;; label = @4
                local.get 2
                i32.const 40
                i32.add
                local.get 2
                i32.const 28
                i32.add
                i32.load
                i32.store
                local.get 2
                local.get 2
                i64.load offset=20 align=4
                i64.store offset=32
                i32.const 1054120
                i32.const 0
                i32.store8
                local.get 2
                i32.const 8
                i32.add
                local.get 2
                i32.const 32
                i32.add
                call 79
                i32.const 1054124
                local.get 2
                i64.load offset=8
                i64.store align=4
                br 3 (;@1;)
              end
              i32.const 1054120
              i32.const 1
              i32.store8
              local.get 2
              i32.load offset=24
              i32.eqz
              br_if 1 (;@2;)
              i32.const 1054124
              i32.const 1
              i32.store8
              br 2 (;@1;)
            end
            unreachable
          end
          i32.const 1054128
          local.get 2
          i32.const 28
          i32.add
          i32.load
          i32.store
          i32.const 1054124
          i32.const 0
          i32.store8
        end
        local.get 2
        i32.const 48
        i32.add
        global.set 0
        i32.const 1054120
      )
      (func (;71;) (type 2) (param i32) (result i32)
        (local i32 i32)
        global.get 0
        i32.const 32
        i32.sub
        local.tee 1
        global.set 0
        call 176
        local.get 0
        i32.load
        local.tee 2
        i32.const 2
        i32.ne
        if ;; label = @1
          local.get 0
          i32.load offset=4
          local.set 0
          i32.const 1053976
          block (result i64) ;; label = @2
            local.get 2
            i32.eqz
            if ;; label = @3
              local.get 0
              i32.const 1053916
              i32.load
              i32.sub
              i32.const 4
              i32.shr_u
              i64.extend_i32_u
              br 1 (;@2;)
            end
            local.get 0
            i32.load offset=8
            drop
            unreachable
          end
          i64.store
          i32.const 1053968
          i64.const 0
          i64.store
          i32.const 1053960
          i32.const 0
          i32.store8
          local.get 1
          i32.const 32
          i32.add
          global.set 0
          i32.const 1053960
          return
        end
        unreachable
      )
      (func (;72;) (type 20) (param i32 i32 i32 i64)
        (local i32)
        global.get 0
        i32.const 32
        i32.sub
        local.tee 4
        global.set 0
        local.get 4
        block (result i32) ;; label = @1
          local.get 1
          i32.eqz
          if ;; label = @2
            local.get 4
            local.get 3
            i64.store offset=16
            local.get 4
            local.get 2
            i32.store offset=12
            i32.const 2
            br 1 (;@1;)
          end
          local.get 2
          i32.load offset=8
          drop
          unreachable
        end
        i32.store offset=8
        local.get 4
        i32.const 8
        i32.add
        call 136
        local.set 1
        local.get 0
        i32.const 0
        i32.store8
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 4
        i32.const 32
        i32.add
        global.set 0
      )
      (func (;73;) (type 0) (param i32 i32) (result i32)
        local.get 0
        local.get 1
        i32.const 55
        call 209
      )
      (func (;74;) (type 0) (param i32 i32) (result i32)
        local.get 0
        local.get 1
        i32.const 87
        call 209
      )
      (func (;75;) (type 1) (param i32 i32 i32) (result i32)
        (local i32)
        block ;; label = @1
          local.get 1
          local.get 2
          i32.gt_u
          if (result i32) ;; label = @2
            local.get 2
            i32.const 3
            i32.sub
            local.tee 1
            i32.const 0
            local.get 1
            local.get 2
            i32.le_u
            select
            local.tee 3
            local.get 2
            i32.const 1
            i32.add
            local.tee 1
            i32.gt_u
            br_if 1 (;@1;)
            local.get 0
            local.get 1
            i32.add
            local.get 0
            local.get 3
            i32.add
            i32.sub
            local.set 1
            local.get 0
            local.get 2
            i32.add
            local.set 2
            loop ;; label = @3
              local.get 1
              if ;; label = @4
                local.get 1
                i32.const 1
                i32.sub
                local.set 1
                local.get 2
                i32.load8_s
                local.get 2
                i32.const 1
                i32.sub
                local.set 2
                i32.const -64
                i32.lt_s
                br_if 1 (;@3;)
              end
            end
            local.get 1
            local.get 3
            i32.add
          else
            local.get 1
          end
          return
        end
        unreachable
      )
      (func (;76;) (type 9) (param i32 i32 i32)
        (local i32 i32 i32)
        block ;; label = @1
          block ;; label = @2
            block ;; label = @3
              local.get 1
              i32.load8_u offset=32
              local.tee 3
              i32.const 1
              i32.sub
              br_table 0 (;@3;) 1 (;@2;) 0 (;@3;) 2 (;@1;)
            end
            local.get 2
            local.set 3
            i32.const 0
            local.set 2
            br 1 (;@1;)
          end
          local.get 2
          i32.const 1
          i32.shr_u
          local.set 3
          local.get 2
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set 2
        end
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 1
        i32.const 24
        i32.add
        i32.load
        local.set 5
        local.get 1
        i32.load offset=16
        local.set 4
        local.get 1
        i32.load offset=20
        local.set 1
        block ;; label = @1
          loop ;; label = @2
            local.get 3
            i32.const 1
            i32.sub
            local.tee 3
            i32.eqz
            br_if 1 (;@1;)
            local.get 1
            local.get 4
            local.get 5
            i32.load offset=16
            call_indirect (type 0)
            i32.eqz
            br_if 0 (;@2;)
          end
          i32.const 1114112
          local.set 4
        end
        local.get 0
        local.get 2
        i32.store offset=4
        local.get 0
        local.get 4
        i32.store
      )
      (func (;77;) (type 4) (param i32 i32)
        (local i32 i32 i32)
        block ;; label = @1
          local.get 1
          i32.load offset=4
          i32.const 6
          i32.and
          i32.const 2
          i32.eq
          if ;; label = @2
            local.get 1
            i32.load offset=8
            local.get 1
            i32.const 1053916
            i32.load
            local.tee 3
            i32.sub
            i32.const 4
            i32.shr_u
            i32.add
            local.tee 2
            local.get 1
            i32.const 12
            i32.add
            i32.load
            local.tee 1
            i32.add
            local.tee 4
            local.get 2
            i32.lt_u
            br_if 1 (;@1;)
            local.get 4
            i32.const 1053912
            i32.load
            i32.gt_u
            br_if 1 (;@1;)
            local.get 0
            local.get 1
            i32.store offset=4
            local.get 0
            local.get 3
            local.get 2
            i32.const 4
            i32.shl
            i32.add
            i32.store
            return
          end
          local.get 0
          i32.const 0
          i32.store
          local.get 0
          i32.const 24
          i32.store8 offset=4
          return
        end
        unreachable
      )
      (func (;78;) (type 13) (param i32 i32 i32 i32 i32)
        global.get 0
        i32.const 32
        i32.sub
        global.set 0
        unreachable
      )
      (func (;79;) (type 4) (param i32 i32)
        (local i32 i32 i32 i32)
        local.get 1
        i32.load offset=4
        local.tee 3
        local.get 1
        i32.load offset=8
        local.tee 2
        i32.gt_u
        if ;; label = @1
          local.get 1
          i32.load
          local.set 4
          block (result i32) ;; label = @2
            block ;; label = @3
              local.get 2
              i32.eqz
              if ;; label = @4
                local.get 4
                call 17
                i32.const 1
                local.set 3
                br 1 (;@3;)
              end
              local.get 2
              local.set 5
              i32.const 1
              local.get 4
              local.get 3
              i32.const 1
              local.get 2
              call 107
              local.tee 3
              i32.eqz
              br_if 1 (;@2;)
              drop
            end
            local.get 1
            local.get 5
            i32.store offset=4
            local.get 1
            local.get 3
            i32.store
            i32.const -2147483647
          end
          local.get 2
          call 184
        end
        local.get 0
        local.get 2
        i32.store offset=4
        local.get 0
        local.get 1
        i32.load
        i32.store
      )
      (func (;80;) (type 6) (param i32 i32 i32 i32)
        global.get 0
        i32.const 16
        i32.sub
        global.set 0
        unreachable
      )
      (func (;81;) (type 2) (param i32) (result i32)
        (local i32)
        local.get 0
        i32.load8_u offset=4
        local.set 1
        local.get 0
        i32.load8_u offset=5
        i32.eqz
        if ;; label = @1
          local.get 1
          i32.const 0
          i32.ne
          return
        end
        local.get 0
        block (result i32) ;; label = @1
          i32.const 1
          local.get 1
          br_if 0 (;@1;)
          drop
          local.get 0
          i32.load
          local.tee 0
          i32.load8_u offset=28
          i32.const 4
          i32.and
          i32.eqz
          if ;; label = @2
            local.get 0
            i32.load offset=20
            i32.const 1051077
            i32.const 2
            local.get 0
            i32.load offset=24
            i32.load offset=12
            call_indirect (type 1)
            br 1 (;@1;)
          end
          local.get 0
          i32.load offset=20
          i32.const 1051076
          i32.const 1
          local.get 0
          i32.load offset=24
          i32.load offset=12
          call_indirect (type 1)
        end
        local.tee 0
        i32.store8 offset=4
        local.get 0
      )
      (func (;82;) (type 3) (param i32)
        (local i32 i32 i32)
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 2
        i32.const 0
        local.get 2
        i32.const 0
        i32.gt_s
        select
        local.set 1
        local.get 0
        i32.load
        local.tee 3
        local.set 0
        loop ;; label = @1
          local.get 1
          if ;; label = @2
            local.get 0
            i32.load
            local.get 0
            i32.const 4
            i32.add
            i32.load
            call 181
            local.get 0
            i32.const 8
            i32.add
            i32.load
            local.get 0
            i32.const 12
            i32.add
            i32.load
            call 181
            local.get 1
            i32.const 1
            i32.sub
            local.set 1
            local.get 0
            i32.const 16
            i32.add
            local.set 0
            br 1 (;@1;)
          else
            local.get 3
            local.get 2
            i32.const 4
            i32.shl
            call 181
          end
        end
      )
      (func (;83;) (type 7) (param i32 i64) (result i32)
        (local i32 i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 2
        global.set 0
        call 176
        local.get 0
        i32.load
        local.tee 3
        i32.const 2
        i32.ne
        if ;; label = @1
          local.get 2
          i32.const 8
          i32.add
          local.get 3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.get 1
          call 72
          block ;; label = @2
            local.get 2
            i32.load8_u offset=8
            i32.eqz
            if ;; label = @3
              i32.const 1053964
              local.get 2
              i32.load offset=12
              i32.store
              i32.const 1053960
              i32.const 0
              i32.store8
              br 1 (;@2;)
            end
            i32.const 1053964
            local.get 2
            i32.load8_u offset=9
            i32.store8
            i32.const 1053960
            i32.const 1
            i32.store8
          end
          local.get 2
          i32.const 16
          i32.add
          global.set 0
          i32.const 1053960
          return
        end
        unreachable
      )
      (func (;84;) (type 0) (param i32 i32) (result i32)
        (local i32 i32)
        call 176
        block ;; label = @1
          local.get 0
          i32.load
          local.tee 3
          i32.const 2
          i32.eq
          br_if 0 (;@1;)
          local.get 1
          i32.load
          local.tee 2
          i32.const 2
          i32.eq
          br_if 0 (;@1;)
          block (result i32) ;; label = @2
            local.get 3
            if ;; label = @3
              i32.const 0
              local.get 2
              i32.eqz
              br_if 1 (;@2;)
              drop
              local.get 0
              i32.load offset=4
              i32.load offset=8
              drop
              local.get 1
              i32.load offset=4
              i32.load offset=8
              drop
              unreachable
            end
            i32.const 0
            local.get 0
            local.get 1
            i32.ne
            local.get 2
            i32.or
            br_if 0 (;@2;)
            drop
            i32.const 1
          end
          return
        end
        unreachable
      )
      (func (;85;) (type 5) (result i32)
        (local i32 i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 0
        global.set 0
        call 176
        block ;; label = @1
          block ;; label = @2
            block ;; label = @3
              block ;; label = @4
                i32.const 0
                i32.const 2
                i32.const 1
                i32.const 1053920
                i32.load
                local.tee 1
                i32.const 8
                i32.and
                select
                local.get 1
                i32.const 1
                i32.and
                select
                i32.const 1
                i32.sub
                br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
              end
              unreachable
            end
            local.get 0
            i32.const 1
            i32.store
            br 1 (;@1;)
          end
          local.get 0
          i32.const 0
          i32.store
        end
        local.get 0
        call 136
        local.get 0
        i32.const 16
        i32.add
        global.set 0
      )
      (func (;86;) (type 3) (param i32)
        (local i32 i32 i32)
        local.get 0
        i32.load8_u
        i32.eqz
        if ;; label = @1
          local.get 0
          i32.const 8
          i32.add
          i32.load
          local.tee 2
          i32.const 0
          local.get 2
          i32.const 0
          i32.gt_s
          select
          local.set 1
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.tee 3
          local.set 0
          loop ;; label = @2
            local.get 1
            if ;; label = @3
              local.get 0
              i32.load
              local.get 0
              i32.const 4
              i32.add
              i32.load
              call 181
              local.get 1
              i32.const 1
              i32.sub
              local.set 1
              local.get 0
              i32.const 40
              i32.add
              local.set 0
              br 1 (;@2;)
            else
              local.get 3
              local.get 2
              i32.const 40
              i32.mul
              call 181
            end
          end
        end
      )
      (func (;87;) (type 9) (param i32 i32 i32)
        (local i32 i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 3
        global.set 0
        local.get 2
        local.get 0
        i32.load offset=4
        local.get 0
        i32.load offset=8
        local.tee 4
        i32.sub
        i32.gt_u
        if ;; label = @1
          local.get 3
          i32.const 8
          i32.add
          local.get 0
          local.get 4
          local.get 2
          call 59
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          call 184
          local.get 0
          i32.load offset=8
          local.set 4
        end
        local.get 0
        i32.load
        local.get 4
        i32.add
        local.get 1
        local.get 2
        call 22
        drop
        local.get 0
        local.get 2
        local.get 4
        i32.add
        i32.store offset=8
        local.get 3
        i32.const 16
        i32.add
        global.set 0
      )
      (func (;88;) (type 0) (param i32 i32) (result i32)
        (local i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 2
        global.set 0
        local.get 2
        local.get 0
        i32.load
        i32.store offset=4
        local.get 1
        i32.load offset=20
        i32.const 1051002
        i32.const 5
        local.get 1
        i32.const 24
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 1)
        local.set 0
        local.get 2
        i32.const 0
        i32.store8 offset=13
        local.get 2
        local.get 0
        i32.store8 offset=12
        local.get 2
        local.get 1
        i32.store offset=8
        local.get 2
        i32.const 8
        i32.add
        i32.const 1048584
        i32.const 6
        local.get 2
        i32.const 4
        i32.add
        i32.const 1
        call 37
        call 81
        local.get 2
        i32.const 16
        i32.add
        global.set 0
      )
      (func (;89;) (type 9) (param i32 i32 i32)
        (local i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 3
        global.set 0
        block (result i32) ;; label = @1
          local.get 1
          i32.eqz
          if ;; label = @2
            i32.const 3
            i32.const 6
            local.get 2
            i32.load offset=4
            i32.const 6
            i32.and
            i32.const 2
            i32.eq
            select
            local.set 1
            i32.const 0
            br 1 (;@1;)
          end
          local.get 2
          i32.load offset=8
          drop
          unreachable
        end
        local.set 2
        local.get 0
        local.get 1
        i32.store8 offset=1
        local.get 0
        local.get 2
        i32.store8
        local.get 3
        i32.const 16
        i32.add
        global.set 0
      )
      (func (;90;) (type 4) (param i32 i32)
        (local i32 i32 i32 i32 i32)
        local.get 0
        i32.load offset=8
        local.tee 2
        local.get 0
        i32.load offset=4
        i32.eq
        if ;; label = @1
          global.get 0
          i32.const 32
          i32.sub
          local.tee 3
          global.set 0
          block (result i32) ;; label = @2
            i32.const 0
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            i32.eqz
            br_if 0 (;@2;)
            drop
            i32.const 4
            local.get 0
            i32.load offset=4
            local.tee 4
            i32.const 1
            i32.shl
            local.tee 5
            local.get 2
            local.get 2
            local.get 5
            i32.lt_u
            select
            local.tee 2
            local.get 2
            i32.const 4
            i32.le_u
            select
            local.tee 2
            i32.const 24
            i32.mul
            local.set 5
            local.get 2
            i32.const 89478486
            i32.lt_u
            i32.const 2
            i32.shl
            local.set 6
            block ;; label = @3
              local.get 4
              if ;; label = @4
                local.get 3
                i32.const 4
                i32.store offset=24
                local.get 3
                local.get 4
                i32.const 24
                i32.mul
                i32.store offset=28
                local.get 3
                local.get 0
                i32.load
                i32.store offset=20
                br 1 (;@3;)
              end
              local.get 3
              i32.const 0
              i32.store offset=24
            end
            local.get 3
            i32.const 8
            i32.add
            local.get 6
            local.get 5
            local.get 3
            i32.const 20
            i32.add
            call 55
            local.get 3
            i32.load offset=8
            i32.eqz
            if ;; label = @3
              local.get 3
              i32.load offset=12
              local.set 4
              local.get 0
              local.get 2
              i32.store offset=4
              local.get 0
              local.get 4
              i32.store
              i32.const -2147483647
              br 1 (;@2;)
            end
            local.get 3
            i32.const 16
            i32.add
            i32.load
            local.set 2
            local.get 3
            i32.load offset=12
          end
          local.get 2
          call 184
          local.get 3
          i32.const 32
          i32.add
          global.set 0
          local.get 0
          i32.load offset=8
          local.set 2
        end
        local.get 0
        local.get 2
        i32.const 1
        i32.add
        i32.store offset=8
        local.get 0
        i32.load
        local.get 2
        i32.const 24
        i32.mul
        i32.add
        local.tee 0
        local.get 1
        i64.load align=4
        i64.store align=4
        local.get 0
        i32.const 8
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i64.load align=4
        i64.store align=4
        local.get 0
        i32.const 16
        i32.add
        local.get 1
        i32.const 16
        i32.add
        i64.load align=4
        i64.store align=4
      )
      (func (;91;) (type 0) (param i32 i32) (result i32)
        (local i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 2
        global.set 0
        block (result i32) ;; label = @1
          local.get 0
          i32.load
          local.tee 0
          i32.load8_u
          i32.eqz
          if ;; label = @2
            local.get 2
            local.get 0
            i32.const 1
            i32.add
            i32.store offset=8
            local.get 1
            i32.const 1048604
            local.get 2
            i32.const 8
            i32.add
            i32.const 5
            call 48
            br 1 (;@1;)
          end
          local.get 2
          local.get 0
          i32.const 4
          i32.add
          i32.store offset=12
          local.get 1
          i32.const 1048608
          local.get 2
          i32.const 12
          i32.add
          i32.const 6
          call 48
        end
        local.get 2
        i32.const 16
        i32.add
        global.set 0
      )
      (func (;92;) (type 4) (param i32 i32)
        (local i32 i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 2
        global.set 0
        block ;; label = @1
          block ;; label = @2
            local.get 1
            i32.eqz
            if ;; label = @3
              i32.const 1
              local.set 3
              br 1 (;@2;)
            end
            local.get 1
            i32.const 0
            i32.lt_s
            br_if 1 (;@1;)
            local.get 2
            i32.const 8
            i32.add
            local.get 1
            i32.const -1
            i32.xor
            i32.const 31
            i32.shr_u
            local.get 1
            call 137
            local.get 2
            i32.load offset=8
            local.tee 3
            i32.eqz
            br_if 1 (;@1;)
          end
          local.get 0
          local.get 1
          i32.store offset=4
          local.get 0
          local.get 3
          i32.store
          local.get 2
          i32.const 16
          i32.add
          global.set 0
          return
        end
        unreachable
      )
      (func (;93;) (type 0) (param i32 i32) (result i32)
        (local i32 i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 2
        global.set 0
        local.get 0
        i32.load
        local.set 0
        local.get 1
        i32.load offset=20
        i32.const 1048576
        i32.const 8
        local.get 1
        i32.const 24
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 1)
        local.set 3
        local.get 2
        i32.const 0
        i32.store8 offset=13
        local.get 2
        local.get 3
        i32.store8 offset=12
        local.get 2
        local.get 1
        i32.store offset=8
        local.get 2
        i32.const 8
        i32.add
        i32.const 1048584
        i32.const 6
        local.get 0
        i32.const 2
        call 37
        call 81
        local.get 2
        i32.const 16
        i32.add
        global.set 0
      )
      (func (;94;) (type 3) (param i32)
        (local i32 i32 i32)
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 2
        i32.const 0
        local.get 2
        i32.const 0
        i32.gt_s
        select
        local.set 1
        local.get 0
        i32.load
        local.tee 3
        i32.const 8
        i32.add
        local.set 0
        loop ;; label = @1
          local.get 1
          if ;; label = @2
            local.get 0
            i32.const 4
            i32.sub
            i32.load
            local.get 0
            i32.load
            call 181
            local.get 1
            i32.const 1
            i32.sub
            local.set 1
            local.get 0
            i32.const 12
            i32.add
            local.set 0
            br 1 (;@1;)
          else
            local.get 3
            local.get 2
            i32.const 12
            i32.mul
            call 181
          end
        end
      )
      (func (;95;) (type 0) (param i32 i32) (result i32)
        global.get 0
        i32.const 16
        i32.sub
        global.set 0
        call 176
        local.get 0
        i32.load
        if ;; label = @1
          local.get 0
          i32.load offset=4
          drop
          unreachable
        end
        unreachable
      )
      (func (;96;) (type 3) (param i32)
        (local i32 i32 i32)
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 2
        i32.const 0
        local.get 2
        i32.const 0
        i32.gt_s
        select
        local.set 1
        local.get 0
        i32.load
        local.tee 3
        local.set 0
        loop ;; label = @1
          local.get 1
          if ;; label = @2
            local.get 0
            i32.load
            local.get 0
            i32.const 4
            i32.add
            i32.load
            call 181
            local.get 1
            i32.const 1
            i32.sub
            local.set 1
            local.get 0
            i32.const 8
            i32.add
            local.set 0
            br 1 (;@1;)
          else
            local.get 3
            local.get 2
            i32.const 3
            i32.shl
            call 181
          end
        end
      )
      (func (;97;) (type 3) (param i32)
        (local i32 i32)
        global.get 0
        i32.const 32
        i32.sub
        local.tee 1
        global.set 0
        call 176
        local.get 0
        i32.load
        i32.const 2
        i32.eq
        if ;; label = @1
          unreachable
        end
        i32.const 4
        i32.const 4
        call 167
        local.tee 2
        local.get 0
        i32.store
        local.get 1
        i64.const 4294967297
        i64.store offset=24 align=4
        local.get 1
        local.get 2
        i32.store offset=20
        local.get 1
        i32.const 8
        i32.add
        local.get 1
        i32.const 20
        i32.add
        call 24
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=12
        call 171
        local.get 1
        i32.const 32
        i32.add
        global.set 0
      )
      (func (;98;) (type 7) (param i32 i64) (result i32)
        global.get 0
        i32.const 16
        i32.sub
        global.set 0
        call 176
        local.get 0
        i32.load
        if ;; label = @1
          local.get 0
          i32.load offset=4
          drop
          unreachable
        end
        unreachable
      )
      (func (;99;) (type 0) (param i32 i32) (result i32)
        (local i32)
        local.get 1
        i32.load offset=28
        local.tee 2
        i32.const 16
        i32.and
        i32.eqz
        if ;; label = @1
          local.get 2
          i32.const 32
          i32.and
          i32.eqz
          if ;; label = @2
            local.get 0
            i32.load
            local.tee 0
            i64.extend_i32_u
            local.get 0
            i32.const -1
            i32.xor
            i64.extend_i32_s
            i64.const 1
            i64.add
            local.get 0
            i32.const 0
            i32.ge_s
            local.tee 0
            select
            local.get 0
            local.get 1
            call 40
            return
          end
          local.get 0
          i32.load
          local.get 1
          call 73
          return
        end
        local.get 0
        i32.load
        local.get 1
        call 74
      )
      (func (;100;) (type 6) (param i32 i32 i32 i32)
        (local i32 i32)
        local.get 1
        i32.const 255
        i32.and
        local.set 5
        i32.const 0
        local.set 1
        loop ;; label = @1
          block ;; label = @2
            local.get 1
            local.get 3
            i32.eq
            if ;; label = @3
              local.get 3
              local.set 1
              br 1 (;@2;)
            end
            local.get 5
            local.get 1
            local.get 2
            i32.add
            i32.load8_u
            i32.eq
            if ;; label = @3
              i32.const 1
              local.set 4
            else
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              br 2 (;@1;)
            end
          end
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        local.get 4
        i32.store
      )
      (func (;101;) (type 2) (param i32) (result i32)
        global.get 0
        i32.const 16
        i32.sub
        global.set 0
        call 176
        local.get 0
        i32.load
        i32.eqz
        if ;; label = @1
          unreachable
        end
        local.get 0
        i32.load offset=4
        drop
        unreachable
      )
      (func (;102;) (type 9) (param i32 i32 i32)
        (local i32 i32)
        block ;; label = @1
          block (result i32) ;; label = @2
            block ;; label = @3
              block ;; label = @4
                local.get 2
                i32.load
                i32.const 1
                i32.sub
                br_table 1 (;@3;) 3 (;@1;) 0 (;@4;)
              end
              local.get 2
              i32.const 4
              i32.add
              br 1 (;@2;)
            end
            local.get 1
            local.get 2
            i32.load offset=4
            i32.const 3
            i32.shl
            i32.add
            local.tee 1
            i32.load offset=4
            i32.const 8
            i32.ne
            br_if 1 (;@1;)
            local.get 1
            i32.load
          end
          i32.load
          local.set 4
          i32.const 1
          local.set 3
        end
        local.get 0
        local.get 4
        i32.store offset=4
        local.get 0
        local.get 3
        i32.store
      )
      (func (;103;) (type 6) (param i32 i32 i32 i32)
        block ;; label = @1
          local.get 3
          i32.eqz
          br_if 0 (;@1;)
          block ;; label = @2
            local.get 2
            local.get 3
            i32.le_u
            if ;; label = @3
              local.get 2
              local.get 3
              i32.ne
              br_if 1 (;@2;)
              br 2 (;@1;)
            end
            local.get 1
            local.get 3
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            br_if 1 (;@1;)
          end
          local.get 1
          local.get 2
          local.get 3
          local.get 2
          call 182
          unreachable
        end
        local.get 0
        local.get 2
        local.get 3
        i32.sub
        i32.store offset=4
        local.get 0
        local.get 1
        local.get 3
        i32.add
        i32.store
      )
      (func (;104;) (type 2) (param i32) (result i32)
        (local i32 i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 1
        global.set 0
        call 176
        local.get 0
        i32.load
        local.tee 2
        i32.const 2
        i32.eq
        if ;; label = @1
          unreachable
        end
        local.get 1
        i32.const 8
        i32.add
        local.get 2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        call 89
        i32.const 1053961
        local.get 1
        i32.load8_u offset=9
        i32.store8
        i32.const 1053960
        local.get 1
        i32.load8_u offset=8
        i32.const 1
        i32.and
        i32.store8
        local.get 1
        i32.const 16
        i32.add
        global.set 0
        i32.const 1053960
      )
      (func (;105;) (type 4) (param i32 i32)
        (local i32 i32 i32 i32)
        local.get 1
        local.get 1
        i32.load
        local.tee 1
        i32.const 4
        i32.add
        local.tee 2
        i32.const 1053860
        i32.load
        local.tee 3
        local.get 1
        i32.add
        i32.load
        local.tee 4
        i32.add
        local.tee 1
        local.get 1
        i32.const 4
        i32.rem_s
        local.tee 5
        i32.sub
        i32.const 4
        i32.add
        local.get 1
        local.get 5
        i32.const 0
        i32.gt_s
        select
        i32.store
        local.get 0
        local.get 4
        i32.store offset=4
        local.get 0
        local.get 2
        local.get 3
        i32.add
        i32.store
      )
      (func (;106;) (type 2) (param i32) (result i32)
        local.get 0
        i32.eqz
        if ;; label = @1
          memory.size
          i32.const 16
          i32.shl
          return
        end
        local.get 0
        i32.const 65535
        i32.and
        local.get 0
        i32.const 0
        i32.lt_s
        i32.or
        i32.eqz
        if ;; label = @1
          local.get 0
          i32.const 16
          i32.shr_u
          memory.grow
          local.tee 0
          i32.const -1
          i32.eq
          if ;; label = @2
            i32.const 1054740
            i32.const 48
            i32.store
            i32.const -1
            return
          end
          local.get 0
          i32.const 16
          i32.shl
          return
        end
        unreachable
      )
      (func (;107;) (type 8) (param i32 i32 i32 i32) (result i32)
        (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
        local.get 2
        i32.const 8
        i32.le_u
        local.get 2
        local.get 3
        i32.le_u
        i32.and
        i32.eqz
        if ;; label = @1
          local.get 2
          local.get 3
          call 166
          local.tee 2
          i32.eqz
          if ;; label = @2
            i32.const 0
            return
          end
          local.get 2
          local.get 0
          local.get 1
          local.get 3
          local.get 1
          local.get 3
          i32.lt_u
          select
          call 22
          local.get 0
          call 17
          return
        end
        block (result i32) ;; label = @1
          local.get 0
          i32.eqz
          if ;; label = @2
            local.get 3
            call 12
            br 1 (;@1;)
          end
          local.get 3
          i32.const -64
          i32.ge_u
          if ;; label = @2
            i32.const 1054740
            i32.const 48
            i32.store
            i32.const 0
            br 1 (;@1;)
          end
          i32.const 16
          local.get 3
          i32.const 19
          i32.add
          i32.const -16
          i32.and
          local.get 3
          i32.const 11
          i32.lt_u
          select
          local.set 4
          local.get 0
          i32.const 4
          i32.sub
          local.tee 8
          i32.load
          local.tee 9
          i32.const -8
          i32.and
          local.set 1
          block ;; label = @2
            block ;; label = @3
              local.get 9
              i32.const 3
              i32.and
              i32.eqz
              if ;; label = @4
                local.get 4
                i32.const 256
                i32.lt_u
                local.get 1
                local.get 4
                i32.const 4
                i32.or
                i32.lt_u
                i32.or
                br_if 1 (;@3;)
                local.get 1
                local.get 4
                i32.sub
                i32.const 1054724
                i32.load
                i32.const 1
                i32.shl
                i32.le_u
                br_if 2 (;@2;)
                br 1 (;@3;)
              end
              local.get 0
              i32.const 8
              i32.sub
              local.tee 6
              local.get 1
              i32.add
              local.set 5
              local.get 1
              local.get 4
              i32.ge_u
              if ;; label = @4
                local.get 1
                local.get 4
                i32.sub
                local.tee 1
                i32.const 16
                i32.lt_u
                br_if 2 (;@2;)
                local.get 8
                local.get 4
                local.get 9
                i32.const 1
                i32.and
                i32.or
                i32.const 2
                i32.or
                i32.store
                local.get 4
                local.get 6
                i32.add
                local.tee 2
                local.get 1
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 5
                local.get 5
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 2
                local.get 1
                call 18
                local.get 0
                br 3 (;@1;)
              end
              i32.const 1054268
              i32.load
              local.get 5
              i32.eq
              if ;; label = @4
                i32.const 1054256
                i32.load
                local.get 1
                i32.add
                local.tee 1
                local.get 4
                i32.le_u
                br_if 1 (;@3;)
                local.get 8
                local.get 4
                local.get 9
                i32.const 1
                i32.and
                i32.or
                i32.const 2
                i32.or
                i32.store
                i32.const 1054268
                local.get 4
                local.get 6
                i32.add
                local.tee 2
                i32.store
                i32.const 1054256
                local.get 1
                local.get 4
                i32.sub
                local.tee 1
                i32.store
                local.get 2
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                br 3 (;@1;)
              end
              i32.const 1054264
              i32.load
              local.get 5
              i32.eq
              if ;; label = @4
                i32.const 1054252
                i32.load
                local.get 1
                i32.add
                local.tee 1
                local.get 4
                i32.lt_u
                br_if 1 (;@3;)
                block ;; label = @5
                  local.get 1
                  local.get 4
                  i32.sub
                  local.tee 2
                  i32.const 16
                  i32.ge_u
                  if ;; label = @6
                    local.get 8
                    local.get 4
                    local.get 9
                    i32.const 1
                    i32.and
                    i32.or
                    i32.const 2
                    i32.or
                    i32.store
                    local.get 4
                    local.get 6
                    i32.add
                    local.tee 7
                    local.get 2
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    local.get 6
                    i32.add
                    local.tee 1
                    local.get 2
                    i32.store
                    local.get 1
                    local.get 1
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    br 1 (;@5;)
                  end
                  local.get 8
                  local.get 9
                  i32.const 1
                  i32.and
                  local.get 1
                  i32.or
                  i32.const 2
                  i32.or
                  i32.store
                  local.get 1
                  local.get 6
                  i32.add
                  local.tee 1
                  local.get 1
                  i32.load offset=4
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  i32.const 0
                  local.set 2
                end
                i32.const 1054264
                local.get 7
                i32.store
                i32.const 1054252
                local.get 2
                i32.store
                local.get 0
                br 3 (;@1;)
              end
              local.get 5
              i32.load offset=4
              local.tee 2
              i32.const 2
              i32.and
              br_if 0 (;@3;)
              local.get 2
              i32.const -8
              i32.and
              local.get 1
              i32.add
              local.tee 10
              local.get 4
              i32.lt_u
              br_if 0 (;@3;)
              local.get 10
              local.get 4
              i32.sub
              local.set 12
              block ;; label = @4
                local.get 2
                i32.const 255
                i32.le_u
                if ;; label = @5
                  local.get 5
                  i32.load offset=12
                  local.tee 1
                  local.get 5
                  i32.load offset=8
                  local.tee 3
                  i32.eq
                  if ;; label = @6
                    i32.const 1054244
                    i32.const 1054244
                    i32.load
                    i32.const -2
                    local.get 2
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store
                    br 2 (;@4;)
                  end
                  local.get 1
                  local.get 3
                  i32.store offset=8
                  local.get 3
                  local.get 1
                  i32.store offset=12
                  br 1 (;@4;)
                end
                local.get 5
                i32.load offset=24
                local.set 11
                block ;; label = @5
                  local.get 5
                  local.get 5
                  i32.load offset=12
                  local.tee 1
                  i32.ne
                  if ;; label = @6
                    i32.const 1054260
                    i32.load
                    drop
                    local.get 1
                    local.get 5
                    i32.load offset=8
                    local.tee 2
                    i32.store offset=8
                    local.get 2
                    local.get 1
                    i32.store offset=12
                    br 1 (;@5;)
                  end
                  block ;; label = @6
                    local.get 5
                    i32.const 20
                    i32.add
                    local.tee 2
                    i32.load
                    local.tee 7
                    br_if 0 (;@6;)
                    local.get 5
                    i32.const 16
                    i32.add
                    local.tee 2
                    i32.load
                    local.tee 7
                    br_if 0 (;@6;)
                    i32.const 0
                    local.set 1
                    br 1 (;@5;)
                  end
                  loop ;; label = @6
                    local.get 2
                    local.set 3
                    local.get 7
                    local.tee 1
                    i32.const 20
                    i32.add
                    local.tee 2
                    i32.load
                    local.tee 7
                    br_if 0 (;@6;)
                    local.get 1
                    i32.const 16
                    i32.add
                    local.set 2
                    local.get 1
                    i32.load offset=16
                    local.tee 7
                    br_if 0 (;@6;)
                  end
                  local.get 3
                  i32.const 0
                  i32.store
                end
                local.get 11
                i32.eqz
                br_if 0 (;@4;)
                block ;; label = @5
                  local.get 5
                  i32.load offset=28
                  local.tee 2
                  i32.const 2
                  i32.shl
                  i32.const 1054548
                  i32.add
                  local.tee 3
                  i32.load
                  local.get 5
                  i32.eq
                  if ;; label = @6
                    local.get 3
                    local.get 1
                    i32.store
                    local.get 1
                    br_if 1 (;@5;)
                    i32.const 1054248
                    i32.const 1054248
                    i32.load
                    i32.const -2
                    local.get 2
                    i32.rotl
                    i32.and
                    i32.store
                    br 2 (;@4;)
                  end
                  local.get 11
                  i32.const 16
                  i32.const 20
                  local.get 11
                  i32.load offset=16
                  local.get 5
                  i32.eq
                  select
                  i32.add
                  local.get 1
                  i32.store
                  local.get 1
                  i32.eqz
                  br_if 1 (;@4;)
                end
                local.get 1
                local.get 11
                i32.store offset=24
                local.get 5
                i32.load offset=16
                local.tee 2
                if ;; label = @5
                  local.get 1
                  local.get 2
                  i32.store offset=16
                  local.get 2
                  local.get 1
                  i32.store offset=24
                end
                local.get 5
                i32.load offset=20
                local.tee 2
                i32.eqz
                br_if 0 (;@4;)
                local.get 1
                i32.const 20
                i32.add
                local.get 2
                i32.store
                local.get 2
                local.get 1
                i32.store offset=24
              end
              local.get 12
              i32.const 15
              i32.le_u
              if ;; label = @4
                local.get 8
                local.get 9
                i32.const 1
                i32.and
                local.get 10
                i32.or
                i32.const 2
                i32.or
                i32.store
                local.get 6
                local.get 10
                i32.add
                local.tee 1
                local.get 1
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                br 3 (;@1;)
              end
              local.get 8
              local.get 4
              local.get 9
              i32.const 1
              i32.and
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 4
              local.get 6
              i32.add
              local.tee 1
              local.get 12
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 6
              local.get 10
              i32.add
              local.tee 2
              local.get 2
              i32.load offset=4
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 12
              call 18
              local.get 0
              br 2 (;@1;)
            end
            i32.const 0
            local.get 3
            call 12
            local.tee 1
            i32.eqz
            br_if 1 (;@1;)
            drop
            local.get 1
            local.get 0
            i32.const -4
            i32.const -8
            local.get 8
            i32.load
            local.tee 1
            i32.const 3
            i32.and
            select
            local.get 1
            i32.const -8
            i32.and
            i32.add
            local.tee 1
            local.get 3
            local.get 1
            local.get 3
            i32.lt_u
            select
            call 22
            local.get 0
            call 17
            local.set 0
          end
          local.get 0
        end
      )
      (func (;108;) (type 1) (param i32 i32 i32) (result i32)
        (local i32 i32 i32)
        block ;; label = @1
          local.get 2
          i32.eqz
          br_if 0 (;@1;)
          loop ;; label = @2
            local.get 0
            i32.load8_u
            local.tee 4
            local.get 1
            i32.load8_u
            local.tee 5
            i32.eq
            if ;; label = @3
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 0
              i32.const 1
              i32.add
              local.set 0
              local.get 2
              i32.const 1
              i32.sub
              local.tee 2
              br_if 1 (;@2;)
              br 2 (;@1;)
            end
          end
          local.get 4
          local.get 5
          i32.sub
          local.set 3
        end
        local.get 3
      )
      (func (;109;) (type 4) (param i32 i32)
        local.get 0
        local.get 1
        i32.const 44
        i32.const 48806446
        call 211
      )
      (func (;110;) (type 4) (param i32 i32)
        (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
        global.get 0
        i32.const 32
        i32.sub
        local.tee 6
        global.set 0
        local.get 1
        local.set 2
        block ;; label = @1
          block ;; label = @2
            local.get 1
            i32.const 3
            i32.and
            i32.eqz
            br_if 0 (;@2;)
            local.get 1
            i32.load8_u
            i32.eqz
            br_if 1 (;@1;)
            local.get 1
            i32.const 1
            i32.add
            local.tee 2
            i32.const 3
            i32.and
            i32.eqz
            br_if 0 (;@2;)
            local.get 2
            i32.load8_u
            i32.eqz
            br_if 1 (;@1;)
            local.get 1
            i32.const 2
            i32.add
            local.tee 2
            i32.const 3
            i32.and
            i32.eqz
            br_if 0 (;@2;)
            local.get 2
            i32.load8_u
            i32.eqz
            br_if 1 (;@1;)
            local.get 1
            i32.const 3
            i32.add
            local.tee 2
            i32.const 3
            i32.and
            i32.eqz
            br_if 0 (;@2;)
            local.get 2
            i32.load8_u
            i32.eqz
            br_if 1 (;@1;)
            local.get 1
            i32.const 4
            i32.add
            local.set 2
          end
          local.get 2
          i32.const 5
          i32.sub
          local.set 2
          loop ;; label = @2
            local.get 2
            i32.const 5
            i32.add
            local.get 2
            i32.const 4
            i32.add
            local.set 2
            i32.load
            local.tee 3
            i32.const -1
            i32.xor
            local.get 3
            i32.const 16843009
            i32.sub
            i32.and
            i32.const -2139062144
            i32.and
            i32.eqz
            br_if 0 (;@2;)
          end
          loop ;; label = @2
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            i32.load8_u
            br_if 0 (;@2;)
          end
        end
        local.get 6
        i32.const 8
        i32.add
        local.tee 5
        local.get 2
        local.get 1
        i32.sub
        i32.const 1
        i32.add
        i32.store offset=4
        local.get 5
        local.get 1
        i32.store
        local.get 6
        i32.load offset=12
        local.tee 1
        i32.const 8
        i32.sub
        local.tee 2
        i32.const 0
        local.get 2
        local.get 1
        i32.const 1
        i32.sub
        local.tee 5
        i32.le_u
        select
        local.set 9
        local.get 6
        i32.load offset=8
        local.tee 2
        i32.const 3
        i32.add
        i32.const -4
        i32.and
        local.get 2
        i32.sub
        local.set 10
        i32.const 0
        local.set 1
        local.get 6
        i32.const 20
        i32.add
        local.tee 7
        block (result i32) ;; label = @1
          block ;; label = @2
            loop ;; label = @3
              block ;; label = @4
                block ;; label = @5
                  block (result i64) ;; label = @6
                    block ;; label = @7
                      block ;; label = @8
                        block ;; label = @9
                          local.get 1
                          local.get 5
                          i32.lt_u
                          if ;; label = @10
                            block ;; label = @11
                              block ;; label = @12
                                block ;; label = @13
                                  block ;; label = @14
                                    block ;; label = @15
                                      local.get 1
                                      local.get 2
                                      i32.add
                                      i32.load8_u
                                      local.tee 3
                                      i32.extend8_s
                                      local.tee 8
                                      i32.const 0
                                      i32.lt_s
                                      if ;; label = @16
                                        i64.const 1099511627776
                                        local.set 11
                                        i64.const 4294967296
                                        local.set 12
                                        local.get 3
                                        i32.const 1051308
                                        i32.add
                                        i32.load8_u
                                        i32.const 2
                                        i32.sub
                                        br_table 1 (;@15;) 4 (;@12;) 2 (;@14;) 14 (;@2;)
                                      end
                                      local.get 10
                                      local.get 1
                                      i32.sub
                                      i32.const 3
                                      i32.and
                                      if ;; label = @16
                                        local.get 1
                                        i32.const 1
                                        i32.add
                                        local.set 1
                                        br 13 (;@3;)
                                      end
                                      loop ;; label = @16
                                        block ;; label = @17
                                          local.get 1
                                          local.get 9
                                          i32.ge_u
                                          br_if 0 (;@17;)
                                          local.get 1
                                          local.get 2
                                          i32.add
                                          local.tee 3
                                          i32.const 4
                                          i32.add
                                          i32.load
                                          local.get 3
                                          i32.load
                                          i32.or
                                          i32.const -2139062144
                                          i32.and
                                          br_if 0 (;@17;)
                                          local.get 1
                                          i32.const 8
                                          i32.add
                                          local.set 1
                                          br 1 (;@16;)
                                        end
                                      end
                                      loop ;; label = @16
                                        local.get 1
                                        local.get 5
                                        i32.ge_u
                                        br_if 13 (;@3;)
                                        local.get 1
                                        local.get 2
                                        i32.add
                                        i32.load8_s
                                        i32.const 0
                                        i32.lt_s
                                        br_if 13 (;@3;)
                                        local.get 1
                                        i32.const 1
                                        i32.add
                                        local.set 1
                                        br 0 (;@16;)
                                      end
                                      unreachable
                                    end
                                    local.get 1
                                    i32.const 1
                                    i32.add
                                    local.tee 3
                                    local.get 5
                                    i32.lt_u
                                    br_if 1 (;@13;)
                                    i64.const 0
                                    local.set 11
                                    br 10 (;@4;)
                                  end
                                  i64.const 0
                                  local.set 11
                                  local.get 1
                                  i32.const 1
                                  i32.add
                                  local.tee 4
                                  local.get 5
                                  i32.lt_u
                                  br_if 2 (;@11;)
                                  br 9 (;@4;)
                                end
                                local.get 2
                                local.get 3
                                i32.add
                                i32.load8_s
                                i32.const -65
                                i32.gt_s
                                br_if 10 (;@2;)
                                br 7 (;@5;)
                              end
                              i64.const 0
                              local.set 11
                              local.get 1
                              i32.const 1
                              i32.add
                              local.tee 4
                              local.get 5
                              i32.ge_u
                              br_if 7 (;@4;)
                              local.get 2
                              local.get 4
                              i32.add
                              i32.load8_s
                              local.set 4
                              block ;; label = @12
                                block ;; label = @13
                                  local.get 3
                                  i32.const 224
                                  i32.ne
                                  if ;; label = @14
                                    local.get 3
                                    i32.const 237
                                    i32.eq
                                    br_if 1 (;@13;)
                                    local.get 8
                                    i32.const 31
                                    i32.add
                                    i32.const 255
                                    i32.and
                                    i32.const 12
                                    i32.lt_u
                                    br_if 2 (;@12;)
                                    local.get 8
                                    i32.const -2
                                    i32.and
                                    i32.const -18
                                    i32.ne
                                    br_if 5 (;@9;)
                                    local.get 4
                                    i32.const -64
                                    i32.lt_s
                                    br_if 6 (;@8;)
                                    br 5 (;@9;)
                                  end
                                  local.get 4
                                  i32.const -32
                                  i32.and
                                  i32.const -96
                                  i32.eq
                                  br_if 5 (;@8;)
                                  br 4 (;@9;)
                                end
                                local.get 4
                                i32.const -97
                                i32.gt_s
                                br_if 3 (;@9;)
                                br 4 (;@8;)
                              end
                              local.get 4
                              i32.const -64
                              i32.lt_s
                              br_if 3 (;@8;)
                              br 2 (;@9;)
                            end
                            local.get 2
                            local.get 4
                            i32.add
                            i32.load8_s
                            local.set 4
                            block ;; label = @11
                              block ;; label = @12
                                block ;; label = @13
                                  block ;; label = @14
                                    local.get 3
                                    i32.const 240
                                    i32.sub
                                    br_table 1 (;@13;) 0 (;@14;) 0 (;@14;) 0 (;@14;) 2 (;@12;) 0 (;@14;)
                                  end
                                  local.get 8
                                  i32.const 15
                                  i32.add
                                  i32.const 255
                                  i32.and
                                  i32.const 2
                                  i32.gt_u
                                  local.get 4
                                  i32.const -64
                                  i32.ge_s
                                  i32.or
                                  br_if 4 (;@9;)
                                  br 2 (;@11;)
                                end
                                local.get 4
                                i32.const 112
                                i32.add
                                i32.const 255
                                i32.and
                                i32.const 48
                                i32.ge_u
                                br_if 3 (;@9;)
                                br 1 (;@11;)
                              end
                              local.get 4
                              i32.const -113
                              i32.gt_s
                              br_if 2 (;@9;)
                            end
                            local.get 1
                            i32.const 2
                            i32.add
                            local.tee 3
                            local.get 5
                            i32.ge_u
                            br_if 6 (;@4;)
                            local.get 2
                            local.get 3
                            i32.add
                            i32.load8_s
                            i32.const -65
                            i32.gt_s
                            br_if 3 (;@7;)
                            i64.const 0
                            local.set 12
                            local.get 1
                            i32.const 3
                            i32.add
                            local.tee 3
                            local.get 5
                            i32.ge_u
                            br_if 8 (;@2;)
                            local.get 2
                            local.get 3
                            i32.add
                            i32.load8_s
                            i32.const -65
                            i32.le_s
                            br_if 5 (;@5;)
                            i64.const 3298534883328
                            br 4 (;@6;)
                          end
                          local.get 7
                          local.get 2
                          i32.store offset=4
                          local.get 7
                          i32.const 8
                          i32.add
                          local.get 5
                          i32.store
                          i32.const 0
                          br 8 (;@1;)
                        end
                        i64.const 1099511627776
                        br 2 (;@6;)
                      end
                      i64.const 0
                      local.set 12
                      local.get 1
                      i32.const 2
                      i32.add
                      local.tee 3
                      local.get 5
                      i32.ge_u
                      br_if 5 (;@2;)
                      local.get 2
                      local.get 3
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if 2 (;@5;)
                    end
                    i64.const 2199023255552
                  end
                  local.set 11
                  i64.const 4294967296
                  local.set 12
                  br 3 (;@2;)
                end
                local.get 3
                i32.const 1
                i32.add
                local.set 1
                br 1 (;@3;)
              end
            end
            i64.const 0
            local.set 12
          end
          local.get 7
          local.get 11
          local.get 1
          i64.extend_i32_u
          i64.or
          local.get 12
          i64.or
          i64.store offset=4 align=4
          i32.const 1
        end
        i32.store
        local.get 6
        i32.load offset=20
        if ;; label = @1
          unreachable
        end
        local.get 0
        local.get 6
        i64.load offset=24 align=4
        i64.store
        local.get 6
        i32.const 32
        i32.add
        global.set 0
      )
      (func (;111;) (type 4) (param i32 i32)
        (local i32 i32)
        local.get 1
        call 6
        local.tee 2
        i32.load
        local.set 3
        local.get 2
        i32.const 4
        i32.store
        local.get 3
        i32.const 4
        i32.eq
        if ;; label = @1
          unreachable
        end
        local.get 0
        local.get 3
        i32.store
        local.get 0
        local.get 2
        i64.load offset=4 align=4
        i64.store offset=4 align=4
        local.get 0
        i32.const 12
        i32.add
        local.get 2
        i32.const 12
        i32.add
        i32.load
        i32.store
        local.get 1
        call 7
      )
      (func (;112;) (type 8) (param i32 i32 i32 i32) (result i32)
        (local i32)
        block (result i32) ;; label = @1
          loop ;; label = @2
            local.get 1
            local.get 1
            local.get 4
            i32.eq
            br_if 1 (;@1;)
            drop
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            local.get 2
            local.get 0
            local.get 3
            i32.load offset=16
            call_indirect (type 0)
            i32.eqz
            br_if 0 (;@2;)
          end
          local.get 4
          i32.const 1
          i32.sub
        end
        local.get 1
        i32.lt_u
      )
      (func (;113;) (type 5) (result i32)
        i32.const 2
        i32.const 16
        call 212
      )
      (func (;114;) (type 5) (result i32)
        i32.const 4
        i32.const 32
        call 212
      )
      (func (;115;) (type 0) (param i32 i32) (result i32)
        (local i32)
        local.get 1
        i32.load offset=28
        local.tee 2
        i32.const 16
        i32.and
        i32.eqz
        if ;; label = @1
          local.get 2
          i32.const 32
          i32.and
          i32.eqz
          if ;; label = @2
            local.get 0
            i64.load32_u
            i32.const 1
            local.get 1
            call 40
            return
          end
          local.get 0
          i32.load
          local.get 1
          call 73
          return
        end
        local.get 0
        i32.load
        local.get 1
        call 74
      )
      (func (;116;) (type 4) (param i32 i32)
        (local i32)
        local.get 0
        i32.load offset=8
        local.tee 2
        local.get 0
        i32.load offset=4
        i32.eq
        if ;; label = @1
          local.get 0
          local.get 2
          call 58
          local.get 0
          i32.load offset=8
          local.set 2
        end
        local.get 0
        local.get 2
        i32.const 1
        i32.add
        i32.store offset=8
        local.get 0
        i32.load
        local.get 2
        i32.const 2
        i32.shl
        i32.add
        local.get 1
        i32.store
      )
      (func (;117;) (type 11) (param i32 i32 i32 i32 i32) (result i32)
        block ;; label = @1
          block (result i32) ;; label = @2
            local.get 2
            i32.const 1114112
            i32.ne
            if ;; label = @3
              i32.const 1
              local.get 0
              local.get 2
              local.get 1
              i32.load offset=16
              call_indirect (type 0)
              br_if 1 (;@2;)
              drop
            end
            local.get 3
            br_if 1 (;@1;)
            i32.const 0
          end
          return
        end
        local.get 0
        local.get 3
        local.get 4
        local.get 1
        i32.load offset=12
        call_indirect (type 1)
      )
      (func (;118;) (type 6) (param i32 i32 i32 i32)
        (local i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 4
        global.set 0
        local.get 4
        i32.const 8
        i32.add
        local.get 1
        local.get 2
        local.get 3
        call 103
        local.get 4
        i32.load offset=12
        local.set 1
        local.get 0
        local.get 4
        i32.load offset=8
        i32.store
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 4
        i32.const 16
        i32.add
        global.set 0
      )
      (func (;119;) (type 8) (param i32 i32 i32 i32) (result i32)
        block ;; label = @1
          block (result i32) ;; label = @2
            local.get 1
            i32.eqz
            if ;; label = @3
              local.get 3
              i32.eqz
              br_if 2 (;@1;)
              i32.const 1054240
              i32.load8_u
              drop
              local.get 3
              local.get 2
              call 138
              br 1 (;@2;)
            end
            local.get 0
            local.get 1
            local.get 2
            local.get 3
            call 107
          end
          local.tee 2
          br_if 0 (;@1;)
          unreachable
        end
        local.get 2
      )
      (func (;120;) (type 4) (param i32 i32)
        local.get 0
        i32.const 36
        i32.add
        local.set 0
        loop ;; label = @1
          local.get 1
          if ;; label = @2
            local.get 0
            i32.const 4
            i32.sub
            i32.load
            local.get 0
            i32.load
            call 181
            local.get 1
            i32.const 1
            i32.sub
            local.set 1
            local.get 0
            i32.const 44
            i32.add
            local.set 0
            br 1 (;@1;)
          end
        end
      )
      (func (;121;) (type 3) (param i32)
        block ;; label = @1
          local.get 0
          i32.load8_u
          i32.eqz
          br_if 0 (;@1;)
          local.get 0
          i32.const 4
          i32.add
          i32.load8_u
          br_if 0 (;@1;)
          local.get 0
          i32.const 8
          i32.add
          i32.load8_u
          i32.eqz
          br_if 0 (;@1;)
          local.get 0
          i32.const 16
          i32.add
          i32.load
          local.get 0
          i32.const 20
          i32.add
          i32.load
          call 181
        end
      )
      (func (;122;) (type 12) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
        call 176
        block ;; label = @1
          local.get 0
          i32.load
          i32.const 2
          i32.eq
          br_if 0 (;@1;)
          local.get 4
          i32.load
          i32.const 2
          i32.eq
          br_if 0 (;@1;)
          local.get 5
          local.get 6
          call 181
          local.get 2
          local.get 3
          call 181
          i32.const 1053960
          i32.const 1
          i32.store16
          i32.const 1053960
          return
        end
        unreachable
      )
      (func (;123;) (type 10) (param i32 i32 i32 i32 i32 i32) (result i32)
        call 176
        block ;; label = @1
          local.get 0
          i32.load
          i32.const 2
          i32.eq
          br_if 0 (;@1;)
          local.get 3
          i32.load
          i32.const 2
          i32.eq
          br_if 0 (;@1;)
          local.get 4
          local.get 5
          call 181
          local.get 1
          local.get 2
          call 181
          i32.const 1053960
          i32.const 1
          i32.store16
          i32.const 1053960
          return
        end
        unreachable
      )
      (func (;124;) (type 2) (param i32) (result i32)
        (local i32)
        call 176
        local.get 0
        i32.load
        local.tee 1
        i32.const 3
        i32.ne
        if ;; label = @1
          local.get 1
          i32.const 1
          i32.le_u
          if ;; label = @2
            i32.const 0
            local.get 0
            call 162
            return
          end
          local.get 0
          i32.load offset=4
          drop
          unreachable
        end
        unreachable
      )
      (func (;125;) (type 0) (param i32 i32) (result i32)
        (local i32)
        local.get 1
        if ;; label = @1
          loop ;; label = @2
            local.get 2
            local.get 0
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 2
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            i32.const 1
            i32.sub
            local.tee 1
            br_if 0 (;@2;)
          end
        end
        local.get 2
      )
      (func (;126;) (type 8) (param i32 i32 i32 i32) (result i32)
        i32.const -1
        local.get 0
        local.get 2
        local.get 1
        local.get 3
        local.get 1
        local.get 3
        i32.lt_u
        select
        call 108
        local.tee 0
        local.get 1
        local.get 3
        i32.sub
        local.get 0
        select
        local.tee 0
        i32.const 0
        i32.ne
        local.get 0
        i32.const 0
        i32.lt_s
        select
      )
      (func (;127;) (type 2) (param i32) (result i32)
        call 176
        block ;; label = @1
          block ;; label = @2
            block ;; label = @3
              block ;; label = @4
                local.get 0
                i32.load8_u
                br_table 2 (;@2;) 1 (;@3;) 0 (;@4;) 1 (;@3;)
              end
              unreachable
            end
            i32.const 1053960
            i32.const 0
            i32.store8
            br 1 (;@1;)
          end
          i32.const 1053960
          i32.const 1
          i32.store8
          i32.const 1053961
          local.get 0
          i32.load8_u offset=1
          i32.store8
        end
        i32.const 1053960
      )
      (func (;128;) (type 3) (param i32)
        block ;; label = @1
          local.get 0
          i32.load8_u
          i32.eqz
          br_if 0 (;@1;)
          local.get 0
          i32.const 4
          i32.add
          i32.load8_u
          i32.const 2
          i32.lt_u
          br_if 0 (;@1;)
          local.get 0
          i32.const 8
          i32.add
          i32.load
          local.get 0
          i32.const 12
          i32.add
          i32.load
          call 181
        end
      )
      (func (;129;) (type 3) (param i32)
        block ;; label = @1
          local.get 0
          i32.load8_u
          i32.eqz
          br_if 0 (;@1;)
          local.get 0
          i32.const 4
          i32.add
          i32.load8_u
          i32.eqz
          br_if 0 (;@1;)
          local.get 0
          i32.const 12
          i32.add
          i32.load
          local.get 0
          i32.const 16
          i32.add
          i32.load
          call 181
        end
      )
      (func (;130;) (type 0) (param i32 i32) (result i32)
        local.get 0
        local.get 1
        i32.const 1051008
        call 210
      )
      (func (;131;) (type 0) (param i32 i32) (result i32)
        local.get 0
        local.get 1
        i32.const 1051284
        call 210
      )
      (func (;132;) (type 3) (param i32)
        block ;; label = @1
          local.get 0
          i32.load8_u
          br_if 0 (;@1;)
          local.get 0
          i32.const 4
          i32.add
          i32.load8_u
          i32.eqz
          br_if 0 (;@1;)
          local.get 0
          i32.const 12
          i32.add
          i32.load
          local.get 0
          i32.const 16
          i32.add
          i32.load
          call 181
        end
      )
      (func (;133;) (type 2) (param i32) (result i32)
        call 176
        block ;; label = @1
          block ;; label = @2
            block ;; label = @3
              local.get 0
              i32.load
              i32.const 3
              i32.sub
              br_table 2 (;@1;) 1 (;@2;) 0 (;@3;)
            end
            i32.const 0
            local.get 0
            call 162
            return
          end
          unreachable
        end
        local.get 0
        i32.load offset=4
        drop
        unreachable
      )
      (func (;134;) (type 21) (param i32 i32 i32 i64) (result i32)
        call 176
        local.get 0
        i32.load
        i32.const 2
        i32.eq
        if ;; label = @1
          unreachable
        end
        local.get 1
        local.get 2
        call 181
        i32.const 1053960
        i32.const 1
        i32.store8
        i32.const 1053968
        i32.const 0
        i32.store8
        i32.const 1053960
      )
      (func (;135;) (type 11) (param i32 i32 i32 i32 i32) (result i32)
        call 176
        local.get 0
        i32.load
        i32.const 2
        i32.eq
        if ;; label = @1
          unreachable
        end
        local.get 3
        local.get 4
        call 181
        local.get 1
        local.get 2
        call 181
        i32.const 1053960
        i32.const 1
        i32.store16
        i32.const 1053960
      )
      (func (;136;) (type 2) (param i32) (result i32)
        (local i32)
        i32.const 16
        i32.const 8
        call 167
        local.tee 1
        i32.const 8
        i32.add
        local.get 0
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get 1
        local.get 0
        i64.load
        i64.store
        local.get 1
        call 5
      )
      (func (;137;) (type 9) (param i32 i32 i32)
        local.get 2
        if ;; label = @1
          i32.const 1054240
          i32.load8_u
          drop
          local.get 2
          local.get 1
          call 138
          local.set 1
        end
        local.get 0
        local.get 2
        i32.store offset=4
        local.get 0
        local.get 1
        i32.store
      )
      (func (;138;) (type 0) (param i32 i32) (result i32)
        local.get 1
        i32.const 8
        i32.le_u
        local.get 0
        local.get 1
        i32.ge_u
        i32.and
        i32.eqz
        if ;; label = @1
          local.get 1
          local.get 0
          call 166
          return
        end
        local.get 0
        call 12
      )
      (func (;139;) (type 3) (param i32)
        (local i32)
        local.get 0
        i32.load
        local.tee 1
        i32.const 4
        i32.eq
        local.get 1
        i32.const 3
        i32.ne
        i32.or
        i32.eqz
        if ;; label = @1
          local.get 0
          i32.load offset=4
          drop
          unreachable
        end
        local.get 0
        call 17
      )
      (func (;140;) (type 3) (param i32)
        (local i32)
        local.get 0
        i32.load
        local.tee 1
        i32.const 3
        i32.eq
        local.get 1
        i32.const 2
        i32.lt_u
        i32.or
        i32.eqz
        if ;; label = @1
          local.get 0
          i32.load offset=4
          drop
          unreachable
        end
        local.get 0
        call 17
      )
      (func (;141;) (type 5) (result i32)
        (local i32)
        call 176
        i32.const 1
        i32.const 1
        call 167
        local.tee 0
        i32.const 1
        i32.store8
        i32.const 1053940
        local.get 0
        call 8
        i32.store
        i32.const 1053936
        i32.const 1
        i32.store8
        i32.const 1053936
      )
      (func (;142;) (type 3) (param i32)
        block ;; label = @1
          local.get 0
          i32.load
          i32.eqz
          br_if 0 (;@1;)
          local.get 0
          i32.load offset=4
          br_if 0 (;@1;)
          local.get 0
          i32.const 8
          i32.add
          i32.load
          drop
          unreachable
        end
        local.get 0
        call 17
      )
      (func (;143;) (type 7) (param i32 i64) (result i32)
        call 176
        local.get 0
        i32.load
        i32.const 2
        i32.eq
        if ;; label = @1
          unreachable
        end
        i32.const 1053960
        i32.const 1
        i32.store8
        i32.const 1053964
        i32.const 0
        i32.store8
        i32.const 1053960
      )
      (func (;144;) (type 2) (param i32) (result i32)
        call 176
        local.get 0
        i32.load
        i32.const 2
        i32.eq
        if ;; label = @1
          unreachable
        end
        i32.const 1053960
        i32.const 1
        i32.store8
        i32.const 1053964
        i32.const 0
        i32.store8
        i32.const 1053960
      )
      (func (;145;) (type 1) (param i32 i32 i32) (result i32)
        call 176
        local.get 0
        i32.load
        i32.const 2
        i32.eq
        if ;; label = @1
          unreachable
        end
        local.get 1
        local.get 2
        call 181
        i32.const 1053960
        i32.const 1
        i32.store16
        i32.const 1053960
      )
      (func (;146;) (type 22) (param i32 i32 i32 i32 i32 i64 i32 i32 i64 i32) (result i32)
        call 176
        local.get 0
        i32.load
        i32.const 2
        i32.eq
        if ;; label = @1
          unreachable
        end
        local.get 2
        local.get 3
        call 181
        i32.const 1053960
        i32.const 1
        i32.store16
        i32.const 1053960
      )
      (func (;147;) (type 10) (param i32 i32 i32 i32 i32 i32) (result i32)
        call 176
        local.get 0
        i32.load
        i32.const 2
        i32.eq
        if ;; label = @1
          unreachable
        end
        local.get 2
        local.get 3
        call 181
        i32.const 1053960
        i32.const 1
        i32.store16
        i32.const 1053960
      )
      (func (;148;) (type 11) (param i32 i32 i32 i32 i32) (result i32)
        call 176
        local.get 0
        i32.load
        i32.const 2
        i32.eq
        if ;; label = @1
          unreachable
        end
        local.get 2
        local.get 3
        call 181
        i32.const 1053960
        i32.const 1
        i32.store16
        i32.const 1053960
      )
      (func (;149;) (type 3) (param i32)
        local.get 0
        i32.load8_u
        i32.const 9
        i32.ge_u
        if ;; label = @1
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.get 0
          i32.const 8
          i32.add
          i32.load
          call 181
        end
      )
      (func (;150;) (type 3) (param i32)
        (local i32)
        local.get 0
        i32.load
        local.tee 1
        i32.const 2
        i32.eq
        local.get 1
        i32.eqz
        i32.or
        i32.eqz
        if ;; label = @1
          local.get 0
          i32.load offset=4
          drop
          unreachable
        end
        local.get 0
        call 17
      )
      (func (;151;) (type 3) (param i32)
        (local i32)
        local.get 0
        i32.load8_u
        local.tee 1
        i32.const 2
        i32.eq
        local.get 1
        i32.eqz
        i32.or
        i32.eqz
        if ;; label = @1
          local.get 0
          i32.load offset=4
          drop
          unreachable
        end
        local.get 0
        call 17
      )
      (func (;152;) (type 8) (param i32 i32 i32 i32) (result i32)
        (local i32)
        local.get 1
        local.get 3
        i32.ge_u
        if (result i32) ;; label = @1
          local.get 2
          local.get 3
          local.get 0
          local.get 3
          call 155
        else
          i32.const 0
        end
      )
      (func (;153;) (type 3) (param i32)
        local.get 0
        i32.load8_u
        if ;; label = @1
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.get 0
          i32.const 8
          i32.add
          i32.load
          call 181
        end
      )
      (func (;154;) (type 3) (param i32)
        local.get 0
        i32.load8_u
        if ;; label = @1
          local.get 0
          i32.const 8
          i32.add
          i32.load
          local.get 0
          i32.const 12
          i32.add
          i32.load
          call 181
        end
      )
      (func (;155;) (type 8) (param i32 i32 i32 i32) (result i32)
        (local i32)
        local.get 1
        local.get 3
        i32.eq
        if (result i32) ;; label = @1
          local.get 0
          local.get 2
          local.get 1
          call 108
        else
          i32.const 1
        end
        i32.eqz
      )
      (func (;156;) (type 3) (param i32)
        local.get 0
        i32.load8_u
        i32.eqz
        if ;; label = @1
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.get 0
          i32.const 8
          i32.add
          i32.load
          call 181
        end
      )
      (func (;157;) (type 2) (param i32) (result i32)
        call 176
        local.get 0
        i32.load
        i32.const 2
        i32.eq
        if ;; label = @1
          unreachable
        end
        i32.const 1053960
        i32.const 256
        i32.store16
        i32.const 1053960
      )
      (func (;158;) (type 7) (param i32 i64) (result i32)
        call 176
        local.get 0
        i32.load
        i32.const 2
        i32.eq
        if ;; label = @1
          unreachable
        end
        i32.const 1053960
        i32.const 1
        i32.store16
        i32.const 1053960
      )
      (func (;159;) (type 23) (param i32 i32 i64 i32 i32 i64 i32) (result i32)
        call 176
        local.get 0
        i32.load
        i32.const 2
        i32.eq
        if ;; label = @1
          unreachable
        end
        i32.const 1053960
        i32.const 1
        i32.store16
        i32.const 1053960
      )
      (func (;160;) (type 2) (param i32) (result i32)
        call 176
        local.get 0
        i32.load
        i32.const 2
        i32.eq
        if ;; label = @1
          unreachable
        end
        i32.const 1053960
        i32.const 1
        i32.store16
        i32.const 1053960
      )
      (func (;161;) (type 2) (param i32) (result i32)
        call 176
        local.get 0
        i32.load
        i32.const 2
        i32.eq
        if ;; label = @1
          unreachable
        end
        i32.const 1053960
        i32.const 0
        i32.store8
        i32.const 1053960
      )
      (func (;162;) (type 0) (param i32 i32) (result i32)
        (local i32)
        i32.const 8
        i32.const 4
        call 167
        local.tee 2
        local.get 1
        i32.store offset=4
        local.get 2
        local.get 0
        i32.store
        local.get 2
        call 1
      )
      (func (;163;) (type 0) (param i32 i32) (result i32)
        (local i32)
        i32.const 8
        i32.const 4
        call 167
        local.tee 2
        local.get 1
        i32.store offset=4
        local.get 2
        local.get 0
        i32.store
        local.get 2
        call 2
      )
      (func (;164;) (type 0) (param i32 i32) (result i32)
        (local i32)
        i32.const 8
        i32.const 4
        call 167
        local.tee 2
        local.get 1
        i32.store offset=4
        local.get 2
        local.get 0
        i32.store
        local.get 2
        call 3
      )
      (func (;165;) (type 2) (param i32) (result i32)
        call 176
        local.get 0
        i32.load
        i32.eqz
        if ;; label = @1
          unreachable
        end
        local.get 0
        i32.load offset=4
        drop
        unreachable
      )
      (func (;166;) (type 0) (param i32 i32) (result i32)
        (local i32 i32 i32 i32 i32)
        local.get 0
        i32.const 16
        i32.le_u
        if ;; label = @1
          local.get 1
          call 12
          return
        end
        block (result i32) ;; label = @1
          block ;; label = @2
            i32.const 16
            local.get 0
            local.get 0
            i32.const 16
            i32.le_u
            select
            local.tee 3
            local.get 3
            i32.const 1
            i32.sub
            i32.and
            i32.eqz
            if ;; label = @3
              local.get 3
              local.set 0
              br 1 (;@2;)
            end
            i32.const 32
            local.set 2
            loop ;; label = @3
              local.get 2
              local.tee 0
              i32.const 1
              i32.shl
              local.set 2
              local.get 0
              local.get 3
              i32.lt_u
              br_if 0 (;@3;)
            end
          end
          local.get 1
          i32.const -64
          local.get 0
          i32.sub
          i32.ge_u
          if ;; label = @2
            i32.const 1054740
            i32.const 48
            i32.store
            i32.const 0
            br 1 (;@1;)
          end
          i32.const 0
          local.get 0
          i32.const 16
          local.get 1
          i32.const 19
          i32.add
          i32.const -16
          i32.and
          local.get 1
          i32.const 11
          i32.lt_u
          select
          local.tee 3
          i32.add
          i32.const 12
          i32.add
          call 12
          local.tee 2
          i32.eqz
          br_if 0 (;@1;)
          drop
          local.get 2
          i32.const 8
          i32.sub
          local.set 1
          block ;; label = @2
            local.get 0
            i32.const 1
            i32.sub
            local.get 2
            i32.and
            i32.eqz
            if ;; label = @3
              local.get 1
              local.set 0
              br 1 (;@2;)
            end
            local.get 2
            i32.const 4
            i32.sub
            local.tee 5
            i32.load
            local.tee 6
            i32.const -8
            i32.and
            local.get 0
            local.get 2
            i32.add
            i32.const 1
            i32.sub
            i32.const 0
            local.get 0
            i32.sub
            i32.and
            i32.const 8
            i32.sub
            local.tee 2
            local.get 0
            i32.const 0
            local.get 2
            local.get 1
            i32.sub
            i32.const 15
            i32.le_u
            select
            i32.add
            local.tee 0
            local.get 1
            i32.sub
            local.tee 2
            i32.sub
            local.set 4
            local.get 6
            i32.const 3
            i32.and
            i32.eqz
            if ;; label = @3
              local.get 0
              local.get 4
              i32.store offset=4
              local.get 0
              local.get 1
              i32.load
              local.get 2
              i32.add
              i32.store
              br 1 (;@2;)
            end
            local.get 0
            local.get 4
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store offset=4
            local.get 0
            local.get 4
            i32.add
            local.tee 4
            local.get 4
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 5
            local.get 2
            local.get 5
            i32.load
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 1
            local.get 2
            i32.add
            local.tee 4
            local.get 4
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            local.get 2
            call 18
          end
          block ;; label = @2
            local.get 0
            i32.load offset=4
            local.tee 1
            i32.const 3
            i32.and
            i32.eqz
            br_if 0 (;@2;)
            local.get 1
            i32.const -8
            i32.and
            local.tee 2
            local.get 3
            i32.const 16
            i32.add
            i32.le_u
            br_if 0 (;@2;)
            local.get 0
            local.get 3
            local.get 1
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.add
            local.tee 1
            local.get 2
            local.get 3
            i32.sub
            local.tee 3
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            local.get 2
            i32.add
            local.tee 2
            local.get 2
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            local.get 3
            call 18
          end
          local.get 0
          i32.const 8
          i32.add
        end
      )
      (func (;167;) (type 0) (param i32 i32) (result i32)
        local.get 1
        local.get 0
        call 172
        local.tee 0
        if ;; label = @1
          local.get 0
          return
        end
        unreachable
      )
      (func (;168;) (type 2) (param i32) (result i32)
        (local i32)
        i32.const 12
        i32.const 4
        call 167
        local.tee 1
        local.get 0
        i32.store offset=8
        local.get 1
        i64.const 4294967297
        i64.store align=4
        local.get 1
      )
      (func (;169;) (type 3) (param i32)
        (local i32 i32)
        block ;; label = @1
          block ;; label = @2
            local.get 0
            i32.load
            br_table 1 (;@1;) 0 (;@2;) 1 (;@1;) 0 (;@2;)
          end
          local.get 0
          i32.load offset=4
          local.tee 1
          local.get 1
          i32.load
          i32.const 1
          i32.sub
          local.tee 2
          i32.store
          local.get 2
          i32.eqz
          if ;; label = @2
            local.get 1
            i32.load offset=8
            drop
            unreachable
          end
        end
        local.get 0
        call 17
      )
      (func (;170;) (type 3) (param i32)
        local.get 0
        i32.load
        if ;; label = @1
          local.get 0
          i32.load offset=4
          drop
          unreachable
        end
        local.get 0
        call 17
      )
      (func (;171;) (type 4) (param i32 i32)
        local.get 1
        if ;; label = @1
          local.get 0
          local.get 1
          i32.const 2
          i32.shl
          call 181
        end
      )
      (func (;172;) (type 0) (param i32 i32) (result i32)
        local.get 1
        if (result i32) ;; label = @1
          local.get 0
          local.get 1
          call 183
        else
          local.get 0
        end
      )
      (func (;173;) (type 3) (param i32)
        local.get 0
        i32.load
        local.get 0
        i32.const 4
        i32.add
        i32.load
        i32.const 2
        i32.shl
        call 181
      )
      (func (;174;) (type 5) (result i32)
        (local i32)
        i32.const 1
        i32.const 1
        call 167
        local.tee 0
        i32.const 1
        i32.store8
        local.get 0
        call 0
      )
      (func (;175;) (type 16) (param i64) (result i32)
        (local i32)
        i32.const 8
        i32.const 4
        call 167
        local.tee 1
        local.get 0
        i64.store align=4
        local.get 1
        call 4
      )
      (func (;176;) (type 24)
        i32.const 1054241
        i32.load8_u
        i32.eqz
        if ;; label = @1
          i32.const 1054241
          i32.const 1
          i32.store8
        end
      )
      (func (;177;) (type 5) (result i32)
        call 176
        i32.const 1053948
        call 174
        i32.store
        i32.const 1053944
        i32.const 1
        i32.store8
        i32.const 1053944
      )
      (func (;178;) (type 5) (result i32)
        call 176
        i32.const 1053956
        call 174
        i32.store
        i32.const 1053952
        i32.const 1
        i32.store8
        i32.const 1053952
      )
      (func (;179;) (type 25) (param i32 i64 i64 i32) (result i32)
        call 176
        local.get 0
        i32.load
        drop
        unreachable
      )
      (func (;180;) (type 3) (param i32)
        local.get 0
        i32.load
        local.get 0
        i32.const 4
        i32.add
        i32.load
        call 181
      )
      (func (;181;) (type 4) (param i32 i32)
        local.get 1
        if ;; label = @1
          local.get 0
          call 17
        end
      )
      (func (;182;) (type 6) (param i32 i32 i32 i32)
        (local i32 i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 4
        global.set 0
        block ;; label = @1
          block ;; label = @2
            local.get 0
            local.get 1
            i32.const 256
            call 75
            local.tee 5
            i32.eqz
            br_if 0 (;@2;)
            local.get 1
            local.get 5
            i32.le_u
            if ;; label = @3
              local.get 1
              local.get 5
              i32.eq
              br_if 1 (;@2;)
              br 2 (;@1;)
            end
            local.get 0
            local.get 5
            i32.add
            i32.load8_s
            i32.const -65
            i32.le_s
            br_if 1 (;@1;)
          end
          local.get 1
          local.get 2
          i32.lt_u
          local.get 1
          local.get 3
          i32.lt_u
          i32.or
          local.get 2
          local.get 3
          i32.gt_u
          i32.or
          i32.eqz
          if ;; label = @2
            block ;; label = @3
              local.get 2
              i32.eqz
              local.get 1
              local.get 2
              i32.le_u
              i32.or
              i32.eqz
              if ;; label = @4
                local.get 0
                local.get 2
                i32.add
                i32.load8_s
                i32.const -64
                i32.lt_s
                br_if 1 (;@3;)
              end
              local.get 3
              local.set 2
            end
            local.get 4
            local.get 0
            local.get 1
            local.get 0
            local.get 1
            local.get 2
            call 75
            call 103
            local.get 4
            local.get 4
            i32.load
            local.tee 0
            i32.store offset=8
            local.get 4
            local.get 0
            local.get 4
            i32.load offset=4
            i32.add
            i32.store offset=12
            local.get 4
            i32.const 8
            i32.add
            call 65
            drop
          end
          unreachable
        end
        local.get 0
        local.get 1
        i32.const 0
        local.get 5
        call 182
        unreachable
      )
      (func (;183;) (type 0) (param i32 i32) (result i32)
        i32.const 1054240
        i32.load8_u
        drop
        local.get 1
        local.get 0
        call 138
      )
      (func (;184;) (type 4) (param i32 i32)
        local.get 0
        i32.const -2147483647
        i32.ne
        if ;; label = @1
          unreachable
        end
      )
      (func (;185;) (type 1) (param i32 i32 i32) (result i32)
        local.get 0
        i32.load
        local.get 1
        local.get 2
        call 87
        i32.const 0
      )
      (func (;186;) (type 8) (param i32 i32 i32 i32) (result i32)
        local.get 0
        local.get 1
        local.get 2
        local.get 3
        call 155
      )
      (func (;187;) (type 0) (param i32 i32) (result i32)
        local.get 0
        i32.load
        drop
        loop ;; label = @1
          br 0 (;@1;)
        end
        unreachable
      )
      (func (;188;) (type 1) (param i32 i32 i32) (result i32)
        local.get 0
        i32.load
        local.get 1
        local.get 2
        call 30
      )
      (func (;189;) (type 0) (param i32 i32) (result i32)
        local.get 0
        i32.load
        local.get 1
        call 130
      )
      (func (;190;) (type 0) (param i32 i32) (result i32)
        local.get 0
        i32.load
        local.get 1
        call 52
      )
      (func (;191;) (type 0) (param i32 i32) (result i32)
        local.get 0
        i32.load
        local.get 1
        call 131
      )
      (func (;192;) (type 3) (param i32)
        local.get 0
        call 17
      )
      (func (;193;) (type 3) (param i32)
        unreachable
      )
      (func (;194;) (type 4) (param i32 i32)
        unreachable
      )
      (func (;195;) (type 13) (param i32 i32 i32 i32 i32)
        unreachable
      )
      (func (;196;) (type 9) (param i32 i32 i32)
        unreachable
      )
      (func (;197;) (type 5) (result i32)
        unreachable
      )
      (func (;198;) (type 26) (result i64)
        unreachable
      )
      (func (;199;) (type 27) (param i64 i32) (result i32)
        unreachable
      )
      (func (;200;) (type 0) (param i32 i32) (result i32)
        unreachable
      )
      (func (;201;) (type 2) (param i32) (result i32)
        unreachable
      )
      (func (;202;) (type 16) (param i64) (result i32)
        unreachable
      )
      (func (;203;) (type 10) (param i32 i32 i32 i32 i32 i32) (result i32)
        unreachable
      )
      (func (;204;) (type 15) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)
        unreachable
      )
      (func (;205;) (type 7) (param i32 i64) (result i32)
        unreachable
      )
      (func (;206;) (type 1) (param i32 i32 i32) (result i32)
        unreachable
      )
      (func (;207;) (type 28) (param i32 i32 i32 i32 i32 i32 i32 i32) (result i32)
        unreachable
      )
      (func (;208;) (type 3) (param i32))
      (func (;209;) (type 1) (param i32 i32 i32) (result i32)
        (local i32 i32 i32 i32 i32)
        global.get 0
        i32.const 128
        i32.sub
        local.tee 5
        global.set 0
        i32.const 127
        local.set 3
        loop ;; label = @1
          local.get 5
          local.get 3
          local.tee 4
          i32.add
          local.tee 6
          i32.const 48
          local.get 2
          local.get 0
          i32.const 15
          i32.and
          local.tee 3
          i32.const 10
          i32.lt_u
          select
          local.get 3
          i32.add
          i32.store8
          local.get 4
          i32.const 1
          i32.sub
          local.set 3
          local.get 0
          i32.const 16
          i32.lt_u
          local.get 0
          i32.const 4
          i32.shr_u
          local.set 0
          i32.eqz
          br_if 0 (;@1;)
        end
        local.get 4
        i32.const 129
        i32.lt_u
        if ;; label = @1
          local.get 1
          i32.const 1
          i32.const 1051082
          i32.const 2
          local.get 6
          i32.const 128
          local.get 4
          i32.sub
          call 23
          local.get 5
          i32.const 128
          i32.add
          global.set 0
          return
        end
        unreachable
      )
      (func (;210;) (type 1) (param i32 i32 i32) (result i32)
        (local i32)
        global.get 0
        i32.const 16
        i32.sub
        local.tee 3
        global.set 0
        local.get 3
        local.get 0
        i32.store offset=12
        local.get 3
        i32.const 12
        i32.add
        local.get 2
        local.get 1
        call 31
        local.get 3
        i32.const 16
        i32.add
        global.set 0
      )
      (func (;211;) (type 6) (param i32 i32 i32 i32)
        (local i32)
        block ;; label = @1
          local.get 1
          i32.eqz
          if ;; label = @2
            i32.const 4
            local.set 4
            br 1 (;@1;)
          end
          block ;; label = @2
            local.get 1
            local.get 3
            i32.gt_u
            br_if 0 (;@2;)
            local.get 1
            local.get 2
            i32.mul
            local.tee 4
            i32.const 0
            i32.lt_s
            br_if 0 (;@2;)
            i32.const 4
            local.get 4
            call 172
            local.tee 4
            br_if 1 (;@1;)
          end
          unreachable
        end
        local.get 0
        i32.const 0
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        local.get 4
        i32.store
      )
      (func (;212;) (type 0) (param i32 i32) (result i32)
        (local i32)
        call 176
        block ;; label = @1
          block ;; label = @2
            block ;; label = @3
              i32.const 0
              i32.const 2
              i32.const 1
              i32.const 1053920
              i32.load
              local.tee 2
              local.get 1
              i32.and
              select
              local.get 2
              local.get 0
              i32.and
              select
              local.tee 2
              i32.const 1
              i32.sub
              br_table 2 (;@1;) 1 (;@2;) 0 (;@3;)
            end
            unreachable
          end
          i32.const 0
          local.set 2
        end
        local.get 2
        i32.const 0
        call 163
      )
      (func (;213;) (type 0) (param i32 i32) (result i32)
        global.get 0
        local.get 1
        i32.sub
        global.set 0
        call 176
        local.get 0
        i32.load
        if ;; label = @1
          local.get 0
          i32.load offset=4
          drop
          unreachable
        end
        unreachable
      )
      (table (;0;) 19 19 funcref)
      (memory (;0;) 17)
      (global (;0;) (mut i32) i32.const 1048576)
      (global (;1;) i32 i32.const 1053848)
      (global (;2;) i32 i32.const 1053904)
      (export "memory" (memory 0))
      (export "env" (global 1))
      (export "io" (global 2))
      (export "wasi:cli/environment@0.2.0-rc-2023-10-18#get-environment" (func 19))
      (export "cabi_post_wasi:cli/environment@0.2.0-rc-2023-10-18#get-environment" (func 82))
      (export "wasi:cli/environment@0.2.0-rc-2023-10-18#get-arguments" (func 29))
      (export "cabi_post_wasi:cli/environment@0.2.0-rc-2023-10-18#get-arguments" (func 96))
      (export "wasi:cli/environment@0.2.0-rc-2023-10-18#initial-cwd" (func 29))
      (export "cabi_post_wasi:cli/environment@0.2.0-rc-2023-10-18#initial-cwd" (func 153))
      (export "wasi:cli/stdin@0.2.0-rc-2023-10-18#get-stdin" (func 85))
      (export "wasi:cli/stdout@0.2.0-rc-2023-10-18#get-stdout" (func 113))
      (export "wasi:cli/stderr@0.2.0-rc-2023-10-18#get-stderr" (func 114))
      (export "wasi:cli/terminal-input@0.2.0-rc-2023-10-18#[dtor]terminal-input" (func 192))
      (export "wasi:cli/terminal-stdin@0.2.0-rc-2023-10-18#get-terminal-stdin" (func 141))
      (export "wasi:cli/terminal-stdout@0.2.0-rc-2023-10-18#get-terminal-stdout" (func 177))
      (export "wasi:cli/terminal-stderr@0.2.0-rc-2023-10-18#get-terminal-stderr" (func 178))
      (export "wasi:clocks/monotonic-clock@0.2.0-rc-2023-10-18#now" (func 198))
      (export "wasi:clocks/monotonic-clock@0.2.0-rc-2023-10-18#resolution" (func 198))
      (export "wasi:clocks/monotonic-clock@0.2.0-rc-2023-10-18#subscribe" (func 199))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[dtor]descriptor" (func 169))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[dtor]directory-entry-stream" (func 142))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.read-via-stream" (func 83))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.write-via-stream" (func 143))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.append-via-stream" (func 144))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.advise" (func 179))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.get-flags" (func 157))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.get-type" (func 104))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.set-size" (func 158))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.set-times" (func 159))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.read" (func 47))
      (export "cabi_post_wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.read" (func 156))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.write" (func 134))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.read-directory" (func 54))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.sync" (func 160))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.create-directory-at" (func 145))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.stat" (func 34))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.stat-at" (func 27))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.set-times-at" (func 146))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.link-at" (func 122))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.open-at" (func 32))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.readlink-at" (func 36))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.rename-at" (func 123))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.symlink-at" (func 135))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.access-at" (func 147))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.change-directory-permissions-at" (func 148))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.lock-exclusive" (func 161))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.is-same-object" (func 84))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.metadata-hash" (func 71))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.metadata-hash-at" (func 38))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]directory-entry-stream.read-directory-entry" (func 33))
      (export "cabi_post_wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]directory-entry-stream.read-directory-entry" (func 132))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#filesystem-error-code" (func 127))
      (export "wasi:filesystem/preopens@0.2.0-rc-2023-10-18#get-directories" (func 13))
      (export "cabi_post_wasi:filesystem/preopens@0.2.0-rc-2023-10-18#get-directories" (func 94))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields" (func 193))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]incoming-request" (func 193))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]outgoing-request" (func 193))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]response-outparam" (func 193))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]incoming-response" (func 193))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]incoming-body" (func 193))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]future-trailers" (func 193))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]outgoing-response" (func 193))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]outgoing-body" (func 193))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]future-incoming-response" (func 193))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[constructor]fields" (func 200))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]fields.get" (func 206))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]fields.set" (func 195))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]fields.delete" (func 196))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]fields.append" (func 195))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]fields.entries" (func 201))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]fields.clone" (func 201))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.method" (func 201))
      (export "cabi_post_wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.method" (func 149))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.path-with-query" (func 201))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.scheme" (func 201))
      (export "cabi_post_wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.scheme" (func 128))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.authority" (func 201))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.headers" (func 201))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.consume" (func 201))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[constructor]outgoing-request" (func 204))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]outgoing-request.write" (func 201))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[static]response-outparam.set" (func 195))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-response.status" (func 201))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-response.headers" (func 201))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-response.consume" (func 201))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-body.stream" (func 201))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[static]incoming-body.finish" (func 201))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]future-trailers.subscribe" (func 201))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]future-trailers.get" (func 201))
      (export "cabi_post_wasi:http/types@0.2.0-rc-2023-10-18#[method]future-trailers.get" (func 129))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[constructor]outgoing-response" (func 200))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]outgoing-response.write" (func 201))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]outgoing-body.write" (func 201))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[static]outgoing-body.finish" (func 196))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]future-incoming-response.get" (func 201))
      (export "cabi_post_wasi:http/types@0.2.0-rc-2023-10-18#[method]future-incoming-response.get" (func 121))
      (export "wasi:http/types@0.2.0-rc-2023-10-18#[method]future-incoming-response.subscribe" (func 201))
      (export "wasi:http/outgoing-handler@0.2.0-rc-2023-10-18#handle" (func 207))
      (export "cabi_post_wasi:http/outgoing-handler@0.2.0-rc-2023-10-18#handle" (func 154))
      (export "wasi:io/poll@0.2.0-rc-2023-10-18#[dtor]pollable" (func 150))
      (export "wasi:io/poll@0.2.0-rc-2023-10-18#poll-list" (func 42))
      (export "cabi_post_wasi:io/poll@0.2.0-rc-2023-10-18#poll-list" (func 173))
      (export "wasi:io/poll@0.2.0-rc-2023-10-18#poll-one" (func 97))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[dtor]error" (func 151))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[dtor]input-stream" (func 139))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[dtor]output-stream" (func 140))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[method]error.to-debug-string" (func 66))
      (export "cabi_post_wasi:io/streams@0.2.0-rc-2023-10-18#[method]error.to-debug-string" (func 180))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[method]input-stream.read" (func 69))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[method]input-stream.blocking-read" (func 70))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[method]input-stream.skip" (func 50))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[method]input-stream.blocking-skip" (func 50))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[method]input-stream.subscribe" (func 133))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.check-write" (func 53))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.write" (func 57))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.blocking-write-and-flush" (func 57))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.flush" (func 64))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.blocking-flush" (func 64))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.subscribe" (func 124))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.write-zeroes" (func 62))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.blocking-write-zeroes-and-flush" (func 62))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.splice" (func 43))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.blocking-splice" (func 43))
      (export "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.forward" (func 44))
      (export "wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18#[dtor]resolve-address-stream" (func 170))
      (export "wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18#resolve-addresses" (func 203))
      (export "wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18#[method]resolve-address-stream.resolve-next-address" (func 35))
      (export "wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18#[method]resolve-address-stream.subscribe" (func 165))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[dtor]tcp-socket" (func 170))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.start-bind" (func 46))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.finish-bind" (func 67))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.start-connect" (func 46))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.finish-connect" (func 67))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.start-listen" (func 67))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.finish-listen" (func 67))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.accept" (func 67))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.local-address" (func 61))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.remote-address" (func 61))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.address-family" (func 165))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.ipv6-only" (func 101))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.set-ipv6-only" (func 95))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.set-listen-backlog-size" (func 98))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.keep-alive" (func 101))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.set-keep-alive" (func 95))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.no-delay" (func 101))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.set-no-delay" (func 95))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.unicast-hop-limit" (func 101))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.set-unicast-hop-limit" (func 95))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.receive-buffer-size" (func 67))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.set-receive-buffer-size" (func 98))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.send-buffer-size" (func 67))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.set-send-buffer-size" (func 98))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.subscribe" (func 165))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.shutdown" (func 95))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[dtor]udp-socket" (func 170))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.start-bind" (func 46))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.finish-bind" (func 67))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.start-connect" (func 46))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.finish-connect" (func 67))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.receive" (func 15))
      (export "cabi_post_wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.receive" (func 86))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.send" (func 16))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.local-address" (func 61))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.remote-address" (func 61))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.address-family" (func 165))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.ipv6-only" (func 101))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.set-ipv6-only" (func 95))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.unicast-hop-limit" (func 101))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.set-unicast-hop-limit" (func 95))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.receive-buffer-size" (func 67))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.set-receive-buffer-size" (func 98))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.send-buffer-size" (func 67))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.set-send-buffer-size" (func 98))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.subscribe" (func 165))
      (export "cabi_realloc" (func 119))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.remove-directory-at" (func 145))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.unlink-file-at" (func 145))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.lock-shared" (func 161))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.try-lock-shared" (func 161))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.try-lock-exclusive" (func 161))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.unlock" (func 161))
      (export "cabi_post_wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.path-with-query" (func 153))
      (export "cabi_post_wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.authority" (func 153))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.sync-data" (func 160))
      (export "wasi:cli/terminal-output@0.2.0-rc-2023-10-18#[dtor]terminal-output" (func 192))
      (export "cabi_post_wasi:http/types@0.2.0-rc-2023-10-18#[method]fields.entries" (func 82))
      (export "cabi_post_wasi:http/types@0.2.0-rc-2023-10-18#[method]fields.get" (func 96))
      (export "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.change-file-permissions-at" (func 148))
      (export "cabi_post_wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.readlink-at" (func 156))
      (export "cabi_post_wasi:io/streams@0.2.0-rc-2023-10-18#[method]input-stream.read" (func 156))
      (export "cabi_post_wasi:io/streams@0.2.0-rc-2023-10-18#[method]input-stream.blocking-read" (func 156))
      (export "wasi:cli/exit@0.2.0-rc-2023-10-18#exit" (func 193))
      (export "wasi:random/random@0.2.0-rc-2023-10-18#get-random-bytes" (func 202))
      (export "cabi_post_wasi:random/random@0.2.0-rc-2023-10-18#get-random-bytes" (func 193))
      (export "wasi:random/random@0.2.0-rc-2023-10-18#get-random-u64" (func 198))
      (export "wasi:random/insecure@0.2.0-rc-2023-10-18#get-insecure-random-bytes" (func 202))
      (export "cabi_post_wasi:random/insecure@0.2.0-rc-2023-10-18#get-insecure-random-bytes" (func 193))
      (export "wasi:random/insecure@0.2.0-rc-2023-10-18#get-insecure-random-u64" (func 198))
      (export "wasi:random/insecure-seed@0.2.0-rc-2023-10-18#insecure-seed" (func 197))
      (export "wasi:clocks/wall-clock@0.2.0-rc-2023-10-18#now" (func 197))
      (export "wasi:clocks/wall-clock@0.2.0-rc-2023-10-18#resolution" (func 197))
      (export "wasi:clocks/wall-clock@0.2.0-rc-2023-10-18#subscribe" (func 199))
      (export "wasi:clocks/timezone@0.2.0-rc-2023-10-18#display" (func 199))
      (export "cabi_post_wasi:clocks/timezone@0.2.0-rc-2023-10-18#display" (func 193))
      (export "wasi:clocks/timezone@0.2.0-rc-2023-10-18#utc-offset" (func 199))
      (export "wasi:sockets/network@0.2.0-rc-2023-10-18#drop-network" (func 193))
      (export "wasi:sockets/instance-network@0.2.0-rc-2023-10-18#instance-network" (func 197))
      (export "wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18#resolve-next-address" (func 201))
      (export "wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18#drop-resolve-address-stream" (func 193))
      (export "wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18#subscribe" (func 201))
      (export "wasi:sockets/tcp-create-socket@0.2.0-rc-2023-10-18#create-tcp-socket" (func 201))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#start-bind" (func 204))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#finish-bind" (func 201))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#start-connect" (func 204))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#finish-connect" (func 201))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#start-listen" (func 201))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#finish-listen" (func 201))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#accept" (func 201))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#local-address" (func 201))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#remote-address" (func 201))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#address-family" (func 201))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#ipv6-only" (func 201))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#set-ipv6-only" (func 200))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#set-listen-backlog-size" (func 205))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#keep-alive" (func 201))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#set-keep-alive" (func 200))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#no-delay" (func 201))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#set-no-delay" (func 200))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#unicast-hop-limit" (func 201))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#set-unicast-hop-limit" (func 200))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#receive-buffer-size" (func 201))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#set-receive-buffer-size" (func 205))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#send-buffer-size" (func 201))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#set-send-buffer-size" (func 205))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#subscribe" (func 201))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#shutdown" (func 200))
      (export "wasi:sockets/tcp@0.2.0-rc-2023-10-18#drop-tcp-socket" (func 193))
      (export "wasi:sockets/udp-create-socket@0.2.0-rc-2023-10-18#create-udp-socket" (func 201))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#start-bind" (func 204))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#finish-bind" (func 201))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#start-connect" (func 204))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#finish-connect" (func 201))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#receive" (func 205))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#send" (func 206))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#local-address" (func 201))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#remote-address" (func 201))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#address-family" (func 201))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#ipv6-only" (func 201))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#set-ipv6-only" (func 200))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#unicast-hop-limit" (func 201))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#set-unicast-hop-limit" (func 200))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#receive-buffer-size" (func 201))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#set-receive-buffer-size" (func 205))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#send-buffer-size" (func 201))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#set-send-buffer-size" (func 205))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#subscribe" (func 201))
      (export "wasi:sockets/udp@0.2.0-rc-2023-10-18#drop-udp-socket" (func 193))
      (export "wasi:http/incoming-handler@0.2.0-rc-2023-10-18#handle" (func 194))
      (elem (;0;) (i32.const 1) func 93 115 99 20 14 88 91 187 208 185 45 189 30 52 131 188 190 191)
      (data (;0;) (i32.const 1048576) "Resourcehandle././\00\00\98\09\10\00\00\00\00\00CodeHostaccesswould-blockalreadybad-descriptorbusydeadlockquotaexistfile-too-largeillegal-byte-sequencein-progressinterruptedinvalidiois-directorylooptoo-many-linksmessage-sizename-too-longno-deviceno-entryno-lockinsufficient-memoryinsufficient-spacenot-directorynot-emptynot-recoverableunsupportedno-ttyno-such-deviceoverflownot-permittedpiperead-onlyinvalid-seektext-file-busycross-devicePermission denied, similar to `EACCES` in POSIX.Resource unavailable, or operation would block, similar to `EAGAIN` and `EWOULDBLOCK` in POSIX.Connection already in progress, similar to `EALREADY` in POSIX.Bad descriptor, similar to `EBADF` in POSIX.Device or resource busy, similar to `EBUSY` in POSIX.Resource deadlock would occur, similar to `EDEADLK` in POSIX.Storage quota exceeded, similar to `EDQUOT` in POSIX.File exists, similar to `EEXIST` in POSIX.File too large, similar to `EFBIG` in POSIX.Illegal byte sequence, similar to `EILSEQ` in POSIX.Operation in progress, similar to `EINPROGRESS` in POSIX.Interrupted function, similar to `EINTR` in POSIX.Invalid argument, similar to `EINVAL` in POSIX.I/O error, similar to `EIO` in POSIX.Is a directory, similar to `EISDIR` in POSIX.Too many levels of symbolic links, similar to `ELOOP` in POSIX.Too many links, similar to `EMLINK` in POSIX.Message too large, similar to `EMSGSIZE` in POSIX.Filename too long, similar to `ENAMETOOLONG` in POSIX.No such device, similar to `ENODEV` in POSIX.No such file or directory, similar to `ENOENT` in POSIX.No locks available, similar to `ENOLCK` in POSIX.Not enough space, similar to `ENOMEM` in POSIX.No space left on device, similar to `ENOSPC` in POSIX.Not a directory or a symbolic link to a directory, similar to `ENOTDIR` in POSIX.Directory not empty, similar to `ENOTEMPTY` in POSIX.State not recoverable, similar to `ENOTRECOVERABLE` in POSIX.Not supported, similar to `ENOTSUP` and `ENOSYS` in POSIX.Inappropriate I/O control operation, similar to `ENOTTY` in POSIX.No such device or address, similar to `ENXIO` in POSIX.Value too large to be stored in data type, similar to `EOVERFLOW` in POSIX.Operation not permitted, similar to `EPERM` in POSIX.Broken pipe, similar to `EPIPE` in POSIX.Read-only file system, similar to `EROFS` in POSIX.Invalid seek, similar to `ESPIPE` in POSIX.Text file busy, similar to `ETXTBSY` in POSIX.Cross-device link, similar to `EXDEV` in POSIX.ErrorCodecodenamemessageError\00\09\00\00\00\04\00\00\00\04\00\00\00\0a\00\00\00\0b\00\00\00\0c\00\00\00)\00\00\00\09\00\00\00\0c\00\00\00\04\00\00\00\0d\00\00\00\0e\00\00\00\0f\00\00\00     { , :  {\0a,\0a} }((\0a0x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\09\00\00\00\04\00\00\00\04\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01")
      (data (;1;) (i32.const 1051502) "\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04")
      (data (;2;) (i32.const 1051565) "\06\01\01\03\01\04\02\05\07\07\02\08\08\09\02\0a\05\0b\02\0e\04\10\01\11\02\12\05\13\11\14\01\15\02\17\02\19\0d\1c\05\1d\08\1f\01$\01j\04k\02\af\03\b1\02\bc\02\cf\02\d1\02\d4\0c\d5\09\d6\02\d7\02\da\01\e0\05\e1\02\e7\04\e8\02\ee \f0\04\f8\02\fa\03\fb\01\0c';>NO\8f\9e\9e\9f{\8b\93\96\a2\b2\ba\86\b1\06\07\096=>V\f3\d0\d1\04\14\1867VW\7f\aa\ae\af\bd5\e0\12\87\89\8e\9e\04\0d\0e\11\12)14:EFIJNOde\5c\b6\b7\1b\1c\07\08\0a\0b\14\1769:\a8\a9\d8\d9\097\90\91\a8\07\0a;>fi\8f\92\11o_\bf\ee\efZb\f4\fc\ffST\9a\9b./'(U\9d\a0\a1\a3\a4\a7\a8\ad\ba\bc\c4\06\0b\0c\15\1d:?EQ\a6\a7\cc\cd\a0\07\19\1a\22%>?\e7\ec\ef\ff\c5\c6\04 #%&(38:HJLPSUVXZ\5c^`cefksx}\7f\8a\a4\aa\af\b0\c0\d0\ae\afno\be\93^\22{\05\03\04-\03f\03\01/.\80\82\1d\031\0f\1c\04$\09\1e\05+\05D\04\0e*\80\aa\06$\04$\04(\084\0bNC\817\09\16\0a\08\18;E9\03c\08\090\16\05!\03\1b\05\01@8\04K\05/\04\0a\07\09\07@ '\04\0c\096\03:\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\81&RK+\08*\16\1a&\1c\14\17\09N\04$\09D\0d\19\07\0a\06H\08'\09u\0bB>*\06;\05\0a\06Q\06\01\05\10\03\05\80\8bb\1eH\08\0a\80\a6^\22E\0b\0a\06\0d\13:\06\0a6,\04\17\80\b9<dS\0cH\09\0aFE\1bH\08S\0dI\07\0a\80\f6F\0a\1d\03GI7\03\0e\08\0a\069\07\0a\816\19\07;\03\1cV\01\0f2\0d\83\9bfu\0b\80\c4\8aLc\0d\840\10\16\8f\aa\82G\a1\b9\829\07*\04\5c\06&\0aF\0a(\05\13\82\b0[eK\049\07\11@\05\0b\02\0e\97\f8\08\84\d6*\09\a2\e7\813\0f\01\1d\06\0e\04\08\81\8c\89\04k\05\0d\03\09\07\10\92`G\09t<\80\f6\0as\08p\15Fz\14\0c\14\0cW\09\19\80\87\81G\03\85B\0f\15\84P\1f\06\06\80\d5+\05>!\01p-\03\1a\04\02\81@\1f\11:\05\01\81\d0*\82\e6\80\f7)L\04\0a\04\02\83\11DL=\80\c2<\06\01\04U\05\1b4\02\81\0e,\04d\0cV\0a\80\ae8\1d\0d,\04\09\07\02\0e\06\80\9a\83\d8\04\11\03\0d\03w\04_\06\0c\04\01\0f\0c\048\08\0a\06(\08\22N\81T\0c\1d\03\09\076\08\0e\04\09\07\09\07\80\cb%\0a\84\06\00\01\03\05\05\06\06\02\07\06\08\07\09\11\0a\1c\0b\19\0c\1a\0d\10\0e\0c\0f\04\10\03\12\12\13\09\16\01\17\04\18\01\19\03\1a\07\1b\01\1c\02\1f\16 \03+\03-\0b.\010\031\022\01\a7\02\a9\02\aa\04\ab\08\fa\02\fb\05\fd\02\fe\03\ff\09\adxy\8b\8d\a20WX\8b\8c\90\1c\dd\0e\0fKL\fb\fc./?\5c]_\e2\84\8d\8e\91\92\a9\b1\ba\bb\c5\c6\c9\ca\de\e4\e5\ff\00\04\11\12)147:;=IJ]\84\8e\92\a9\b1\b4\ba\bb\c6\ca\ce\cf\e4\e5\00\04\0d\0e\11\12)14:;EFIJ^de\84\91\9b\9d\c9\ce\cf\0d\11):;EIW[\5c^_de\8d\91\a9\b4\ba\bb\c5\c9\df\e4\e5\f0\0d\11EIde\80\84\b2\bc\be\bf\d5\d7\f0\f1\83\85\8b\a4\a6\be\bf\c5\c7\cf\da\dbH\98\bd\cd\c6\ce\cfINOWY^_\89\8e\8f\b1\b6\b7\bf\c1\c6\c7\d7\11\16\17[\5c\f6\f7\fe\ff\80mq\de\df\0e\1fno\1c\1d_}~\ae\af\7f\bb\bc\16\17\1e\1fFGNOXZ\5c^~\7f\b5\c5\d4\d5\dc\f0\f1\f5rs\8ftu\96&./\a7\af\b7\bf\c7\cf\d7\df\9a@\97\980\8f\1f\d2\d4\ce\ffNOZ[\07\08\0f\10'/\ee\efno7=?BE\90\91Sgu\c8\c9\d0\d1\d8\d9\e7\fe\ff\00 _\22\82\df\04\82D\08\1b\04\06\11\81\ac\0e\80\ab\05\1f\09\81\1b\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0aP\0f\12\07U\07\03\04\1c\0a\09\03\08\03\07\03\02\03\03\03\0c\04\05\03\0b\06\01\0e\15\05N\07\1b\07W\07\02\06\17\0cP\04C\03-\03\01\04\11\06\0f\0c:\04\1d%_ m\04j%\80\c8\05\82\b0\03\1a\06\82\fd\03Y\07\16\09\18\09\14\0c\14\0cj\06\0a\06\1a\06Y\07+\05F\0a,\04\0c\04\01\031\0b,\04\1a\06\0b\03\80\ac\06\0a\06/1M\03\80\a4\08<\03\0f\03<\078\08+\05\82\ff\11\18\08/\11-\03!\0f!\0f\80\8c\04\82\97\19\0b\15\88\94\05/\05;\07\02\0e\18\09\80\be\22t\0c\80\d6\1a\0c\05\80\ff\05\80\df\0c\f2\9d\037\09\81\5c\14\80\b8\08\80\cb\05\0a\18;\03\0a\068\08F\08\0c\06t\0b\1e\03Z\04Y\09\80\83\18\1c\0a\16\09L\04\80\8a\06\ab\a4\0c\17\041\a1\04\81\da&\07\0c\05\05\80\a6\10\81\f5\07\01 *\06L\04\80\8d\04\80\be\03\1b\03\0f\0d0123456789abcdef\5cu{\00\00\03\00\00\83\04 \00\91\05`\00]\13\a0\00\12\17 \1f\0c `\1f\ef,\a0+*0 ,o\a6\e0,\02\a8`-\1e\fb`.\00\fe 6\9e\ff`6\fd\01\e16\01\0a!7$\0d\e17\ab\0ea9/\18\a190\1caH\f3\1e\a1L@4aP\f0j\a1QOo!R\9d\bc\a1R\00\cfaSe\d1\a1S\00\da!T\00\e0\e1U\ae\e2aW\ec\e4!Y\d0\e8\a1Y \00\eeY\f0\01\7fZ\00p\00\07\00-\01\01\01\02\01\02\01\01H\0b0\15\10\01e\07\02\06\02\02\01\04#\01\1e\1b[\0b:\09\09\01\18\04\01\09\01\03\01\05+\03<\08*\18\01 7\01\01\01\04\08\04\01\03\07\0a\02\1d\01:\01\01\01\02\04\08\01\09\01\0a\02\1a\01\02\029\01\04\02\04\02\02\03\03\01\1e\02\03\01\0b\029\01\04\05\01\02\04\01\14\02\16\06\01\01:\01\01\02\01\04\08\01\07\03\0a\02\1e\01;\01\01\01\0c\01\09\01(\01\03\017\01\01\03\05\03\01\04\07\02\0b\02\1d\01:\01\02\01\02\01\03\01\05\02\07\02\0b\02\1c\029\02\01\01\02\04\08\01\09\01\0a\02\1d\01H\01\04\01\02\03\01\01\08\01Q\01\02\07\0c\08b\01\02\09\0b\07I\02\1b\01\01\01\01\017\0e\01\05\01\02\05\0b\01$\09\01f\04\01\06\01\02\02\02\19\02\04\03\10\04\0d\01\02\02\06\01\0f\01\00\03\00\03\1d\02\1e\02\1e\02@\02\01\07\08\01\02\0b\09\01-\03\01\01u\02\22\01v\03\04\02\09\01\06\03\db\02\02\01:\01\01\07\01\01\01\01\02\08\06\0a\02\010\1f1\040\07\01\01\05\01(\09\0c\02 \04\02\02\01\038\01\01\02\03\01\01\03:\08\02\02\98\03\01\0d\01\07\04\01\06\01\03\02\c6@\00\01\c3!\00\03\8d\01` \00\06i\02\00\04\01\0a \02P\02\00\01\03\01\04\01\19\02\05\01\97\02\1a\12\0d\01&\08\19\0b.\030\01\02\04\02\02'\01C\06\02\02\02\02\0c\01\08\01/\013\01\01\03\02\02\05\02\01\01*\02\08\01\ee\01\02\01\04\01\00\01\00\10\10\10\00\02\00\01\e2\01\95\05\00\03\01\02\05\04(\03\04\01\a5\02\00\04\00\02P\03F\0b1\04{\016\0f)\01\02\02\0a\031\04\02\02\07\01=\03$\05\01\08>\01\0c\024\09\0a\04\02\01_\03\02\01\01\02\06\01\02\01\9d\01\03\08\15\029\02\01\01\01\01\16\01\0e\07\03\05\c3\08\02\03\01\01\17\01Q\01\02\06\01\01\02\01\01\02\01\02\eb\01\02\04\06\02\01\02\1b\02U\08\02\01\01\02j\01\01\01\02\06\01\01e\03\02\04\01\05\00\09\01\02\f5\01\0a\02\01\01\04\01\90\04\02\02\04\01 \0a(\06\02\04\08\01\09\06\02\03.\0d\01\02\00\07\01\06\01\01R\16\02\07\01\02\01\02z\06\03\01\01\02\01\07\01\01H\02\03\01\01\01\00\02\0b\024\05\05\01\01\01\00\01\06\0f\00\05;\07\00\01?\04Q\01\00\02\00.\02\17\00\01\01\03\04\05\08\08\02\07\1e\04\94\03\007\042\08\01\0e\01\16\05\01\0f\00\07\01\11\02\07\01\02\01\05d\01\a0\07\00\01=\04\00\04\00\07m\07\00`\80\f0")
      (data (;3;) (i32.const 1053872) "\04")
      (data (;4;) (i32.const 1053910) "\10\00\00\00\00\00\00\00\10")
      (@producers
        (processed-by "rustc" "1.73.0-nightly (439d066bc 2023-08-10)")
        (processed-by "clang" "16.0.4 (https://github.com/llvm/llvm-project ae42196bc493ffe877a7e3dff8be32035dea4d07)")
        (processed-by "walrus" "0.20.1")
        (processed-by "wit-component" "0.18.0")
        (processed-by "wasi-virt" "0.1.0")
      )
    )
    (core module (;1;)
      (type (;0;) (func (param i32)))
      (func $#func0<dtor-_export_wasi:io/poll@0.2.0-rc-2023-10-18-pollable> (@name "dtor-[export]wasi:io/poll@0.2.0-rc-2023-10-18-pollable") (;0;) (type 0) (param i32)
        local.get 0
        i32.const 0
        call_indirect (type 0)
      )
      (func $#func1<dtor-_export_wasi:io/streams@0.2.0-rc-2023-10-18-error> (@name "dtor-[export]wasi:io/streams@0.2.0-rc-2023-10-18-error") (;1;) (type 0) (param i32)
        local.get 0
        i32.const 1
        call_indirect (type 0)
      )
      (func $#func2<dtor-_export_wasi:io/streams@0.2.0-rc-2023-10-18-input-stream> (@name "dtor-[export]wasi:io/streams@0.2.0-rc-2023-10-18-input-stream") (;2;) (type 0) (param i32)
        local.get 0
        i32.const 2
        call_indirect (type 0)
      )
      (func $#func3<dtor-_export_wasi:io/streams@0.2.0-rc-2023-10-18-output-stream> (@name "dtor-[export]wasi:io/streams@0.2.0-rc-2023-10-18-output-stream") (;3;) (type 0) (param i32)
        local.get 0
        i32.const 3
        call_indirect (type 0)
      )
      (func $#func4<dtor-_export_wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18-resolve-address-stream> (@name "dtor-[export]wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18-resolve-address-stream") (;4;) (type 0) (param i32)
        local.get 0
        i32.const 4
        call_indirect (type 0)
      )
      (func $#func5<dtor-_export_wasi:sockets/tcp@0.2.0-rc-2023-10-18-tcp-socket> (@name "dtor-[export]wasi:sockets/tcp@0.2.0-rc-2023-10-18-tcp-socket") (;5;) (type 0) (param i32)
        local.get 0
        i32.const 5
        call_indirect (type 0)
      )
      (func $#func6<dtor-_export_wasi:sockets/udp@0.2.0-rc-2023-10-18-udp-socket> (@name "dtor-[export]wasi:sockets/udp@0.2.0-rc-2023-10-18-udp-socket") (;6;) (type 0) (param i32)
        local.get 0
        i32.const 6
        call_indirect (type 0)
      )
      (func $#func7<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-fields> (@name "dtor-[export]wasi:http/types@0.2.0-rc-2023-10-18-fields") (;7;) (type 0) (param i32)
        local.get 0
        i32.const 7
        call_indirect (type 0)
      )
      (func $#func8<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-incoming-request> (@name "dtor-[export]wasi:http/types@0.2.0-rc-2023-10-18-incoming-request") (;8;) (type 0) (param i32)
        local.get 0
        i32.const 8
        call_indirect (type 0)
      )
      (func $#func9<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-outgoing-request> (@name "dtor-[export]wasi:http/types@0.2.0-rc-2023-10-18-outgoing-request") (;9;) (type 0) (param i32)
        local.get 0
        i32.const 9
        call_indirect (type 0)
      )
      (func $#func10<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-response-outparam> (@name "dtor-[export]wasi:http/types@0.2.0-rc-2023-10-18-response-outparam") (;10;) (type 0) (param i32)
        local.get 0
        i32.const 10
        call_indirect (type 0)
      )
      (func $#func11<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-incoming-response> (@name "dtor-[export]wasi:http/types@0.2.0-rc-2023-10-18-incoming-response") (;11;) (type 0) (param i32)
        local.get 0
        i32.const 11
        call_indirect (type 0)
      )
      (func $#func12<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-incoming-body> (@name "dtor-[export]wasi:http/types@0.2.0-rc-2023-10-18-incoming-body") (;12;) (type 0) (param i32)
        local.get 0
        i32.const 12
        call_indirect (type 0)
      )
      (func $#func13<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-future-trailers> (@name "dtor-[export]wasi:http/types@0.2.0-rc-2023-10-18-future-trailers") (;13;) (type 0) (param i32)
        local.get 0
        i32.const 13
        call_indirect (type 0)
      )
      (func $#func14<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-outgoing-response> (@name "dtor-[export]wasi:http/types@0.2.0-rc-2023-10-18-outgoing-response") (;14;) (type 0) (param i32)
        local.get 0
        i32.const 14
        call_indirect (type 0)
      )
      (func $#func15<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-outgoing-body> (@name "dtor-[export]wasi:http/types@0.2.0-rc-2023-10-18-outgoing-body") (;15;) (type 0) (param i32)
        local.get 0
        i32.const 15
        call_indirect (type 0)
      )
      (func $#func16<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-future-incoming-response> (@name "dtor-[export]wasi:http/types@0.2.0-rc-2023-10-18-future-incoming-response") (;16;) (type 0) (param i32)
        local.get 0
        i32.const 16
        call_indirect (type 0)
      )
      (func $#func17<dtor-_export_wasi:cli/terminal-input@0.2.0-rc-2023-10-18-terminal-input> (@name "dtor-[export]wasi:cli/terminal-input@0.2.0-rc-2023-10-18-terminal-input") (;17;) (type 0) (param i32)
        local.get 0
        i32.const 17
        call_indirect (type 0)
      )
      (func $#func18<dtor-_export_wasi:cli/terminal-output@0.2.0-rc-2023-10-18-terminal-output> (@name "dtor-[export]wasi:cli/terminal-output@0.2.0-rc-2023-10-18-terminal-output") (;18;) (type 0) (param i32)
        local.get 0
        i32.const 18
        call_indirect (type 0)
      )
      (func $#func19<dtor-_export_wasi:filesystem/types@0.2.0-rc-2023-10-18-descriptor> (@name "dtor-[export]wasi:filesystem/types@0.2.0-rc-2023-10-18-descriptor") (;19;) (type 0) (param i32)
        local.get 0
        i32.const 19
        call_indirect (type 0)
      )
      (func $#func20<dtor-_export_wasi:filesystem/types@0.2.0-rc-2023-10-18-directory-entry-stream> (@name "dtor-[export]wasi:filesystem/types@0.2.0-rc-2023-10-18-directory-entry-stream") (;20;) (type 0) (param i32)
        local.get 0
        i32.const 20
        call_indirect (type 0)
      )
      (table (;0;) 21 21 funcref)
      (export "0" (func $#func0<dtor-_export_wasi:io/poll@0.2.0-rc-2023-10-18-pollable>))
      (export "1" (func $#func1<dtor-_export_wasi:io/streams@0.2.0-rc-2023-10-18-error>))
      (export "2" (func $#func2<dtor-_export_wasi:io/streams@0.2.0-rc-2023-10-18-input-stream>))
      (export "3" (func $#func3<dtor-_export_wasi:io/streams@0.2.0-rc-2023-10-18-output-stream>))
      (export "4" (func $#func4<dtor-_export_wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18-resolve-address-stream>))
      (export "5" (func $#func5<dtor-_export_wasi:sockets/tcp@0.2.0-rc-2023-10-18-tcp-socket>))
      (export "6" (func $#func6<dtor-_export_wasi:sockets/udp@0.2.0-rc-2023-10-18-udp-socket>))
      (export "7" (func $#func7<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-fields>))
      (export "8" (func $#func8<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-incoming-request>))
      (export "9" (func $#func9<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-outgoing-request>))
      (export "10" (func $#func10<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-response-outparam>))
      (export "11" (func $#func11<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-incoming-response>))
      (export "12" (func $#func12<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-incoming-body>))
      (export "13" (func $#func13<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-future-trailers>))
      (export "14" (func $#func14<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-outgoing-response>))
      (export "15" (func $#func15<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-outgoing-body>))
      (export "16" (func $#func16<dtor-_export_wasi:http/types@0.2.0-rc-2023-10-18-future-incoming-response>))
      (export "17" (func $#func17<dtor-_export_wasi:cli/terminal-input@0.2.0-rc-2023-10-18-terminal-input>))
      (export "18" (func $#func18<dtor-_export_wasi:cli/terminal-output@0.2.0-rc-2023-10-18-terminal-output>))
      (export "19" (func $#func19<dtor-_export_wasi:filesystem/types@0.2.0-rc-2023-10-18-descriptor>))
      (export "20" (func $#func20<dtor-_export_wasi:filesystem/types@0.2.0-rc-2023-10-18-directory-entry-stream>))
      (export "$imports" (table 0))
      (@producers
        (processed-by "wit-component" "0.18.0")
      )
    )
    (core module (;2;)
      (type (;0;) (func (param i32)))
      (import "" "0" (func (;0;) (type 0)))
      (import "" "1" (func (;1;) (type 0)))
      (import "" "2" (func (;2;) (type 0)))
      (import "" "3" (func (;3;) (type 0)))
      (import "" "4" (func (;4;) (type 0)))
      (import "" "5" (func (;5;) (type 0)))
      (import "" "6" (func (;6;) (type 0)))
      (import "" "7" (func (;7;) (type 0)))
      (import "" "8" (func (;8;) (type 0)))
      (import "" "9" (func (;9;) (type 0)))
      (import "" "10" (func (;10;) (type 0)))
      (import "" "11" (func (;11;) (type 0)))
      (import "" "12" (func (;12;) (type 0)))
      (import "" "13" (func (;13;) (type 0)))
      (import "" "14" (func (;14;) (type 0)))
      (import "" "15" (func (;15;) (type 0)))
      (import "" "16" (func (;16;) (type 0)))
      (import "" "17" (func (;17;) (type 0)))
      (import "" "18" (func (;18;) (type 0)))
      (import "" "19" (func (;19;) (type 0)))
      (import "" "20" (func (;20;) (type 0)))
      (import "" "$imports" (table (;0;) 21 21 funcref))
      (elem (;0;) (i32.const 0) func 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20)
      (@producers
        (processed-by "wit-component" "0.18.0")
      )
    )
    (core instance (;0;) (instantiate 1))
    (alias core export 0 "0" (core func (;0;)))
    (type (;0;) (resource (rep i32) (dtor (func 0))))
    (core func (;1;) (canon resource.new 0))
    (core instance (;1;)
      (export "[resource-new]pollable" (func 1))
    )
    (alias core export 0 "1" (core func (;2;)))
    (type (;1;) (resource (rep i32) (dtor (func 2))))
    (core func (;3;) (canon resource.drop 1))
    (core func (;4;) (canon resource.new 1))
    (alias core export 0 "2" (core func (;5;)))
    (type (;2;) (resource (rep i32) (dtor (func 5))))
    (core func (;6;) (canon resource.drop 2))
    (core func (;7;) (canon resource.rep 2))
    (core func (;8;) (canon resource.new 2))
    (alias core export 0 "3" (core func (;9;)))
    (type (;3;) (resource (rep i32) (dtor (func 9))))
    (core func (;10;) (canon resource.new 3))
    (core instance (;2;)
      (export "[resource-drop]error" (func 3))
      (export "[resource-new]error" (func 4))
      (export "[resource-drop]input-stream" (func 6))
      (export "[resource-rep]input-stream" (func 7))
      (export "[resource-new]input-stream" (func 8))
      (export "[resource-new]output-stream" (func 10))
    )
    (type (;4;) (resource (rep i32)))
    (alias core export 0 "4" (core func (;11;)))
    (type (;5;) (resource (rep i32) (dtor (func 11))))
    (alias core export 0 "5" (core func (;12;)))
    (type (;6;) (resource (rep i32) (dtor (func 12))))
    (alias core export 0 "6" (core func (;13;)))
    (type (;7;) (resource (rep i32) (dtor (func 13))))
    (alias core export 0 "7" (core func (;14;)))
    (type (;8;) (resource (rep i32) (dtor (func 14))))
    (alias core export 0 "8" (core func (;15;)))
    (type (;9;) (resource (rep i32) (dtor (func 15))))
    (alias core export 0 "9" (core func (;16;)))
    (type (;10;) (resource (rep i32) (dtor (func 16))))
    (alias core export 0 "10" (core func (;17;)))
    (type (;11;) (resource (rep i32) (dtor (func 17))))
    (alias core export 0 "11" (core func (;18;)))
    (type (;12;) (resource (rep i32) (dtor (func 18))))
    (alias core export 0 "12" (core func (;19;)))
    (type (;13;) (resource (rep i32) (dtor (func 19))))
    (alias core export 0 "13" (core func (;20;)))
    (type (;14;) (resource (rep i32) (dtor (func 20))))
    (alias core export 0 "14" (core func (;21;)))
    (type (;15;) (resource (rep i32) (dtor (func 21))))
    (alias core export 0 "15" (core func (;22;)))
    (type (;16;) (resource (rep i32) (dtor (func 22))))
    (alias core export 0 "16" (core func (;23;)))
    (type (;17;) (resource (rep i32) (dtor (func 23))))
    (alias core export 0 "17" (core func (;24;)))
    (type (;18;) (resource (rep i32) (dtor (func 24))))
    (core func (;25;) (canon resource.new 18))
    (core instance (;3;)
      (export "[resource-new]terminal-input" (func 25))
    )
    (alias core export 0 "18" (core func (;26;)))
    (type (;19;) (resource (rep i32) (dtor (func 26))))
    (core func (;27;) (canon resource.new 19))
    (core instance (;4;)
      (export "[resource-new]terminal-output" (func 27))
    )
    (alias core export 0 "19" (core func (;28;)))
    (type (;20;) (resource (rep i32) (dtor (func 28))))
    (core func (;29;) (canon resource.drop 20))
    (core func (;30;) (canon resource.new 20))
    (alias core export 0 "20" (core func (;31;)))
    (type (;21;) (resource (rep i32) (dtor (func 31))))
    (core func (;32;) (canon resource.new 21))
    (core instance (;5;)
      (export "[resource-drop]descriptor" (func 29))
      (export "[resource-new]descriptor" (func 30))
      (export "[resource-new]directory-entry-stream" (func 32))
    )
    (core instance (;6;) (instantiate 0
        (with "[export]wasi:io/poll@0.2.0-rc-2023-10-18" (instance 1))
        (with "[export]wasi:io/streams@0.2.0-rc-2023-10-18" (instance 2))
        (with "[export]wasi:cli/terminal-input@0.2.0-rc-2023-10-18" (instance 3))
        (with "[export]wasi:cli/terminal-output@0.2.0-rc-2023-10-18" (instance 4))
        (with "[export]wasi:filesystem/types@0.2.0-rc-2023-10-18" (instance 5))
      )
    )
    (alias core export 6 "memory" (core memory (;0;)))
    (alias core export 6 "cabi_realloc" (core func (;33;)))
    (alias core export 0 "$imports" (core table (;0;)))
    (alias core export 6 "wasi:io/poll@0.2.0-rc-2023-10-18#[dtor]pollable" (core func (;34;)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[dtor]error" (core func (;35;)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[dtor]input-stream" (core func (;36;)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[dtor]output-stream" (core func (;37;)))
    (alias core export 6 "wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18#[dtor]resolve-address-stream" (core func (;38;)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[dtor]tcp-socket" (core func (;39;)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[dtor]udp-socket" (core func (;40;)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]fields" (core func (;41;)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]incoming-request" (core func (;42;)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]outgoing-request" (core func (;43;)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]response-outparam" (core func (;44;)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]incoming-response" (core func (;45;)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]incoming-body" (core func (;46;)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]future-trailers" (core func (;47;)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]outgoing-response" (core func (;48;)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]outgoing-body" (core func (;49;)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[dtor]future-incoming-response" (core func (;50;)))
    (alias core export 6 "wasi:cli/terminal-input@0.2.0-rc-2023-10-18#[dtor]terminal-input" (core func (;51;)))
    (alias core export 6 "wasi:cli/terminal-output@0.2.0-rc-2023-10-18#[dtor]terminal-output" (core func (;52;)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[dtor]descriptor" (core func (;53;)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[dtor]directory-entry-stream" (core func (;54;)))
    (core instance (;7;)
      (export "$imports" (table 0))
      (export "0" (func 34))
      (export "1" (func 35))
      (export "2" (func 36))
      (export "3" (func 37))
      (export "4" (func 38))
      (export "5" (func 39))
      (export "6" (func 40))
      (export "7" (func 41))
      (export "8" (func 42))
      (export "9" (func 43))
      (export "10" (func 44))
      (export "11" (func 45))
      (export "12" (func 46))
      (export "13" (func 47))
      (export "14" (func 48))
      (export "15" (func 49))
      (export "16" (func 50))
      (export "17" (func 51))
      (export "18" (func 52))
      (export "19" (func 53))
      (export "20" (func 54))
    )
    (core instance (;8;) (instantiate 2
        (with "" (instance 7))
      )
    )
    (type (;22;) (tuple string string))
    (type (;23;) (list 22))
    (type (;24;) (func (result 23)))
    (alias core export 6 "wasi:cli/environment@0.2.0-rc-2023-10-18#get-environment" (core func (;55;)))
    (alias core export 6 "cabi_post_wasi:cli/environment@0.2.0-rc-2023-10-18#get-environment" (core func (;56;)))
    (func (;0;) (type 24) (canon lift (core func 55) (memory 0) string-encoding=utf8 (post-return 56)))
    (type (;25;) (list string))
    (type (;26;) (func (result 25)))
    (alias core export 6 "wasi:cli/environment@0.2.0-rc-2023-10-18#get-arguments" (core func (;57;)))
    (alias core export 6 "cabi_post_wasi:cli/environment@0.2.0-rc-2023-10-18#get-arguments" (core func (;58;)))
    (func (;1;) (type 26) (canon lift (core func 57) (memory 0) string-encoding=utf8 (post-return 58)))
    (type (;27;) (option string))
    (type (;28;) (func (result 27)))
    (alias core export 6 "wasi:cli/environment@0.2.0-rc-2023-10-18#initial-cwd" (core func (;59;)))
    (alias core export 6 "cabi_post_wasi:cli/environment@0.2.0-rc-2023-10-18#initial-cwd" (core func (;60;)))
    (func (;2;) (type 28) (canon lift (core func 59) (memory 0) string-encoding=utf8 (post-return 60)))
    (component (;0;)
      (type (;0;) (tuple string string))
      (type (;1;) (list 0))
      (type (;2;) (func (result 1)))
      (import "import-func-get-environment" (func (;0;) (type 2)))
      (type (;3;) (list string))
      (type (;4;) (func (result 3)))
      (import "import-func-get-arguments" (func (;1;) (type 4)))
      (type (;5;) (option string))
      (type (;6;) (func (result 5)))
      (import "import-func-initial-cwd" (func (;2;) (type 6)))
      (type (;7;) (tuple string string))
      (type (;8;) (list 7))
      (type (;9;) (func (result 8)))
      (export (;3;) "get-environment" (func 0) (func (type 9)))
      (type (;10;) (list string))
      (type (;11;) (func (result 10)))
      (export (;4;) "get-arguments" (func 1) (func (type 11)))
      (type (;12;) (option string))
      (type (;13;) (func (result 12)))
      (export (;5;) "initial-cwd" (func 2) (func (type 13)))
    )
    (instance (;0;) (instantiate 0
        (with "import-func-get-environment" (func 0))
        (with "import-func-get-arguments" (func 1))
        (with "import-func-initial-cwd" (func 2))
      )
    )
    (export (;1;) "wasi:cli/environment@0.2.0-rc-2023-10-18" (instance 0))
    (type (;29;) (result))
    (type (;30;) (func (param "status" 29)))
    (alias core export 6 "wasi:cli/exit@0.2.0-rc-2023-10-18#exit" (core func (;61;)))
    (func (;3;) (type 30) (canon lift (core func 61)))
    (component (;1;)
      (type (;0;) (result))
      (type (;1;) (func (param "status" 0)))
      (import "import-func-exit" (func (;0;) (type 1)))
      (type (;2;) (result))
      (type (;3;) (func (param "status" 2)))
      (export (;1;) "exit" (func 0) (func (type 3)))
    )
    (instance (;2;) (instantiate 1
        (with "import-func-exit" (func 3))
      )
    )
    (export (;3;) "wasi:cli/exit@0.2.0-rc-2023-10-18" (instance 2))
    (type (;31;) (tuple u64 u64))
    (type (;32;) (func (result 31)))
    (alias core export 6 "wasi:random/insecure-seed@0.2.0-rc-2023-10-18#insecure-seed" (core func (;62;)))
    (func (;4;) (type 32) (canon lift (core func 62) (memory 0)))
    (component (;2;)
      (type (;0;) (tuple u64 u64))
      (type (;1;) (func (result 0)))
      (import "import-func-insecure-seed" (func (;0;) (type 1)))
      (type (;2;) (tuple u64 u64))
      (type (;3;) (func (result 2)))
      (export (;1;) "insecure-seed" (func 0) (func (type 3)))
    )
    (instance (;4;) (instantiate 2
        (with "import-func-insecure-seed" (func 4))
      )
    )
    (export (;5;) "wasi:random/insecure-seed@0.2.0-rc-2023-10-18" (instance 4))
    (type (;33;) (list u8))
    (type (;34;) (func (param "len" u64) (result 33)))
    (alias core export 6 "wasi:random/insecure@0.2.0-rc-2023-10-18#get-insecure-random-bytes" (core func (;63;)))
    (alias core export 6 "cabi_post_wasi:random/insecure@0.2.0-rc-2023-10-18#get-insecure-random-bytes" (core func (;64;)))
    (func (;5;) (type 34) (canon lift (core func 63) (memory 0) (post-return 64)))
    (type (;35;) (func (result u64)))
    (alias core export 6 "wasi:random/insecure@0.2.0-rc-2023-10-18#get-insecure-random-u64" (core func (;65;)))
    (func (;6;) (type 35) (canon lift (core func 65)))
    (component (;3;)
      (type (;0;) (list u8))
      (type (;1;) (func (param "len" u64) (result 0)))
      (import "import-func-get-insecure-random-bytes" (func (;0;) (type 1)))
      (type (;2;) (func (result u64)))
      (import "import-func-get-insecure-random-u64" (func (;1;) (type 2)))
      (type (;3;) (list u8))
      (type (;4;) (func (param "len" u64) (result 3)))
      (export (;2;) "get-insecure-random-bytes" (func 0) (func (type 4)))
      (type (;5;) (func (result u64)))
      (export (;3;) "get-insecure-random-u64" (func 1) (func (type 5)))
    )
    (instance (;6;) (instantiate 3
        (with "import-func-get-insecure-random-bytes" (func 5))
        (with "import-func-get-insecure-random-u64" (func 6))
      )
    )
    (export (;7;) "wasi:random/insecure@0.2.0-rc-2023-10-18" (instance 6))
    (type (;36;) (list u8))
    (type (;37;) (func (param "len" u64) (result 36)))
    (alias core export 6 "wasi:random/random@0.2.0-rc-2023-10-18#get-random-bytes" (core func (;66;)))
    (alias core export 6 "cabi_post_wasi:random/random@0.2.0-rc-2023-10-18#get-random-bytes" (core func (;67;)))
    (func (;7;) (type 37) (canon lift (core func 66) (memory 0) (post-return 67)))
    (alias core export 6 "wasi:random/random@0.2.0-rc-2023-10-18#get-random-u64" (core func (;68;)))
    (func (;8;) (type 35) (canon lift (core func 68)))
    (component (;4;)
      (type (;0;) (list u8))
      (type (;1;) (func (param "len" u64) (result 0)))
      (import "import-func-get-random-bytes" (func (;0;) (type 1)))
      (type (;2;) (func (result u64)))
      (import "import-func-get-random-u64" (func (;1;) (type 2)))
      (type (;3;) (list u8))
      (type (;4;) (func (param "len" u64) (result 3)))
      (export (;2;) "get-random-bytes" (func 0) (func (type 4)))
      (type (;5;) (func (result u64)))
      (export (;3;) "get-random-u64" (func 1) (func (type 5)))
    )
    (instance (;8;) (instantiate 4
        (with "import-func-get-random-bytes" (func 7))
        (with "import-func-get-random-u64" (func 8))
      )
    )
    (export (;9;) "wasi:random/random@0.2.0-rc-2023-10-18" (instance 8))
    (type (;38;) (borrow 0))
    (type (;39;) (list 38))
    (type (;40;) (list u32))
    (type (;41;) (func (param "in" 39) (result 40)))
    (alias core export 6 "wasi:io/poll@0.2.0-rc-2023-10-18#poll-list" (core func (;69;)))
    (alias core export 6 "cabi_post_wasi:io/poll@0.2.0-rc-2023-10-18#poll-list" (core func (;70;)))
    (func (;9;) (type 41) (canon lift (core func 69) (memory 0) (realloc 33) (post-return 70)))
    (type (;42;) (func (param "in" 38)))
    (alias core export 6 "wasi:io/poll@0.2.0-rc-2023-10-18#poll-one" (core func (;71;)))
    (func (;10;) (type 42) (canon lift (core func 71)))
    (component (;5;)
      (import "import-type-pollable" (type (;0;) (sub resource)))
      (type (;1;) (borrow 0))
      (type (;2;) (list 1))
      (type (;3;) (list u32))
      (type (;4;) (func (param "in" 2) (result 3)))
      (import "import-func-poll-list" (func (;0;) (type 4)))
      (type (;5;) (func (param "in" 1)))
      (import "import-func-poll-one" (func (;1;) (type 5)))
      (export (;6;) "pollable" (type 0))
      (type (;7;) (borrow 6))
      (type (;8;) (list 7))
      (type (;9;) (list u32))
      (type (;10;) (func (param "in" 8) (result 9)))
      (export (;2;) "poll-list" (func 0) (func (type 10)))
      (type (;11;) (func (param "in" 7)))
      (export (;3;) "poll-one" (func 1) (func (type 11)))
    )
    (instance (;10;) (instantiate 5
        (with "import-func-poll-list" (func 9))
        (with "import-func-poll-one" (func 10))
        (with "import-type-pollable" (type 0))
      )
    )
    (export (;11;) "wasi:io/poll@0.2.0-rc-2023-10-18" (instance 10))
    (type (;43;) (borrow 1))
    (type (;44;) (func (param "self" 43) (result string)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[method]error.to-debug-string" (core func (;72;)))
    (alias core export 6 "cabi_post_wasi:io/streams@0.2.0-rc-2023-10-18#[method]error.to-debug-string" (core func (;73;)))
    (func (;11;) (type 44) (canon lift (core func 72) (memory 0) string-encoding=utf8 (post-return 73)))
    (type (;45;) (borrow 2))
    (type (;46;) (list u8))
    (type (;47;) (own 1))
    (type (;48;) (variant (case "last-operation-failed" 47) (case "closed")))
    (type (;49;) (result 46 (error 48)))
    (type (;50;) (func (param "self" 45) (param "len" u64) (result 49)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[method]input-stream.read" (core func (;74;)))
    (alias core export 6 "cabi_post_wasi:io/streams@0.2.0-rc-2023-10-18#[method]input-stream.read" (core func (;75;)))
    (func (;12;) (type 50) (canon lift (core func 74) (memory 0) (post-return 75)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[method]input-stream.blocking-read" (core func (;76;)))
    (alias core export 6 "cabi_post_wasi:io/streams@0.2.0-rc-2023-10-18#[method]input-stream.blocking-read" (core func (;77;)))
    (func (;13;) (type 50) (canon lift (core func 76) (memory 0) (post-return 77)))
    (type (;51;) (result u64 (error 48)))
    (type (;52;) (func (param "self" 45) (param "len" u64) (result 51)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[method]input-stream.skip" (core func (;78;)))
    (func (;14;) (type 52) (canon lift (core func 78) (memory 0)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[method]input-stream.blocking-skip" (core func (;79;)))
    (func (;15;) (type 52) (canon lift (core func 79) (memory 0)))
    (alias export 11 "pollable" (type (;53;)))
    (type (;54;) (own 53))
    (type (;55;) (func (param "self" 45) (result 54)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[method]input-stream.subscribe" (core func (;80;)))
    (func (;16;) (type 55) (canon lift (core func 80)))
    (type (;56;) (borrow 3))
    (type (;57;) (func (param "self" 56) (result 51)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.check-write" (core func (;81;)))
    (func (;17;) (type 57) (canon lift (core func 81) (memory 0)))
    (type (;58;) (result (error 48)))
    (type (;59;) (func (param "self" 56) (param "contents" 46) (result 58)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.write" (core func (;82;)))
    (func (;18;) (type 59) (canon lift (core func 82) (memory 0) (realloc 33)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.blocking-write-and-flush" (core func (;83;)))
    (func (;19;) (type 59) (canon lift (core func 83) (memory 0) (realloc 33)))
    (type (;60;) (func (param "self" 56) (result 58)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.flush" (core func (;84;)))
    (func (;20;) (type 60) (canon lift (core func 84) (memory 0)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.blocking-flush" (core func (;85;)))
    (func (;21;) (type 60) (canon lift (core func 85) (memory 0)))
    (type (;61;) (func (param "self" 56) (result 54)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.subscribe" (core func (;86;)))
    (func (;22;) (type 61) (canon lift (core func 86)))
    (type (;62;) (func (param "self" 56) (param "len" u64) (result 58)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.write-zeroes" (core func (;87;)))
    (func (;23;) (type 62) (canon lift (core func 87) (memory 0)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.blocking-write-zeroes-and-flush" (core func (;88;)))
    (func (;24;) (type 62) (canon lift (core func 88) (memory 0)))
    (type (;63;) (own 2))
    (type (;64;) (func (param "self" 56) (param "src" 63) (param "len" u64) (result 51)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.splice" (core func (;89;)))
    (func (;25;) (type 64) (canon lift (core func 89) (memory 0)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.blocking-splice" (core func (;90;)))
    (func (;26;) (type 64) (canon lift (core func 90) (memory 0)))
    (type (;65;) (func (param "self" 56) (param "src" 63) (result 51)))
    (alias core export 6 "wasi:io/streams@0.2.0-rc-2023-10-18#[method]output-stream.forward" (core func (;91;)))
    (func (;27;) (type 65) (canon lift (core func 91) (memory 0)))
    (component (;6;)
      (import "import-type-pollable" (type (;0;) (sub resource)))
      (import "import-type-error" (type (;1;) (sub resource)))
      (import "import-type-input-stream" (type (;2;) (sub resource)))
      (import "import-type-output-stream" (type (;3;) (sub resource)))
      (type (;4;) (borrow 1))
      (type (;5;) (func (param "self" 4) (result string)))
      (import "import-method-error-to-debug-string" (func (;0;) (type 5)))
      (type (;6;) (borrow 2))
      (type (;7;) (list u8))
      (type (;8;) (own 1))
      (type (;9;) (variant (case "last-operation-failed" 8) (case "closed")))
      (import "import-type-stream-error" (type (;10;) (eq 9)))
      (type (;11;) (result 7 (error 10)))
      (type (;12;) (func (param "self" 6) (param "len" u64) (result 11)))
      (import "import-method-input-stream-read" (func (;1;) (type 12)))
      (import "import-method-input-stream-blocking-read" (func (;2;) (type 12)))
      (type (;13;) (result u64 (error 10)))
      (type (;14;) (func (param "self" 6) (param "len" u64) (result 13)))
      (import "import-method-input-stream-skip" (func (;3;) (type 14)))
      (import "import-method-input-stream-blocking-skip" (func (;4;) (type 14)))
      (import "import-type-pollable0" (type (;15;) (eq 0)))
      (type (;16;) (own 15))
      (type (;17;) (func (param "self" 6) (result 16)))
      (import "import-method-input-stream-subscribe" (func (;5;) (type 17)))
      (type (;18;) (borrow 3))
      (type (;19;) (func (param "self" 18) (result 13)))
      (import "import-method-output-stream-check-write" (func (;6;) (type 19)))
      (type (;20;) (result (error 10)))
      (type (;21;) (func (param "self" 18) (param "contents" 7) (result 20)))
      (import "import-method-output-stream-write" (func (;7;) (type 21)))
      (import "import-method-output-stream-blocking-write-and-flush" (func (;8;) (type 21)))
      (type (;22;) (func (param "self" 18) (result 20)))
      (import "import-method-output-stream-flush" (func (;9;) (type 22)))
      (import "import-method-output-stream-blocking-flush" (func (;10;) (type 22)))
      (type (;23;) (func (param "self" 18) (result 16)))
      (import "import-method-output-stream-subscribe" (func (;11;) (type 23)))
      (type (;24;) (func (param "self" 18) (param "len" u64) (result 20)))
      (import "import-method-output-stream-write-zeroes" (func (;12;) (type 24)))
      (import "import-method-output-stream-blocking-write-zeroes-and-flush" (func (;13;) (type 24)))
      (type (;25;) (own 2))
      (type (;26;) (func (param "self" 18) (param "src" 25) (param "len" u64) (result 13)))
      (import "import-method-output-stream-splice" (func (;14;) (type 26)))
      (import "import-method-output-stream-blocking-splice" (func (;15;) (type 26)))
      (type (;27;) (func (param "self" 18) (param "src" 25) (result 13)))
      (import "import-method-output-stream-forward" (func (;16;) (type 27)))
      (export (;28;) "pollable" (type 0))
      (export (;29;) "error" (type 1))
      (type (;30;) (own 29))
      (type (;31;) (variant (case "last-operation-failed" 30) (case "closed")))
      (export (;32;) "stream-error" (type 31))
      (export (;33;) "input-stream" (type 2))
      (export (;34;) "output-stream" (type 3))
      (type (;35;) (borrow 29))
      (type (;36;) (func (param "self" 35) (result string)))
      (export (;17;) "[method]error.to-debug-string" (func 0) (func (type 36)))
      (type (;37;) (borrow 33))
      (type (;38;) (list u8))
      (type (;39;) (result 38 (error 32)))
      (type (;40;) (func (param "self" 37) (param "len" u64) (result 39)))
      (export (;18;) "[method]input-stream.read" (func 1) (func (type 40)))
      (export (;19;) "[method]input-stream.blocking-read" (func 2) (func (type 40)))
      (type (;41;) (result u64 (error 32)))
      (type (;42;) (func (param "self" 37) (param "len" u64) (result 41)))
      (export (;20;) "[method]input-stream.skip" (func 3) (func (type 42)))
      (export (;21;) "[method]input-stream.blocking-skip" (func 4) (func (type 42)))
      (type (;43;) (own 28))
      (type (;44;) (func (param "self" 37) (result 43)))
      (export (;22;) "[method]input-stream.subscribe" (func 5) (func (type 44)))
      (type (;45;) (borrow 34))
      (type (;46;) (func (param "self" 45) (result 41)))
      (export (;23;) "[method]output-stream.check-write" (func 6) (func (type 46)))
      (type (;47;) (result (error 32)))
      (type (;48;) (func (param "self" 45) (param "contents" 38) (result 47)))
      (export (;24;) "[method]output-stream.write" (func 7) (func (type 48)))
      (export (;25;) "[method]output-stream.blocking-write-and-flush" (func 8) (func (type 48)))
      (type (;49;) (func (param "self" 45) (result 47)))
      (export (;26;) "[method]output-stream.flush" (func 9) (func (type 49)))
      (export (;27;) "[method]output-stream.blocking-flush" (func 10) (func (type 49)))
      (type (;50;) (func (param "self" 45) (result 43)))
      (export (;28;) "[method]output-stream.subscribe" (func 11) (func (type 50)))
      (type (;51;) (func (param "self" 45) (param "len" u64) (result 47)))
      (export (;29;) "[method]output-stream.write-zeroes" (func 12) (func (type 51)))
      (export (;30;) "[method]output-stream.blocking-write-zeroes-and-flush" (func 13) (func (type 51)))
      (type (;52;) (own 33))
      (type (;53;) (func (param "self" 45) (param "src" 52) (param "len" u64) (result 41)))
      (export (;31;) "[method]output-stream.splice" (func 14) (func (type 53)))
      (export (;32;) "[method]output-stream.blocking-splice" (func 15) (func (type 53)))
      (type (;54;) (func (param "self" 45) (param "src" 52) (result 41)))
      (export (;33;) "[method]output-stream.forward" (func 16) (func (type 54)))
    )
    (instance (;12;) (instantiate 6
        (with "import-method-error-to-debug-string" (func 11))
        (with "import-method-input-stream-read" (func 12))
        (with "import-method-input-stream-blocking-read" (func 13))
        (with "import-method-input-stream-skip" (func 14))
        (with "import-method-input-stream-blocking-skip" (func 15))
        (with "import-method-input-stream-subscribe" (func 16))
        (with "import-method-output-stream-check-write" (func 17))
        (with "import-method-output-stream-write" (func 18))
        (with "import-method-output-stream-blocking-write-and-flush" (func 19))
        (with "import-method-output-stream-flush" (func 20))
        (with "import-method-output-stream-blocking-flush" (func 21))
        (with "import-method-output-stream-subscribe" (func 22))
        (with "import-method-output-stream-write-zeroes" (func 23))
        (with "import-method-output-stream-blocking-write-zeroes-and-flush" (func 24))
        (with "import-method-output-stream-splice" (func 25))
        (with "import-method-output-stream-blocking-splice" (func 26))
        (with "import-method-output-stream-forward" (func 27))
        (with "import-type-pollable" (type 53))
        (with "import-type-error" (type 1))
        (with "import-type-input-stream" (type 2))
        (with "import-type-output-stream" (type 3))
        (with "import-type-stream-error" (type 48))
        (with "import-type-pollable0" (type 53))
      )
    )
    (export (;13;) "wasi:io/streams@0.2.0-rc-2023-10-18" (instance 12))
    (type (;66;) u64)
    (type (;67;) (func (result 66)))
    (alias core export 6 "wasi:clocks/monotonic-clock@0.2.0-rc-2023-10-18#now" (core func (;92;)))
    (func (;28;) (type 67) (canon lift (core func 92)))
    (alias core export 6 "wasi:clocks/monotonic-clock@0.2.0-rc-2023-10-18#resolution" (core func (;93;)))
    (func (;29;) (type 67) (canon lift (core func 93)))
    (type (;68;) (own 53))
    (type (;69;) (func (param "when" 66) (param "absolute" bool) (result 68)))
    (alias core export 6 "wasi:clocks/monotonic-clock@0.2.0-rc-2023-10-18#subscribe" (core func (;94;)))
    (func (;30;) (type 69) (canon lift (core func 94)))
    (component (;7;)
      (import "import-type-pollable" (type (;0;) (sub resource)))
      (type (;1;) u64)
      (import "import-type-instant" (type (;2;) (eq 1)))
      (type (;3;) (func (result 2)))
      (import "import-func-now" (func (;0;) (type 3)))
      (import "import-func-resolution" (func (;1;) (type 3)))
      (import "import-type-pollable0" (type (;4;) (eq 0)))
      (type (;5;) (own 4))
      (type (;6;) (func (param "when" 2) (param "absolute" bool) (result 5)))
      (import "import-func-subscribe" (func (;2;) (type 6)))
      (export (;7;) "pollable" (type 0))
      (type (;8;) u64)
      (export (;9;) "instant" (type 8))
      (type (;10;) (func (result 9)))
      (export (;3;) "now" (func 0) (func (type 10)))
      (export (;4;) "resolution" (func 1) (func (type 10)))
      (type (;11;) (own 7))
      (type (;12;) (func (param "when" 9) (param "absolute" bool) (result 11)))
      (export (;5;) "subscribe" (func 2) (func (type 12)))
    )
    (instance (;14;) (instantiate 7
        (with "import-func-now" (func 28))
        (with "import-func-resolution" (func 29))
        (with "import-func-subscribe" (func 30))
        (with "import-type-pollable" (type 53))
        (with "import-type-instant" (type 66))
        (with "import-type-pollable0" (type 53))
      )
    )
    (export (;15;) "wasi:clocks/monotonic-clock@0.2.0-rc-2023-10-18" (instance 14))
    (type (;70;) (record (field "seconds" u64) (field "nanoseconds" u32)))
    (type (;71;) (func (result 70)))
    (alias core export 6 "wasi:clocks/wall-clock@0.2.0-rc-2023-10-18#now" (core func (;95;)))
    (func (;31;) (type 71) (canon lift (core func 95) (memory 0)))
    (alias core export 6 "wasi:clocks/wall-clock@0.2.0-rc-2023-10-18#resolution" (core func (;96;)))
    (func (;32;) (type 71) (canon lift (core func 96) (memory 0)))
    (component (;8;)
      (type (;0;) (record (field "seconds" u64) (field "nanoseconds" u32)))
      (import "import-type-datetime" (type (;1;) (eq 0)))
      (type (;2;) (func (result 1)))
      (import "import-func-now" (func (;0;) (type 2)))
      (import "import-func-resolution" (func (;1;) (type 2)))
      (type (;3;) (record (field "seconds" u64) (field "nanoseconds" u32)))
      (export (;4;) "datetime" (type 3))
      (type (;5;) (func (result 4)))
      (export (;2;) "now" (func 0) (func (type 5)))
      (export (;3;) "resolution" (func 1) (func (type 5)))
    )
    (instance (;16;) (instantiate 8
        (with "import-func-now" (func 31))
        (with "import-func-resolution" (func 32))
        (with "import-type-datetime" (type 70))
      )
    )
    (export (;17;) "wasi:clocks/wall-clock@0.2.0-rc-2023-10-18" (instance 16))
    (alias export 17 "datetime" (type (;72;)))
    (type (;73;) (record (field "utc-offset" s32) (field "name" string) (field "in-daylight-saving-time" bool)))
    (type (;74;) (func (param "when" 72) (result 73)))
    (alias core export 6 "wasi:clocks/timezone@0.2.0-rc-2023-10-18#display" (core func (;97;)))
    (alias core export 6 "cabi_post_wasi:clocks/timezone@0.2.0-rc-2023-10-18#display" (core func (;98;)))
    (func (;33;) (type 74) (canon lift (core func 97) (memory 0) string-encoding=utf8 (post-return 98)))
    (type (;75;) (func (param "when" 72) (result s32)))
    (alias core export 6 "wasi:clocks/timezone@0.2.0-rc-2023-10-18#utc-offset" (core func (;99;)))
    (func (;34;) (type 75) (canon lift (core func 99)))
    (component (;9;)
      (type (;0;) (record (field "seconds" u64) (field "nanoseconds" u32)))
      (import "import-type-datetime" (type (;1;) (eq 0)))
      (import "import-type-datetime0" (type (;2;) (eq 1)))
      (type (;3;) (record (field "utc-offset" s32) (field "name" string) (field "in-daylight-saving-time" bool)))
      (import "import-type-timezone-display" (type (;4;) (eq 3)))
      (type (;5;) (func (param "when" 2) (result 4)))
      (import "import-func-display" (func (;0;) (type 5)))
      (type (;6;) (func (param "when" 2) (result s32)))
      (import "import-func-utc-offset" (func (;1;) (type 6)))
      (export (;7;) "datetime" (type 1))
      (type (;8;) (record (field "utc-offset" s32) (field "name" string) (field "in-daylight-saving-time" bool)))
      (export (;9;) "timezone-display" (type 8))
      (type (;10;) (func (param "when" 7) (result 9)))
      (export (;2;) "display" (func 0) (func (type 10)))
      (type (;11;) (func (param "when" 7) (result s32)))
      (export (;3;) "utc-offset" (func 1) (func (type 11)))
    )
    (instance (;18;) (instantiate 9
        (with "import-func-display" (func 33))
        (with "import-func-utc-offset" (func 34))
        (with "import-type-datetime" (type 72))
        (with "import-type-datetime0" (type 72))
        (with "import-type-timezone-display" (type 73))
      )
    )
    (export (;19;) "wasi:clocks/timezone@0.2.0-rc-2023-10-18" (instance 18))
    (component (;10;)
      (import "import-type-network" (type (;0;) (sub resource)))
      (export (;1;) "network" (type 0))
      (type (;2;) (enum "unknown" "access-denied" "not-supported" "invalid-argument" "out-of-memory" "timeout" "concurrency-conflict" "not-in-progress" "would-block" "invalid-state" "new-socket-limit" "address-not-bindable" "address-in-use" "remote-unreachable" "connection-refused" "connection-reset" "connection-aborted" "datagram-too-large" "name-unresolvable" "temporary-resolver-failure" "permanent-resolver-failure"))
      (export (;3;) "error-code" (type 2))
      (type (;4;) (enum "ipv4" "ipv6"))
      (export (;5;) "ip-address-family" (type 4))
      (type (;6;) (tuple u8 u8 u8 u8))
      (export (;7;) "ipv4-address" (type 6))
      (type (;8;) (tuple u16 u16 u16 u16 u16 u16 u16 u16))
      (export (;9;) "ipv6-address" (type 8))
      (type (;10;) (variant (case "ipv4" 7) (case "ipv6" 9)))
      (export (;11;) "ip-address" (type 10))
      (type (;12;) (record (field "port" u16) (field "address" 7)))
      (export (;13;) "ipv4-socket-address" (type 12))
      (type (;14;) (record (field "port" u16) (field "flow-info" u32) (field "address" 9) (field "scope-id" u32)))
      (export (;15;) "ipv6-socket-address" (type 14))
      (type (;16;) (variant (case "ipv4" 13) (case "ipv6" 15)))
      (export (;17;) "ip-socket-address" (type 16))
    )
    (instance (;20;) (instantiate 10
        (with "import-type-network" (type 4))
      )
    )
    (export (;21;) "wasi:sockets/network@0.2.0-rc-2023-10-18" (instance 20))
    (type (;76;) (borrow 5))
    (alias export 21 "ip-address" (type (;77;)))
    (type (;78;) (option 77))
    (alias export 21 "error-code" (type (;79;)))
    (type (;80;) (result 78 (error 79)))
    (type (;81;) (func (param "self" 76) (result 80)))
    (alias core export 6 "wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18#[method]resolve-address-stream.resolve-next-address" (core func (;100;)))
    (func (;35;) (type 81) (canon lift (core func 100) (memory 0)))
    (type (;82;) (own 53))
    (type (;83;) (func (param "self" 76) (result 82)))
    (alias core export 6 "wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18#[method]resolve-address-stream.subscribe" (core func (;101;)))
    (func (;36;) (type 83) (canon lift (core func 101)))
    (alias export 21 "network" (type (;84;)))
    (type (;85;) (borrow 84))
    (alias export 21 "ip-address-family" (type (;86;)))
    (type (;87;) (option 86))
    (type (;88;) (own 5))
    (type (;89;) (result 88 (error 79)))
    (type (;90;) (func (param "network" 85) (param "name" string) (param "address-family" 87) (param "include-unavailable" bool) (result 89)))
    (alias core export 6 "wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18#resolve-addresses" (core func (;102;)))
    (func (;37;) (type 90) (canon lift (core func 102) (memory 0) (realloc 33) string-encoding=utf8))
    (alias export 21 "ipv4-address" (type (;91;)))
    (alias export 21 "ipv6-address" (type (;92;)))
    (component (;11;)
      (import "import-type-pollable" (type (;0;) (sub resource)))
      (import "import-type-network" (type (;1;) (sub resource)))
      (type (;2;) (enum "unknown" "access-denied" "not-supported" "invalid-argument" "out-of-memory" "timeout" "concurrency-conflict" "not-in-progress" "would-block" "invalid-state" "new-socket-limit" "address-not-bindable" "address-in-use" "remote-unreachable" "connection-refused" "connection-reset" "connection-aborted" "datagram-too-large" "name-unresolvable" "temporary-resolver-failure" "permanent-resolver-failure"))
      (import "import-type-error-code" (type (;3;) (eq 2)))
      (type (;4;) (tuple u8 u8 u8 u8))
      (import "import-type-ipv4-address" (type (;5;) (eq 4)))
      (type (;6;) (tuple u16 u16 u16 u16 u16 u16 u16 u16))
      (import "import-type-ipv6-address" (type (;7;) (eq 6)))
      (type (;8;) (variant (case "ipv4" 5) (case "ipv6" 7)))
      (import "import-type-ip-address" (type (;9;) (eq 8)))
      (type (;10;) (enum "ipv4" "ipv6"))
      (import "import-type-ip-address-family" (type (;11;) (eq 10)))
      (import "import-type-resolve-address-stream" (type (;12;) (sub resource)))
      (type (;13;) (borrow 12))
      (import "import-type-ip-address0" (type (;14;) (eq 9)))
      (type (;15;) (option 14))
      (import "import-type-error-code0" (type (;16;) (eq 3)))
      (type (;17;) (result 15 (error 16)))
      (type (;18;) (func (param "self" 13) (result 17)))
      (import "import-method-resolve-address-stream-resolve-next-address" (func (;0;) (type 18)))
      (import "import-type-pollable0" (type (;19;) (eq 0)))
      (type (;20;) (own 19))
      (type (;21;) (func (param "self" 13) (result 20)))
      (import "import-method-resolve-address-stream-subscribe" (func (;1;) (type 21)))
      (import "import-type-network0" (type (;22;) (eq 1)))
      (type (;23;) (borrow 22))
      (import "import-type-ip-address-family0" (type (;24;) (eq 11)))
      (type (;25;) (option 24))
      (type (;26;) (own 12))
      (type (;27;) (result 26 (error 16)))
      (type (;28;) (func (param "network" 23) (param "name" string) (param "address-family" 25) (param "include-unavailable" bool) (result 27)))
      (import "import-func-resolve-addresses" (func (;2;) (type 28)))
      (export (;29;) "pollable" (type 0))
      (export (;30;) "network" (type 1))
      (export (;31;) "error-code" (type 3))
      (export (;32;) "ip-address" (type 9))
      (export (;33;) "ip-address-family" (type 11))
      (export (;34;) "resolve-address-stream" (type 12))
      (type (;35;) (borrow 34))
      (type (;36;) (option 32))
      (type (;37;) (result 36 (error 31)))
      (type (;38;) (func (param "self" 35) (result 37)))
      (export (;3;) "[method]resolve-address-stream.resolve-next-address" (func 0) (func (type 38)))
      (type (;39;) (own 29))
      (type (;40;) (func (param "self" 35) (result 39)))
      (export (;4;) "[method]resolve-address-stream.subscribe" (func 1) (func (type 40)))
      (type (;41;) (borrow 30))
      (type (;42;) (option 33))
      (type (;43;) (own 34))
      (type (;44;) (result 43 (error 31)))
      (type (;45;) (func (param "network" 41) (param "name" string) (param "address-family" 42) (param "include-unavailable" bool) (result 44)))
      (export (;5;) "resolve-addresses" (func 2) (func (type 45)))
    )
    (instance (;22;) (instantiate 11
        (with "import-method-resolve-address-stream-resolve-next-address" (func 35))
        (with "import-method-resolve-address-stream-subscribe" (func 36))
        (with "import-func-resolve-addresses" (func 37))
        (with "import-type-pollable" (type 53))
        (with "import-type-network" (type 84))
        (with "import-type-error-code" (type 79))
        (with "import-type-ipv4-address" (type 91))
        (with "import-type-ipv6-address" (type 92))
        (with "import-type-ip-address" (type 77))
        (with "import-type-ip-address-family" (type 86))
        (with "import-type-resolve-address-stream" (type 5))
        (with "import-type-ip-address0" (type 77))
        (with "import-type-error-code0" (type 79))
        (with "import-type-pollable0" (type 53))
        (with "import-type-network0" (type 84))
        (with "import-type-ip-address-family0" (type 86))
      )
    )
    (export (;23;) "wasi:sockets/ip-name-lookup@0.2.0-rc-2023-10-18" (instance 22))
    (type (;93;) (borrow 6))
    (type (;94;) (borrow 84))
    (alias export 21 "ip-socket-address" (type (;95;)))
    (type (;96;) (result (error 79)))
    (type (;97;) (func (param "self" 93) (param "network" 94) (param "local-address" 95) (result 96)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.start-bind" (core func (;103;)))
    (func (;38;) (type 97) (canon lift (core func 103) (memory 0)))
    (type (;98;) (func (param "self" 93) (result 96)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.finish-bind" (core func (;104;)))
    (func (;39;) (type 98) (canon lift (core func 104) (memory 0)))
    (type (;99;) (func (param "self" 93) (param "network" 94) (param "remote-address" 95) (result 96)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.start-connect" (core func (;105;)))
    (func (;40;) (type 99) (canon lift (core func 105) (memory 0)))
    (alias export 13 "input-stream" (type (;100;)))
    (type (;101;) (own 100))
    (alias export 13 "output-stream" (type (;102;)))
    (type (;103;) (own 102))
    (type (;104;) (tuple 101 103))
    (type (;105;) (result 104 (error 79)))
    (type (;106;) (func (param "self" 93) (result 105)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.finish-connect" (core func (;106;)))
    (func (;41;) (type 106) (canon lift (core func 106) (memory 0)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.start-listen" (core func (;107;)))
    (func (;42;) (type 98) (canon lift (core func 107) (memory 0)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.finish-listen" (core func (;108;)))
    (func (;43;) (type 98) (canon lift (core func 108) (memory 0)))
    (type (;107;) (own 6))
    (type (;108;) (tuple 107 101 103))
    (type (;109;) (result 108 (error 79)))
    (type (;110;) (func (param "self" 93) (result 109)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.accept" (core func (;109;)))
    (func (;44;) (type 110) (canon lift (core func 109) (memory 0)))
    (type (;111;) (result 95 (error 79)))
    (type (;112;) (func (param "self" 93) (result 111)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.local-address" (core func (;110;)))
    (func (;45;) (type 112) (canon lift (core func 110) (memory 0)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.remote-address" (core func (;111;)))
    (func (;46;) (type 112) (canon lift (core func 111) (memory 0)))
    (type (;113;) (func (param "self" 93) (result 86)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.address-family" (core func (;112;)))
    (func (;47;) (type 113) (canon lift (core func 112)))
    (type (;114;) (result bool (error 79)))
    (type (;115;) (func (param "self" 93) (result 114)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.ipv6-only" (core func (;113;)))
    (func (;48;) (type 115) (canon lift (core func 113) (memory 0)))
    (type (;116;) (func (param "self" 93) (param "value" bool) (result 96)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.set-ipv6-only" (core func (;114;)))
    (func (;49;) (type 116) (canon lift (core func 114) (memory 0)))
    (type (;117;) (func (param "self" 93) (param "value" u64) (result 96)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.set-listen-backlog-size" (core func (;115;)))
    (func (;50;) (type 117) (canon lift (core func 115) (memory 0)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.keep-alive" (core func (;116;)))
    (func (;51;) (type 115) (canon lift (core func 116) (memory 0)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.set-keep-alive" (core func (;117;)))
    (func (;52;) (type 116) (canon lift (core func 117) (memory 0)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.no-delay" (core func (;118;)))
    (func (;53;) (type 115) (canon lift (core func 118) (memory 0)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.set-no-delay" (core func (;119;)))
    (func (;54;) (type 116) (canon lift (core func 119) (memory 0)))
    (type (;118;) (result u8 (error 79)))
    (type (;119;) (func (param "self" 93) (result 118)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.unicast-hop-limit" (core func (;120;)))
    (func (;55;) (type 119) (canon lift (core func 120) (memory 0)))
    (type (;120;) (func (param "self" 93) (param "value" u8) (result 96)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.set-unicast-hop-limit" (core func (;121;)))
    (func (;56;) (type 120) (canon lift (core func 121) (memory 0)))
    (type (;121;) (result u64 (error 79)))
    (type (;122;) (func (param "self" 93) (result 121)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.receive-buffer-size" (core func (;122;)))
    (func (;57;) (type 122) (canon lift (core func 122) (memory 0)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.set-receive-buffer-size" (core func (;123;)))
    (func (;58;) (type 117) (canon lift (core func 123) (memory 0)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.send-buffer-size" (core func (;124;)))
    (func (;59;) (type 122) (canon lift (core func 124) (memory 0)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.set-send-buffer-size" (core func (;125;)))
    (func (;60;) (type 117) (canon lift (core func 125) (memory 0)))
    (type (;123;) (own 53))
    (type (;124;) (func (param "self" 93) (result 123)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.subscribe" (core func (;126;)))
    (func (;61;) (type 124) (canon lift (core func 126)))
    (type (;125;) (enum "receive" "send" "both"))
    (type (;126;) (func (param "self" 93) (param "shutdown-type" 125) (result 96)))
    (alias core export 6 "wasi:sockets/tcp@0.2.0-rc-2023-10-18#[method]tcp-socket.shutdown" (core func (;127;)))
    (func (;62;) (type 126) (canon lift (core func 127) (memory 0)))
    (alias export 21 "ipv4-socket-address" (type (;127;)))
    (alias export 21 "ipv6-socket-address" (type (;128;)))
    (component (;12;)
      (import "import-type-input-stream" (type (;0;) (sub resource)))
      (import "import-type-output-stream" (type (;1;) (sub resource)))
      (import "import-type-pollable" (type (;2;) (sub resource)))
      (import "import-type-network" (type (;3;) (sub resource)))
      (type (;4;) (enum "unknown" "access-denied" "not-supported" "invalid-argument" "out-of-memory" "timeout" "concurrency-conflict" "not-in-progress" "would-block" "invalid-state" "new-socket-limit" "address-not-bindable" "address-in-use" "remote-unreachable" "connection-refused" "connection-reset" "connection-aborted" "datagram-too-large" "name-unresolvable" "temporary-resolver-failure" "permanent-resolver-failure"))
      (import "import-type-error-code" (type (;5;) (eq 4)))
      (type (;6;) (tuple u8 u8 u8 u8))
      (import "import-type-ipv4-address" (type (;7;) (eq 6)))
      (type (;8;) (record (field "port" u16) (field "address" 7)))
      (import "import-type-ipv4-socket-address" (type (;9;) (eq 8)))
      (type (;10;) (tuple u16 u16 u16 u16 u16 u16 u16 u16))
      (import "import-type-ipv6-address" (type (;11;) (eq 10)))
      (type (;12;) (record (field "port" u16) (field "flow-info" u32) (field "address" 11) (field "scope-id" u32)))
      (import "import-type-ipv6-socket-address" (type (;13;) (eq 12)))
      (type (;14;) (variant (case "ipv4" 9) (case "ipv6" 13)))
      (import "import-type-ip-socket-address" (type (;15;) (eq 14)))
      (type (;16;) (enum "ipv4" "ipv6"))
      (import "import-type-ip-address-family" (type (;17;) (eq 16)))
      (import "import-type-tcp-socket" (type (;18;) (sub resource)))
      (type (;19;) (borrow 18))
      (import "import-type-network0" (type (;20;) (eq 3)))
      (type (;21;) (borrow 20))
      (import "import-type-ip-socket-address0" (type (;22;) (eq 15)))
      (import "import-type-error-code0" (type (;23;) (eq 5)))
      (type (;24;) (result (error 23)))
      (type (;25;) (func (param "self" 19) (param "network" 21) (param "local-address" 22) (result 24)))
      (import "import-method-tcp-socket-start-bind" (func (;0;) (type 25)))
      (type (;26;) (func (param "self" 19) (result 24)))
      (import "import-method-tcp-socket-finish-bind" (func (;1;) (type 26)))
      (type (;27;) (func (param "self" 19) (param "network" 21) (param "remote-address" 22) (result 24)))
      (import "import-method-tcp-socket-start-connect" (func (;2;) (type 27)))
      (import "import-type-input-stream0" (type (;28;) (eq 0)))
      (type (;29;) (own 28))
      (import "import-type-output-stream0" (type (;30;) (eq 1)))
      (type (;31;) (own 30))
      (type (;32;) (tuple 29 31))
      (type (;33;) (result 32 (error 23)))
      (type (;34;) (func (param "self" 19) (result 33)))
      (import "import-method-tcp-socket-finish-connect" (func (;3;) (type 34)))
      (import "import-method-tcp-socket-start-listen" (func (;4;) (type 26)))
      (import "import-method-tcp-socket-finish-listen" (func (;5;) (type 26)))
      (type (;35;) (own 18))
      (type (;36;) (tuple 35 29 31))
      (type (;37;) (result 36 (error 23)))
      (type (;38;) (func (param "self" 19) (result 37)))
      (import "import-method-tcp-socket-accept" (func (;6;) (type 38)))
      (type (;39;) (result 22 (error 23)))
      (type (;40;) (func (param "self" 19) (result 39)))
      (import "import-method-tcp-socket-local-address" (func (;7;) (type 40)))
      (import "import-method-tcp-socket-remote-address" (func (;8;) (type 40)))
      (import "import-type-ip-address-family0" (type (;41;) (eq 17)))
      (type (;42;) (func (param "self" 19) (result 41)))
      (import "import-method-tcp-socket-address-family" (func (;9;) (type 42)))
      (type (;43;) (result bool (error 23)))
      (type (;44;) (func (param "self" 19) (result 43)))
      (import "import-method-tcp-socket-ipv6-only" (func (;10;) (type 44)))
      (type (;45;) (func (param "self" 19) (param "value" bool) (result 24)))
      (import "import-method-tcp-socket-set-ipv6-only" (func (;11;) (type 45)))
      (type (;46;) (func (param "self" 19) (param "value" u64) (result 24)))
      (import "import-method-tcp-socket-set-listen-backlog-size" (func (;12;) (type 46)))
      (import "import-method-tcp-socket-keep-alive" (func (;13;) (type 44)))
      (import "import-method-tcp-socket-set-keep-alive" (func (;14;) (type 45)))
      (import "import-method-tcp-socket-no-delay" (func (;15;) (type 44)))
      (import "import-method-tcp-socket-set-no-delay" (func (;16;) (type 45)))
      (type (;47;) (result u8 (error 23)))
      (type (;48;) (func (param "self" 19) (result 47)))
      (import "import-method-tcp-socket-unicast-hop-limit" (func (;17;) (type 48)))
      (type (;49;) (func (param "self" 19) (param "value" u8) (result 24)))
      (import "import-method-tcp-socket-set-unicast-hop-limit" (func (;18;) (type 49)))
      (type (;50;) (result u64 (error 23)))
      (type (;51;) (func (param "self" 19) (result 50)))
      (import "import-method-tcp-socket-receive-buffer-size" (func (;19;) (type 51)))
      (import "import-method-tcp-socket-set-receive-buffer-size" (func (;20;) (type 46)))
      (import "import-method-tcp-socket-send-buffer-size" (func (;21;) (type 51)))
      (import "import-method-tcp-socket-set-send-buffer-size" (func (;22;) (type 46)))
      (import "import-type-pollable0" (type (;52;) (eq 2)))
      (type (;53;) (own 52))
      (type (;54;) (func (param "self" 19) (result 53)))
      (import "import-method-tcp-socket-subscribe" (func (;23;) (type 54)))
      (type (;55;) (enum "receive" "send" "both"))
      (import "import-type-shutdown-type" (type (;56;) (eq 55)))
      (type (;57;) (func (param "self" 19) (param "shutdown-type" 56) (result 24)))
      (import "import-method-tcp-socket-shutdown" (func (;24;) (type 57)))
      (export (;58;) "input-stream" (type 0))
      (export (;59;) "output-stream" (type 1))
      (export (;60;) "pollable" (type 2))
      (export (;61;) "network" (type 3))
      (export (;62;) "error-code" (type 5))
      (export (;63;) "ip-socket-address" (type 15))
      (export (;64;) "ip-address-family" (type 17))
      (type (;65;) (enum "receive" "send" "both"))
      (export (;66;) "shutdown-type" (type 65))
      (export (;67;) "tcp-socket" (type 18))
      (type (;68;) (borrow 67))
      (type (;69;) (borrow 61))
      (type (;70;) (result (error 62)))
      (type (;71;) (func (param "self" 68) (param "network" 69) (param "local-address" 63) (result 70)))
      (export (;25;) "[method]tcp-socket.start-bind" (func 0) (func (type 71)))
      (type (;72;) (func (param "self" 68) (result 70)))
      (export (;26;) "[method]tcp-socket.finish-bind" (func 1) (func (type 72)))
      (type (;73;) (func (param "self" 68) (param "network" 69) (param "remote-address" 63) (result 70)))
      (export (;27;) "[method]tcp-socket.start-connect" (func 2) (func (type 73)))
      (type (;74;) (own 58))
      (type (;75;) (own 59))
      (type (;76;) (tuple 74 75))
      (type (;77;) (result 76 (error 62)))
      (type (;78;) (func (param "self" 68) (result 77)))
      (export (;28;) "[method]tcp-socket.finish-connect" (func 3) (func (type 78)))
      (export (;29;) "[method]tcp-socket.start-listen" (func 4) (func (type 72)))
      (export (;30;) "[method]tcp-socket.finish-listen" (func 5) (func (type 72)))
      (type (;79;) (own 67))
      (type (;80;) (tuple 79 74 75))
      (type (;81;) (result 80 (error 62)))
      (type (;82;) (func (param "self" 68) (result 81)))
      (export (;31;) "[method]tcp-socket.accept" (func 6) (func (type 82)))
      (type (;83;) (result 63 (error 62)))
      (type (;84;) (func (param "self" 68) (result 83)))
      (export (;32;) "[method]tcp-socket.local-address" (func 7) (func (type 84)))
      (export (;33;) "[method]tcp-socket.remote-address" (func 8) (func (type 84)))
      (type (;85;) (func (param "self" 68) (result 64)))
      (export (;34;) "[method]tcp-socket.address-family" (func 9) (func (type 85)))
      (type (;86;) (result bool (error 62)))
      (type (;87;) (func (param "self" 68) (result 86)))
      (export (;35;) "[method]tcp-socket.ipv6-only" (func 10) (func (type 87)))
      (type (;88;) (func (param "self" 68) (param "value" bool) (result 70)))
      (export (;36;) "[method]tcp-socket.set-ipv6-only" (func 11) (func (type 88)))
      (type (;89;) (func (param "self" 68) (param "value" u64) (result 70)))
      (export (;37;) "[method]tcp-socket.set-listen-backlog-size" (func 12) (func (type 89)))
      (export (;38;) "[method]tcp-socket.keep-alive" (func 13) (func (type 87)))
      (export (;39;) "[method]tcp-socket.set-keep-alive" (func 14) (func (type 88)))
      (export (;40;) "[method]tcp-socket.no-delay" (func 15) (func (type 87)))
      (export (;41;) "[method]tcp-socket.set-no-delay" (func 16) (func (type 88)))
      (type (;90;) (result u8 (error 62)))
      (type (;91;) (func (param "self" 68) (result 90)))
      (export (;42;) "[method]tcp-socket.unicast-hop-limit" (func 17) (func (type 91)))
      (type (;92;) (func (param "self" 68) (param "value" u8) (result 70)))
      (export (;43;) "[method]tcp-socket.set-unicast-hop-limit" (func 18) (func (type 92)))
      (type (;93;) (result u64 (error 62)))
      (type (;94;) (func (param "self" 68) (result 93)))
      (export (;44;) "[method]tcp-socket.receive-buffer-size" (func 19) (func (type 94)))
      (export (;45;) "[method]tcp-socket.set-receive-buffer-size" (func 20) (func (type 89)))
      (export (;46;) "[method]tcp-socket.send-buffer-size" (func 21) (func (type 94)))
      (export (;47;) "[method]tcp-socket.set-send-buffer-size" (func 22) (func (type 89)))
      (type (;95;) (own 60))
      (type (;96;) (func (param "self" 68) (result 95)))
      (export (;48;) "[method]tcp-socket.subscribe" (func 23) (func (type 96)))
      (type (;97;) (func (param "self" 68) (param "shutdown-type" 66) (result 70)))
      (export (;49;) "[method]tcp-socket.shutdown" (func 24) (func (type 97)))
    )
    (instance (;24;) (instantiate 12
        (with "import-method-tcp-socket-start-bind" (func 38))
        (with "import-method-tcp-socket-finish-bind" (func 39))
        (with "import-method-tcp-socket-start-connect" (func 40))
        (with "import-method-tcp-socket-finish-connect" (func 41))
        (with "import-method-tcp-socket-start-listen" (func 42))
        (with "import-method-tcp-socket-finish-listen" (func 43))
        (with "import-method-tcp-socket-accept" (func 44))
        (with "import-method-tcp-socket-local-address" (func 45))
        (with "import-method-tcp-socket-remote-address" (func 46))
        (with "import-method-tcp-socket-address-family" (func 47))
        (with "import-method-tcp-socket-ipv6-only" (func 48))
        (with "import-method-tcp-socket-set-ipv6-only" (func 49))
        (with "import-method-tcp-socket-set-listen-backlog-size" (func 50))
        (with "import-method-tcp-socket-keep-alive" (func 51))
        (with "import-method-tcp-socket-set-keep-alive" (func 52))
        (with "import-method-tcp-socket-no-delay" (func 53))
        (with "import-method-tcp-socket-set-no-delay" (func 54))
        (with "import-method-tcp-socket-unicast-hop-limit" (func 55))
        (with "import-method-tcp-socket-set-unicast-hop-limit" (func 56))
        (with "import-method-tcp-socket-receive-buffer-size" (func 57))
        (with "import-method-tcp-socket-set-receive-buffer-size" (func 58))
        (with "import-method-tcp-socket-send-buffer-size" (func 59))
        (with "import-method-tcp-socket-set-send-buffer-size" (func 60))
        (with "import-method-tcp-socket-subscribe" (func 61))
        (with "import-method-tcp-socket-shutdown" (func 62))
        (with "import-type-input-stream" (type 100))
        (with "import-type-output-stream" (type 102))
        (with "import-type-pollable" (type 53))
        (with "import-type-network" (type 84))
        (with "import-type-error-code" (type 79))
        (with "import-type-ipv4-address" (type 91))
        (with "import-type-ipv4-socket-address" (type 127))
        (with "import-type-ipv6-address" (type 92))
        (with "import-type-ipv6-socket-address" (type 128))
        (with "import-type-ip-socket-address" (type 95))
        (with "import-type-ip-address-family" (type 86))
        (with "import-type-tcp-socket" (type 6))
        (with "import-type-network0" (type 84))
        (with "import-type-ip-socket-address0" (type 95))
        (with "import-type-error-code0" (type 79))
        (with "import-type-input-stream0" (type 100))
        (with "import-type-output-stream0" (type 102))
        (with "import-type-ip-address-family0" (type 86))
        (with "import-type-pollable0" (type 53))
        (with "import-type-shutdown-type" (type 125))
      )
    )
    (export (;25;) "wasi:sockets/tcp@0.2.0-rc-2023-10-18" (instance 24))
    (type (;129;) (borrow 7))
    (type (;130;) (borrow 84))
    (type (;131;) (result (error 79)))
    (type (;132;) (func (param "self" 129) (param "network" 130) (param "local-address" 95) (result 131)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.start-bind" (core func (;128;)))
    (func (;63;) (type 132) (canon lift (core func 128) (memory 0)))
    (type (;133;) (func (param "self" 129) (result 131)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.finish-bind" (core func (;129;)))
    (func (;64;) (type 133) (canon lift (core func 129) (memory 0)))
    (type (;134;) (func (param "self" 129) (param "network" 130) (param "remote-address" 95) (result 131)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.start-connect" (core func (;130;)))
    (func (;65;) (type 134) (canon lift (core func 130) (memory 0)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.finish-connect" (core func (;131;)))
    (func (;66;) (type 133) (canon lift (core func 131) (memory 0)))
    (type (;135;) (list u8))
    (type (;136;) (record (field "data" 135) (field "remote-address" 95)))
    (type (;137;) (list 136))
    (type (;138;) (result 137 (error 79)))
    (type (;139;) (func (param "self" 129) (param "max-results" u64) (result 138)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.receive" (core func (;132;)))
    (alias core export 6 "cabi_post_wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.receive" (core func (;133;)))
    (func (;67;) (type 139) (canon lift (core func 132) (memory 0) (post-return 133)))
    (type (;140;) (result u64 (error 79)))
    (type (;141;) (func (param "self" 129) (param "datagrams" 137) (result 140)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.send" (core func (;134;)))
    (func (;68;) (type 141) (canon lift (core func 134) (memory 0) (realloc 33)))
    (type (;142;) (result 95 (error 79)))
    (type (;143;) (func (param "self" 129) (result 142)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.local-address" (core func (;135;)))
    (func (;69;) (type 143) (canon lift (core func 135) (memory 0)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.remote-address" (core func (;136;)))
    (func (;70;) (type 143) (canon lift (core func 136) (memory 0)))
    (type (;144;) (func (param "self" 129) (result 86)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.address-family" (core func (;137;)))
    (func (;71;) (type 144) (canon lift (core func 137)))
    (type (;145;) (result bool (error 79)))
    (type (;146;) (func (param "self" 129) (result 145)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.ipv6-only" (core func (;138;)))
    (func (;72;) (type 146) (canon lift (core func 138) (memory 0)))
    (type (;147;) (func (param "self" 129) (param "value" bool) (result 131)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.set-ipv6-only" (core func (;139;)))
    (func (;73;) (type 147) (canon lift (core func 139) (memory 0)))
    (type (;148;) (result u8 (error 79)))
    (type (;149;) (func (param "self" 129) (result 148)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.unicast-hop-limit" (core func (;140;)))
    (func (;74;) (type 149) (canon lift (core func 140) (memory 0)))
    (type (;150;) (func (param "self" 129) (param "value" u8) (result 131)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.set-unicast-hop-limit" (core func (;141;)))
    (func (;75;) (type 150) (canon lift (core func 141) (memory 0)))
    (type (;151;) (func (param "self" 129) (result 140)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.receive-buffer-size" (core func (;142;)))
    (func (;76;) (type 151) (canon lift (core func 142) (memory 0)))
    (type (;152;) (func (param "self" 129) (param "value" u64) (result 131)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.set-receive-buffer-size" (core func (;143;)))
    (func (;77;) (type 152) (canon lift (core func 143) (memory 0)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.send-buffer-size" (core func (;144;)))
    (func (;78;) (type 151) (canon lift (core func 144) (memory 0)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.set-send-buffer-size" (core func (;145;)))
    (func (;79;) (type 152) (canon lift (core func 145) (memory 0)))
    (type (;153;) (own 53))
    (type (;154;) (func (param "self" 129) (result 153)))
    (alias core export 6 "wasi:sockets/udp@0.2.0-rc-2023-10-18#[method]udp-socket.subscribe" (core func (;146;)))
    (func (;80;) (type 154) (canon lift (core func 146)))
    (component (;13;)
      (import "import-type-pollable" (type (;0;) (sub resource)))
      (import "import-type-network" (type (;1;) (sub resource)))
      (type (;2;) (enum "unknown" "access-denied" "not-supported" "invalid-argument" "out-of-memory" "timeout" "concurrency-conflict" "not-in-progress" "would-block" "invalid-state" "new-socket-limit" "address-not-bindable" "address-in-use" "remote-unreachable" "connection-refused" "connection-reset" "connection-aborted" "datagram-too-large" "name-unresolvable" "temporary-resolver-failure" "permanent-resolver-failure"))
      (import "import-type-error-code" (type (;3;) (eq 2)))
      (type (;4;) (tuple u8 u8 u8 u8))
      (import "import-type-ipv4-address" (type (;5;) (eq 4)))
      (type (;6;) (record (field "port" u16) (field "address" 5)))
      (import "import-type-ipv4-socket-address" (type (;7;) (eq 6)))
      (type (;8;) (tuple u16 u16 u16 u16 u16 u16 u16 u16))
      (import "import-type-ipv6-address" (type (;9;) (eq 8)))
      (type (;10;) (record (field "port" u16) (field "flow-info" u32) (field "address" 9) (field "scope-id" u32)))
      (import "import-type-ipv6-socket-address" (type (;11;) (eq 10)))
      (type (;12;) (variant (case "ipv4" 7) (case "ipv6" 11)))
      (import "import-type-ip-socket-address" (type (;13;) (eq 12)))
      (type (;14;) (enum "ipv4" "ipv6"))
      (import "import-type-ip-address-family" (type (;15;) (eq 14)))
      (import "import-type-udp-socket" (type (;16;) (sub resource)))
      (type (;17;) (borrow 16))
      (import "import-type-network0" (type (;18;) (eq 1)))
      (type (;19;) (borrow 18))
      (import "import-type-ip-socket-address0" (type (;20;) (eq 13)))
      (import "import-type-error-code0" (type (;21;) (eq 3)))
      (type (;22;) (result (error 21)))
      (type (;23;) (func (param "self" 17) (param "network" 19) (param "local-address" 20) (result 22)))
      (import "import-method-udp-socket-start-bind" (func (;0;) (type 23)))
      (type (;24;) (func (param "self" 17) (result 22)))
      (import "import-method-udp-socket-finish-bind" (func (;1;) (type 24)))
      (type (;25;) (func (param "self" 17) (param "network" 19) (param "remote-address" 20) (result 22)))
      (import "import-method-udp-socket-start-connect" (func (;2;) (type 25)))
      (import "import-method-udp-socket-finish-connect" (func (;3;) (type 24)))
      (type (;26;) (list u8))
      (type (;27;) (record (field "data" 26) (field "remote-address" 20)))
      (import "import-type-datagram" (type (;28;) (eq 27)))
      (type (;29;) (list 28))
      (type (;30;) (result 29 (error 21)))
      (type (;31;) (func (param "self" 17) (param "max-results" u64) (result 30)))
      (import "import-method-udp-socket-receive" (func (;4;) (type 31)))
      (type (;32;) (result u64 (error 21)))
      (type (;33;) (func (param "self" 17) (param "datagrams" 29) (result 32)))
      (import "import-method-udp-socket-send" (func (;5;) (type 33)))
      (type (;34;) (result 20 (error 21)))
      (type (;35;) (func (param "self" 17) (result 34)))
      (import "import-method-udp-socket-local-address" (func (;6;) (type 35)))
      (import "import-method-udp-socket-remote-address" (func (;7;) (type 35)))
      (import "import-type-ip-address-family0" (type (;36;) (eq 15)))
      (type (;37;) (func (param "self" 17) (result 36)))
      (import "import-method-udp-socket-address-family" (func (;8;) (type 37)))
      (type (;38;) (result bool (error 21)))
      (type (;39;) (func (param "self" 17) (result 38)))
      (import "import-method-udp-socket-ipv6-only" (func (;9;) (type 39)))
      (type (;40;) (func (param "self" 17) (param "value" bool) (result 22)))
      (import "import-method-udp-socket-set-ipv6-only" (func (;10;) (type 40)))
      (type (;41;) (result u8 (error 21)))
      (type (;42;) (func (param "self" 17) (result 41)))
      (import "import-method-udp-socket-unicast-hop-limit" (func (;11;) (type 42)))
      (type (;43;) (func (param "self" 17) (param "value" u8) (result 22)))
      (import "import-method-udp-socket-set-unicast-hop-limit" (func (;12;) (type 43)))
      (type (;44;) (func (param "self" 17) (result 32)))
      (import "import-method-udp-socket-receive-buffer-size" (func (;13;) (type 44)))
      (type (;45;) (func (param "self" 17) (param "value" u64) (result 22)))
      (import "import-method-udp-socket-set-receive-buffer-size" (func (;14;) (type 45)))
      (import "import-method-udp-socket-send-buffer-size" (func (;15;) (type 44)))
      (import "import-method-udp-socket-set-send-buffer-size" (func (;16;) (type 45)))
      (import "import-type-pollable0" (type (;46;) (eq 0)))
      (type (;47;) (own 46))
      (type (;48;) (func (param "self" 17) (result 47)))
      (import "import-method-udp-socket-subscribe" (func (;17;) (type 48)))
      (export (;49;) "pollable" (type 0))
      (export (;50;) "network" (type 1))
      (export (;51;) "error-code" (type 3))
      (export (;52;) "ip-socket-address" (type 13))
      (export (;53;) "ip-address-family" (type 15))
      (type (;54;) (list u8))
      (type (;55;) (record (field "data" 54) (field "remote-address" 52)))
      (export (;56;) "datagram" (type 55))
      (export (;57;) "udp-socket" (type 16))
      (type (;58;) (borrow 57))
      (type (;59;) (borrow 50))
      (type (;60;) (result (error 51)))
      (type (;61;) (func (param "self" 58) (param "network" 59) (param "local-address" 52) (result 60)))
      (export (;18;) "[method]udp-socket.start-bind" (func 0) (func (type 61)))
      (type (;62;) (func (param "self" 58) (result 60)))
      (export (;19;) "[method]udp-socket.finish-bind" (func 1) (func (type 62)))
      (type (;63;) (func (param "self" 58) (param "network" 59) (param "remote-address" 52) (result 60)))
      (export (;20;) "[method]udp-socket.start-connect" (func 2) (func (type 63)))
      (export (;21;) "[method]udp-socket.finish-connect" (func 3) (func (type 62)))
      (type (;64;) (list 56))
      (type (;65;) (result 64 (error 51)))
      (type (;66;) (func (param "self" 58) (param "max-results" u64) (result 65)))
      (export (;22;) "[method]udp-socket.receive" (func 4) (func (type 66)))
      (type (;67;) (result u64 (error 51)))
      (type (;68;) (func (param "self" 58) (param "datagrams" 64) (result 67)))
      (export (;23;) "[method]udp-socket.send" (func 5) (func (type 68)))
      (type (;69;) (result 52 (error 51)))
      (type (;70;) (func (param "self" 58) (result 69)))
      (export (;24;) "[method]udp-socket.local-address" (func 6) (func (type 70)))
      (export (;25;) "[method]udp-socket.remote-address" (func 7) (func (type 70)))
      (type (;71;) (func (param "self" 58) (result 53)))
      (export (;26;) "[method]udp-socket.address-family" (func 8) (func (type 71)))
      (type (;72;) (result bool (error 51)))
      (type (;73;) (func (param "self" 58) (result 72)))
      (export (;27;) "[method]udp-socket.ipv6-only" (func 9) (func (type 73)))
      (type (;74;) (func (param "self" 58) (param "value" bool) (result 60)))
      (export (;28;) "[method]udp-socket.set-ipv6-only" (func 10) (func (type 74)))
      (type (;75;) (result u8 (error 51)))
      (type (;76;) (func (param "self" 58) (result 75)))
      (export (;29;) "[method]udp-socket.unicast-hop-limit" (func 11) (func (type 76)))
      (type (;77;) (func (param "self" 58) (param "value" u8) (result 60)))
      (export (;30;) "[method]udp-socket.set-unicast-hop-limit" (func 12) (func (type 77)))
      (type (;78;) (func (param "self" 58) (result 67)))
      (export (;31;) "[method]udp-socket.receive-buffer-size" (func 13) (func (type 78)))
      (type (;79;) (func (param "self" 58) (param "value" u64) (result 60)))
      (export (;32;) "[method]udp-socket.set-receive-buffer-size" (func 14) (func (type 79)))
      (export (;33;) "[method]udp-socket.send-buffer-size" (func 15) (func (type 78)))
      (export (;34;) "[method]udp-socket.set-send-buffer-size" (func 16) (func (type 79)))
      (type (;80;) (own 49))
      (type (;81;) (func (param "self" 58) (result 80)))
      (export (;35;) "[method]udp-socket.subscribe" (func 17) (func (type 81)))
    )
    (instance (;26;) (instantiate 13
        (with "import-method-udp-socket-start-bind" (func 63))
        (with "import-method-udp-socket-finish-bind" (func 64))
        (with "import-method-udp-socket-start-connect" (func 65))
        (with "import-method-udp-socket-finish-connect" (func 66))
        (with "import-method-udp-socket-receive" (func 67))
        (with "import-method-udp-socket-send" (func 68))
        (with "import-method-udp-socket-local-address" (func 69))
        (with "import-method-udp-socket-remote-address" (func 70))
        (with "import-method-udp-socket-address-family" (func 71))
        (with "import-method-udp-socket-ipv6-only" (func 72))
        (with "import-method-udp-socket-set-ipv6-only" (func 73))
        (with "import-method-udp-socket-unicast-hop-limit" (func 74))
        (with "import-method-udp-socket-set-unicast-hop-limit" (func 75))
        (with "import-method-udp-socket-receive-buffer-size" (func 76))
        (with "import-method-udp-socket-set-receive-buffer-size" (func 77))
        (with "import-method-udp-socket-send-buffer-size" (func 78))
        (with "import-method-udp-socket-set-send-buffer-size" (func 79))
        (with "import-method-udp-socket-subscribe" (func 80))
        (with "import-type-pollable" (type 53))
        (with "import-type-network" (type 84))
        (with "import-type-error-code" (type 79))
        (with "import-type-ipv4-address" (type 91))
        (with "import-type-ipv4-socket-address" (type 127))
        (with "import-type-ipv6-address" (type 92))
        (with "import-type-ipv6-socket-address" (type 128))
        (with "import-type-ip-socket-address" (type 95))
        (with "import-type-ip-address-family" (type 86))
        (with "import-type-udp-socket" (type 7))
        (with "import-type-network0" (type 84))
        (with "import-type-ip-socket-address0" (type 95))
        (with "import-type-error-code0" (type 79))
        (with "import-type-datagram" (type 136))
        (with "import-type-ip-address-family0" (type 86))
        (with "import-type-pollable0" (type 53))
      )
    )
    (export (;27;) "wasi:sockets/udp@0.2.0-rc-2023-10-18" (instance 26))
    (type (;155;) (own 84))
    (type (;156;) (func (result 155)))
    (alias core export 6 "wasi:sockets/instance-network@0.2.0-rc-2023-10-18#instance-network" (core func (;147;)))
    (func (;81;) (type 156) (canon lift (core func 147)))
    (component (;14;)
      (import "import-type-network" (type (;0;) (sub resource)))
      (import "import-type-network0" (type (;1;) (eq 0)))
      (type (;2;) (own 1))
      (type (;3;) (func (result 2)))
      (import "import-func-instance-network" (func (;0;) (type 3)))
      (export (;4;) "network" (type 0))
      (type (;5;) (own 4))
      (type (;6;) (func (result 5)))
      (export (;1;) "instance-network" (func 0) (func (type 6)))
    )
    (instance (;28;) (instantiate 14
        (with "import-func-instance-network" (func 81))
        (with "import-type-network" (type 84))
        (with "import-type-network0" (type 84))
      )
    )
    (export (;29;) "wasi:sockets/instance-network@0.2.0-rc-2023-10-18" (instance 28))
    (alias export 25 "tcp-socket" (type (;157;)))
    (type (;158;) (own 157))
    (type (;159;) (result 158 (error 79)))
    (type (;160;) (func (param "address-family" 86) (result 159)))
    (alias core export 6 "wasi:sockets/tcp-create-socket@0.2.0-rc-2023-10-18#create-tcp-socket" (core func (;148;)))
    (func (;82;) (type 160) (canon lift (core func 148) (memory 0)))
    (component (;15;)
      (import "import-type-network" (type (;0;) (sub resource)))
      (type (;1;) (enum "unknown" "access-denied" "not-supported" "invalid-argument" "out-of-memory" "timeout" "concurrency-conflict" "not-in-progress" "would-block" "invalid-state" "new-socket-limit" "address-not-bindable" "address-in-use" "remote-unreachable" "connection-refused" "connection-reset" "connection-aborted" "datagram-too-large" "name-unresolvable" "temporary-resolver-failure" "permanent-resolver-failure"))
      (import "import-type-error-code" (type (;2;) (eq 1)))
      (type (;3;) (enum "ipv4" "ipv6"))
      (import "import-type-ip-address-family" (type (;4;) (eq 3)))
      (import "import-type-tcp-socket" (type (;5;) (sub resource)))
      (import "import-type-ip-address-family0" (type (;6;) (eq 4)))
      (import "import-type-tcp-socket0" (type (;7;) (eq 5)))
      (type (;8;) (own 7))
      (import "import-type-error-code0" (type (;9;) (eq 2)))
      (type (;10;) (result 8 (error 9)))
      (type (;11;) (func (param "address-family" 6) (result 10)))
      (import "import-func-create-tcp-socket" (func (;0;) (type 11)))
      (export (;12;) "network" (type 0))
      (export (;13;) "error-code" (type 2))
      (export (;14;) "ip-address-family" (type 4))
      (export (;15;) "tcp-socket" (type 5))
      (type (;16;) (own 15))
      (type (;17;) (result 16 (error 13)))
      (type (;18;) (func (param "address-family" 14) (result 17)))
      (export (;1;) "create-tcp-socket" (func 0) (func (type 18)))
    )
    (instance (;30;) (instantiate 15
        (with "import-func-create-tcp-socket" (func 82))
        (with "import-type-network" (type 84))
        (with "import-type-error-code" (type 79))
        (with "import-type-ip-address-family" (type 86))
        (with "import-type-tcp-socket" (type 157))
        (with "import-type-ip-address-family0" (type 86))
        (with "import-type-tcp-socket0" (type 157))
        (with "import-type-error-code0" (type 79))
      )
    )
    (export (;31;) "wasi:sockets/tcp-create-socket@0.2.0-rc-2023-10-18" (instance 30))
    (alias export 27 "udp-socket" (type (;161;)))
    (type (;162;) (own 161))
    (type (;163;) (result 162 (error 79)))
    (type (;164;) (func (param "address-family" 86) (result 163)))
    (alias core export 6 "wasi:sockets/udp-create-socket@0.2.0-rc-2023-10-18#create-udp-socket" (core func (;149;)))
    (func (;83;) (type 164) (canon lift (core func 149) (memory 0)))
    (component (;16;)
      (import "import-type-network" (type (;0;) (sub resource)))
      (type (;1;) (enum "unknown" "access-denied" "not-supported" "invalid-argument" "out-of-memory" "timeout" "concurrency-conflict" "not-in-progress" "would-block" "invalid-state" "new-socket-limit" "address-not-bindable" "address-in-use" "remote-unreachable" "connection-refused" "connection-reset" "connection-aborted" "datagram-too-large" "name-unresolvable" "temporary-resolver-failure" "permanent-resolver-failure"))
      (import "import-type-error-code" (type (;2;) (eq 1)))
      (type (;3;) (enum "ipv4" "ipv6"))
      (import "import-type-ip-address-family" (type (;4;) (eq 3)))
      (import "import-type-udp-socket" (type (;5;) (sub resource)))
      (import "import-type-ip-address-family0" (type (;6;) (eq 4)))
      (import "import-type-udp-socket0" (type (;7;) (eq 5)))
      (type (;8;) (own 7))
      (import "import-type-error-code0" (type (;9;) (eq 2)))
      (type (;10;) (result 8 (error 9)))
      (type (;11;) (func (param "address-family" 6) (result 10)))
      (import "import-func-create-udp-socket" (func (;0;) (type 11)))
      (export (;12;) "network" (type 0))
      (export (;13;) "error-code" (type 2))
      (export (;14;) "ip-address-family" (type 4))
      (export (;15;) "udp-socket" (type 5))
      (type (;16;) (own 15))
      (type (;17;) (result 16 (error 13)))
      (type (;18;) (func (param "address-family" 14) (result 17)))
      (export (;1;) "create-udp-socket" (func 0) (func (type 18)))
    )
    (instance (;32;) (instantiate 16
        (with "import-func-create-udp-socket" (func 83))
        (with "import-type-network" (type 84))
        (with "import-type-error-code" (type 79))
        (with "import-type-ip-address-family" (type 86))
        (with "import-type-udp-socket" (type 161))
        (with "import-type-ip-address-family0" (type 86))
        (with "import-type-udp-socket0" (type 161))
        (with "import-type-error-code0" (type 79))
      )
    )
    (export (;33;) "wasi:sockets/udp-create-socket@0.2.0-rc-2023-10-18" (instance 32))
    (type (;165;) (list u8))
    (type (;166;) (tuple string 165))
    (type (;167;) (list 166))
    (type (;168;) (own 8))
    (type (;169;) (func (param "entries" 167) (result 168)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[constructor]fields" (core func (;150;)))
    (func (;84;) (type 169) (canon lift (core func 150) (memory 0) (realloc 33) string-encoding=utf8))
    (type (;170;) (borrow 8))
    (type (;171;) (list 165))
    (type (;172;) (func (param "self" 170) (param "name" string) (result 171)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]fields.get" (core func (;151;)))
    (alias core export 6 "cabi_post_wasi:http/types@0.2.0-rc-2023-10-18#[method]fields.get" (core func (;152;)))
    (func (;85;) (type 172) (canon lift (core func 151) (memory 0) (realloc 33) string-encoding=utf8 (post-return 152)))
    (type (;173;) (func (param "self" 170) (param "name" string) (param "value" 171)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]fields.set" (core func (;153;)))
    (func (;86;) (type 173) (canon lift (core func 153) (memory 0) (realloc 33) string-encoding=utf8))
    (type (;174;) (func (param "self" 170) (param "name" string)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]fields.delete" (core func (;154;)))
    (func (;87;) (type 174) (canon lift (core func 154) (memory 0) (realloc 33) string-encoding=utf8))
    (type (;175;) (func (param "self" 170) (param "name" string) (param "value" 165)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]fields.append" (core func (;155;)))
    (func (;88;) (type 175) (canon lift (core func 155) (memory 0) (realloc 33) string-encoding=utf8))
    (type (;176;) (func (param "self" 170) (result 167)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]fields.entries" (core func (;156;)))
    (alias core export 6 "cabi_post_wasi:http/types@0.2.0-rc-2023-10-18#[method]fields.entries" (core func (;157;)))
    (func (;89;) (type 176) (canon lift (core func 156) (memory 0) string-encoding=utf8 (post-return 157)))
    (type (;177;) (func (param "self" 170) (result 168)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]fields.clone" (core func (;158;)))
    (func (;90;) (type 177) (canon lift (core func 158)))
    (type (;178;) (borrow 9))
    (type (;179;) (variant (case "get") (case "head") (case "post") (case "put") (case "delete") (case "connect") (case "options") (case "trace") (case "patch") (case "other" string)))
    (type (;180;) (func (param "self" 178) (result 179)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.method" (core func (;159;)))
    (alias core export 6 "cabi_post_wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.method" (core func (;160;)))
    (func (;91;) (type 180) (canon lift (core func 159) (memory 0) string-encoding=utf8 (post-return 160)))
    (type (;181;) (option string))
    (type (;182;) (func (param "self" 178) (result 181)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.path-with-query" (core func (;161;)))
    (alias core export 6 "cabi_post_wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.path-with-query" (core func (;162;)))
    (func (;92;) (type 182) (canon lift (core func 161) (memory 0) string-encoding=utf8 (post-return 162)))
    (type (;183;) (variant (case "HTTP") (case "HTTPS") (case "other" string)))
    (type (;184;) (option 183))
    (type (;185;) (func (param "self" 178) (result 184)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.scheme" (core func (;163;)))
    (alias core export 6 "cabi_post_wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.scheme" (core func (;164;)))
    (func (;93;) (type 185) (canon lift (core func 163) (memory 0) string-encoding=utf8 (post-return 164)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.authority" (core func (;165;)))
    (alias core export 6 "cabi_post_wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.authority" (core func (;166;)))
    (func (;94;) (type 182) (canon lift (core func 165) (memory 0) string-encoding=utf8 (post-return 166)))
    (type (;186;) (own 8))
    (type (;187;) (func (param "self" 178) (result 186)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.headers" (core func (;167;)))
    (func (;95;) (type 187) (canon lift (core func 167)))
    (type (;188;) (own 13))
    (type (;189;) (result 188))
    (type (;190;) (func (param "self" 178) (result 189)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-request.consume" (core func (;168;)))
    (func (;96;) (type 190) (canon lift (core func 168) (memory 0)))
    (type (;191;) (borrow 8))
    (type (;192;) (own 10))
    (type (;193;) (func (param "method" 179) (param "path-with-query" 181) (param "scheme" 184) (param "authority" 181) (param "headers" 191) (result 192)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[constructor]outgoing-request" (core func (;169;)))
    (func (;97;) (type 193) (canon lift (core func 169) (memory 0) (realloc 33) string-encoding=utf8))
    (type (;194;) (borrow 10))
    (type (;195;) (own 16))
    (type (;196;) (result 195))
    (type (;197;) (func (param "self" 194) (result 196)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]outgoing-request.write" (core func (;170;)))
    (func (;98;) (type 197) (canon lift (core func 170) (memory 0)))
    (type (;198;) (own 11))
    (type (;199;) (own 15))
    (type (;200;) (variant (case "invalid-url" string) (case "timeout-error" string) (case "protocol-error" string) (case "unexpected-error" string)))
    (type (;201;) (result 199 (error 200)))
    (type (;202;) (func (param "param" 198) (param "response" 201)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[static]response-outparam.set" (core func (;171;)))
    (func (;99;) (type 202) (canon lift (core func 171) (memory 0) (realloc 33) string-encoding=utf8))
    (type (;203;) (borrow 12))
    (type (;204;) u16)
    (type (;205;) (func (param "self" 203) (result 204)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-response.status" (core func (;172;)))
    (func (;100;) (type 205) (canon lift (core func 172)))
    (type (;206;) (func (param "self" 203) (result 186)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-response.headers" (core func (;173;)))
    (func (;101;) (type 206) (canon lift (core func 173)))
    (type (;207;) (func (param "self" 203) (result 189)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-response.consume" (core func (;174;)))
    (func (;102;) (type 207) (canon lift (core func 174) (memory 0)))
    (type (;208;) (borrow 13))
    (type (;209;) (own 100))
    (type (;210;) (result 209))
    (type (;211;) (func (param "self" 208) (result 210)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]incoming-body.stream" (core func (;175;)))
    (func (;103;) (type 211) (canon lift (core func 175) (memory 0)))
    (type (;212;) (own 14))
    (type (;213;) (func (param "this" 188) (result 212)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[static]incoming-body.finish" (core func (;176;)))
    (func (;104;) (type 213) (canon lift (core func 176)))
    (type (;214;) (borrow 14))
    (type (;215;) (own 53))
    (type (;216;) (func (param "self" 214) (result 215)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]future-trailers.subscribe" (core func (;177;)))
    (func (;105;) (type 216) (canon lift (core func 177)))
    (type (;217;) (own 8))
    (type (;218;) (result 217 (error 200)))
    (type (;219;) (option 218))
    (type (;220;) (func (param "self" 214) (result 219)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]future-trailers.get" (core func (;178;)))
    (alias core export 6 "cabi_post_wasi:http/types@0.2.0-rc-2023-10-18#[method]future-trailers.get" (core func (;179;)))
    (func (;106;) (type 220) (canon lift (core func 178) (memory 0) string-encoding=utf8 (post-return 179)))
    (type (;221;) (func (param "status-code" 204) (param "headers" 191) (result 199)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[constructor]outgoing-response" (core func (;180;)))
    (func (;107;) (type 221) (canon lift (core func 180)))
    (type (;222;) (borrow 15))
    (type (;223;) (func (param "self" 222) (result 196)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]outgoing-response.write" (core func (;181;)))
    (func (;108;) (type 223) (canon lift (core func 181) (memory 0)))
    (type (;224;) (borrow 16))
    (type (;225;) (own 102))
    (type (;226;) (result 225))
    (type (;227;) (func (param "self" 224) (result 226)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]outgoing-body.write" (core func (;182;)))
    (func (;109;) (type 227) (canon lift (core func 182) (memory 0)))
    (type (;228;) (option 217))
    (type (;229;) (func (param "this" 195) (param "trailers" 228)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[static]outgoing-body.finish" (core func (;183;)))
    (func (;110;) (type 229) (canon lift (core func 183)))
    (type (;230;) (borrow 17))
    (type (;231;) (own 12))
    (type (;232;) (result 231 (error 200)))
    (type (;233;) (result 232))
    (type (;234;) (option 233))
    (type (;235;) (func (param "self" 230) (result 234)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]future-incoming-response.get" (core func (;184;)))
    (alias core export 6 "cabi_post_wasi:http/types@0.2.0-rc-2023-10-18#[method]future-incoming-response.get" (core func (;185;)))
    (func (;111;) (type 235) (canon lift (core func 184) (memory 0) string-encoding=utf8 (post-return 185)))
    (type (;236;) (func (param "self" 230) (result 215)))
    (alias core export 6 "wasi:http/types@0.2.0-rc-2023-10-18#[method]future-incoming-response.subscribe" (core func (;186;)))
    (func (;112;) (type 236) (canon lift (core func 186)))
    (component (;17;)
      (import "import-type-input-stream" (type (;0;) (sub resource)))
      (import "import-type-output-stream" (type (;1;) (sub resource)))
      (import "import-type-pollable" (type (;2;) (sub resource)))
      (import "import-type-fields" (type (;3;) (sub resource)))
      (import "import-type-incoming-request" (type (;4;) (sub resource)))
      (import "import-type-outgoing-request" (type (;5;) (sub resource)))
      (import "import-type-response-outparam" (type (;6;) (sub resource)))
      (import "import-type-incoming-response" (type (;7;) (sub resource)))
      (import "import-type-incoming-body" (type (;8;) (sub resource)))
      (import "import-type-future-trailers" (type (;9;) (sub resource)))
      (import "import-type-outgoing-response" (type (;10;) (sub resource)))
      (import "import-type-outgoing-body" (type (;11;) (sub resource)))
      (import "import-type-future-incoming-response" (type (;12;) (sub resource)))
      (type (;13;) (list u8))
      (type (;14;) (tuple string 13))
      (type (;15;) (list 14))
      (type (;16;) (own 3))
      (type (;17;) (func (param "entries" 15) (result 16)))
      (import "import-constructor-fields" (func (;0;) (type 17)))
      (type (;18;) (borrow 3))
      (type (;19;) (list 13))
      (type (;20;) (func (param "self" 18) (param "name" string) (result 19)))
      (import "import-method-fields-get" (func (;1;) (type 20)))
      (type (;21;) (func (param "self" 18) (param "name" string) (param "value" 19)))
      (import "import-method-fields-set" (func (;2;) (type 21)))
      (type (;22;) (func (param "self" 18) (param "name" string)))
      (import "import-method-fields-delete" (func (;3;) (type 22)))
      (type (;23;) (func (param "self" 18) (param "name" string) (param "value" 13)))
      (import "import-method-fields-append" (func (;4;) (type 23)))
      (type (;24;) (func (param "self" 18) (result 15)))
      (import "import-method-fields-entries" (func (;5;) (type 24)))
      (type (;25;) (func (param "self" 18) (result 16)))
      (import "import-method-fields-clone" (func (;6;) (type 25)))
      (type (;26;) (borrow 4))
      (type (;27;) (variant (case "get") (case "head") (case "post") (case "put") (case "delete") (case "connect") (case "options") (case "trace") (case "patch") (case "other" string)))
      (import "import-type-method" (type (;28;) (eq 27)))
      (type (;29;) (func (param "self" 26) (result 28)))
      (import "import-method-incoming-request-method" (func (;7;) (type 29)))
      (type (;30;) (option string))
      (type (;31;) (func (param "self" 26) (result 30)))
      (import "import-method-incoming-request-path-with-query" (func (;8;) (type 31)))
      (type (;32;) (variant (case "HTTP") (case "HTTPS") (case "other" string)))
      (import "import-type-scheme" (type (;33;) (eq 32)))
      (type (;34;) (option 33))
      (type (;35;) (func (param "self" 26) (result 34)))
      (import "import-method-incoming-request-scheme" (func (;9;) (type 35)))
      (import "import-method-incoming-request-authority" (func (;10;) (type 31)))
      (import "import-type-headers" (type (;36;) (eq 3)))
      (type (;37;) (own 36))
      (type (;38;) (func (param "self" 26) (result 37)))
      (import "import-method-incoming-request-headers" (func (;11;) (type 38)))
      (type (;39;) (own 8))
      (type (;40;) (result 39))
      (type (;41;) (func (param "self" 26) (result 40)))
      (import "import-method-incoming-request-consume" (func (;12;) (type 41)))
      (type (;42;) (borrow 36))
      (type (;43;) (own 5))
      (type (;44;) (func (param "method" 28) (param "path-with-query" 30) (param "scheme" 34) (param "authority" 30) (param "headers" 42) (result 43)))
      (import "import-constructor-outgoing-request" (func (;13;) (type 44)))
      (type (;45;) (borrow 5))
      (type (;46;) (own 11))
      (type (;47;) (result 46))
      (type (;48;) (func (param "self" 45) (result 47)))
      (import "import-method-outgoing-request-write" (func (;14;) (type 48)))
      (type (;49;) (own 6))
      (type (;50;) (own 10))
      (type (;51;) (variant (case "invalid-url" string) (case "timeout-error" string) (case "protocol-error" string) (case "unexpected-error" string)))
      (import "import-type-error" (type (;52;) (eq 51)))
      (type (;53;) (result 50 (error 52)))
      (type (;54;) (func (param "param" 49) (param "response" 53)))
      (import "import-static-response-outparam-set" (func (;15;) (type 54)))
      (type (;55;) (borrow 7))
      (type (;56;) u16)
      (import "import-type-status-code" (type (;57;) (eq 56)))
      (type (;58;) (func (param "self" 55) (result 57)))
      (import "import-method-incoming-response-status" (func (;16;) (type 58)))
      (type (;59;) (func (param "self" 55) (result 37)))
      (import "import-method-incoming-response-headers" (func (;17;) (type 59)))
      (type (;60;) (func (param "self" 55) (result 40)))
      (import "import-method-incoming-response-consume" (func (;18;) (type 60)))
      (type (;61;) (borrow 8))
      (import "import-type-input-stream0" (type (;62;) (eq 0)))
      (type (;63;) (own 62))
      (type (;64;) (result 63))
      (type (;65;) (func (param "self" 61) (result 64)))
      (import "import-method-incoming-body-stream" (func (;19;) (type 65)))
      (type (;66;) (own 9))
      (type (;67;) (func (param "this" 39) (result 66)))
      (import "import-static-incoming-body-finish" (func (;20;) (type 67)))
      (type (;68;) (borrow 9))
      (import "import-type-pollable0" (type (;69;) (eq 2)))
      (type (;70;) (own 69))
      (type (;71;) (func (param "self" 68) (result 70)))
      (import "import-method-future-trailers-subscribe" (func (;21;) (type 71)))
      (import "import-type-trailers" (type (;72;) (eq 3)))
      (type (;73;) (own 72))
      (type (;74;) (result 73 (error 52)))
      (type (;75;) (option 74))
      (type (;76;) (func (param "self" 68) (result 75)))
      (import "import-method-future-trailers-get" (func (;22;) (type 76)))
      (type (;77;) (func (param "status-code" 57) (param "headers" 42) (result 50)))
      (import "import-constructor-outgoing-response" (func (;23;) (type 77)))
      (type (;78;) (borrow 10))
      (type (;79;) (func (param "self" 78) (result 47)))
      (import "import-method-outgoing-response-write" (func (;24;) (type 79)))
      (type (;80;) (borrow 11))
      (import "import-type-output-stream0" (type (;81;) (eq 1)))
      (type (;82;) (own 81))
      (type (;83;) (result 82))
      (type (;84;) (func (param "self" 80) (result 83)))
      (import "import-method-outgoing-body-write" (func (;25;) (type 84)))
      (type (;85;) (option 73))
      (type (;86;) (func (param "this" 46) (param "trailers" 85)))
      (import "import-static-outgoing-body-finish" (func (;26;) (type 86)))
      (type (;87;) (borrow 12))
      (type (;88;) (own 7))
      (type (;89;) (result 88 (error 52)))
      (type (;90;) (result 89))
      (type (;91;) (option 90))
      (type (;92;) (func (param "self" 87) (result 91)))
      (import "import-method-future-incoming-response-get" (func (;27;) (type 92)))
      (type (;93;) (func (param "self" 87) (result 70)))
      (import "import-method-future-incoming-response-subscribe" (func (;28;) (type 93)))
      (export (;94;) "input-stream" (type 0))
      (export (;95;) "output-stream" (type 1))
      (export (;96;) "pollable" (type 2))
      (type (;97;) (variant (case "get") (case "head") (case "post") (case "put") (case "delete") (case "connect") (case "options") (case "trace") (case "patch") (case "other" string)))
      (export (;98;) "method" (type 97))
      (type (;99;) (variant (case "HTTP") (case "HTTPS") (case "other" string)))
      (export (;100;) "scheme" (type 99))
      (type (;101;) (variant (case "invalid-url" string) (case "timeout-error" string) (case "protocol-error" string) (case "unexpected-error" string)))
      (export (;102;) "error" (type 101))
      (export (;103;) "fields" (type 3))
      (export (;104;) "headers" (type 103))
      (export (;105;) "trailers" (type 103))
      (export (;106;) "incoming-request" (type 4))
      (export (;107;) "outgoing-request" (type 5))
      (type (;108;) (option u32))
      (type (;109;) (record (field "connect-timeout-ms" 108) (field "first-byte-timeout-ms" 108) (field "between-bytes-timeout-ms" 108)))
      (export (;110;) "request-options" (type 109))
      (export (;111;) "response-outparam" (type 6))
      (type (;112;) u16)
      (export (;113;) "status-code" (type 112))
      (export (;114;) "incoming-response" (type 7))
      (export (;115;) "incoming-body" (type 8))
      (export (;116;) "future-trailers" (type 9))
      (export (;117;) "outgoing-response" (type 10))
      (export (;118;) "outgoing-body" (type 11))
      (export (;119;) "future-incoming-response" (type 12))
      (type (;120;) (list u8))
      (type (;121;) (tuple string 120))
      (type (;122;) (list 121))
      (type (;123;) (own 103))
      (type (;124;) (func (param "entries" 122) (result 123)))
      (export (;29;) "[constructor]fields" (func 0) (func (type 124)))
      (type (;125;) (borrow 103))
      (type (;126;) (list 120))
      (type (;127;) (func (param "self" 125) (param "name" string) (result 126)))
      (export (;30;) "[method]fields.get" (func 1) (func (type 127)))
      (type (;128;) (func (param "self" 125) (param "name" string) (param "value" 126)))
      (export (;31;) "[method]fields.set" (func 2) (func (type 128)))
      (type (;129;) (func (param "self" 125) (param "name" string)))
      (export (;32;) "[method]fields.delete" (func 3) (func (type 129)))
      (type (;130;) (func (param "self" 125) (param "name" string) (param "value" 120)))
      (export (;33;) "[method]fields.append" (func 4) (func (type 130)))
      (type (;131;) (func (param "self" 125) (result 122)))
      (export (;34;) "[method]fields.entries" (func 5) (func (type 131)))
      (type (;132;) (func (param "self" 125) (result 123)))
      (export (;35;) "[method]fields.clone" (func 6) (func (type 132)))
      (type (;133;) (borrow 106))
      (type (;134;) (func (param "self" 133) (result 98)))
      (export (;36;) "[method]incoming-request.method" (func 7) (func (type 134)))
      (type (;135;) (option string))
      (type (;136;) (func (param "self" 133) (result 135)))
      (export (;37;) "[method]incoming-request.path-with-query" (func 8) (func (type 136)))
      (type (;137;) (option 100))
      (type (;138;) (func (param "self" 133) (result 137)))
      (export (;38;) "[method]incoming-request.scheme" (func 9) (func (type 138)))
      (export (;39;) "[method]incoming-request.authority" (func 10) (func (type 136)))
      (type (;139;) (own 104))
      (type (;140;) (func (param "self" 133) (result 139)))
      (export (;40;) "[method]incoming-request.headers" (func 11) (func (type 140)))
      (type (;141;) (own 115))
      (type (;142;) (result 141))
      (type (;143;) (func (param "self" 133) (result 142)))
      (export (;41;) "[method]incoming-request.consume" (func 12) (func (type 143)))
      (type (;144;) (borrow 104))
      (type (;145;) (own 107))
      (type (;146;) (func (param "method" 98) (param "path-with-query" 135) (param "scheme" 137) (param "authority" 135) (param "headers" 144) (result 145)))
      (export (;42;) "[constructor]outgoing-request" (func 13) (func (type 146)))
      (type (;147;) (borrow 107))
      (type (;148;) (own 118))
      (type (;149;) (result 148))
      (type (;150;) (func (param "self" 147) (result 149)))
      (export (;43;) "[method]outgoing-request.write" (func 14) (func (type 150)))
      (type (;151;) (own 111))
      (type (;152;) (own 117))
      (type (;153;) (result 152 (error 102)))
      (type (;154;) (func (param "param" 151) (param "response" 153)))
      (export (;44;) "[static]response-outparam.set" (func 15) (func (type 154)))
      (type (;155;) (borrow 114))
      (type (;156;) (func (param "self" 155) (result 113)))
      (export (;45;) "[method]incoming-response.status" (func 16) (func (type 156)))
      (type (;157;) (func (param "self" 155) (result 139)))
      (export (;46;) "[method]incoming-response.headers" (func 17) (func (type 157)))
      (type (;158;) (func (param "self" 155) (result 142)))
      (export (;47;) "[method]incoming-response.consume" (func 18) (func (type 158)))
      (type (;159;) (borrow 115))
      (type (;160;) (own 94))
      (type (;161;) (result 160))
      (type (;162;) (func (param "self" 159) (result 161)))
      (export (;48;) "[method]incoming-body.stream" (func 19) (func (type 162)))
      (type (;163;) (own 116))
      (type (;164;) (func (param "this" 141) (result 163)))
      (export (;49;) "[static]incoming-body.finish" (func 20) (func (type 164)))
      (type (;165;) (borrow 116))
      (type (;166;) (own 96))
      (type (;167;) (func (param "self" 165) (result 166)))
      (export (;50;) "[method]future-trailers.subscribe" (func 21) (func (type 167)))
      (type (;168;) (own 105))
      (type (;169;) (result 168 (error 102)))
      (type (;170;) (option 169))
      (type (;171;) (func (param "self" 165) (result 170)))
      (export (;51;) "[method]future-trailers.get" (func 22) (func (type 171)))
      (type (;172;) (func (param "status-code" 113) (param "headers" 144) (result 152)))
      (export (;52;) "[constructor]outgoing-response" (func 23) (func (type 172)))
      (type (;173;) (borrow 117))
      (type (;174;) (func (param "self" 173) (result 149)))
      (export (;53;) "[method]outgoing-response.write" (func 24) (func (type 174)))
      (type (;175;) (borrow 118))
      (type (;176;) (own 95))
      (type (;177;) (result 176))
      (type (;178;) (func (param "self" 175) (result 177)))
      (export (;54;) "[method]outgoing-body.write" (func 25) (func (type 178)))
      (type (;179;) (option 168))
      (type (;180;) (func (param "this" 148) (param "trailers" 179)))
      (export (;55;) "[static]outgoing-body.finish" (func 26) (func (type 180)))
      (type (;181;) (borrow 119))
      (type (;182;) (own 114))
      (type (;183;) (result 182 (error 102)))
      (type (;184;) (result 183))
      (type (;185;) (option 184))
      (type (;186;) (func (param "self" 181) (result 185)))
      (export (;56;) "[method]future-incoming-response.get" (func 27) (func (type 186)))
      (type (;187;) (func (param "self" 181) (result 166)))
      (export (;57;) "[method]future-incoming-response.subscribe" (func 28) (func (type 187)))
    )
    (instance (;34;) (instantiate 17
        (with "import-constructor-fields" (func 84))
        (with "import-method-fields-get" (func 85))
        (with "import-method-fields-set" (func 86))
        (with "import-method-fields-delete" (func 87))
        (with "import-method-fields-append" (func 88))
        (with "import-method-fields-entries" (func 89))
        (with "import-method-fields-clone" (func 90))
        (with "import-method-incoming-request-method" (func 91))
        (with "import-method-incoming-request-path-with-query" (func 92))
        (with "import-method-incoming-request-scheme" (func 93))
        (with "import-method-incoming-request-authority" (func 94))
        (with "import-method-incoming-request-headers" (func 95))
        (with "import-method-incoming-request-consume" (func 96))
        (with "import-constructor-outgoing-request" (func 97))
        (with "import-method-outgoing-request-write" (func 98))
        (with "import-static-response-outparam-set" (func 99))
        (with "import-method-incoming-response-status" (func 100))
        (with "import-method-incoming-response-headers" (func 101))
        (with "import-method-incoming-response-consume" (func 102))
        (with "import-method-incoming-body-stream" (func 103))
        (with "import-static-incoming-body-finish" (func 104))
        (with "import-method-future-trailers-subscribe" (func 105))
        (with "import-method-future-trailers-get" (func 106))
        (with "import-constructor-outgoing-response" (func 107))
        (with "import-method-outgoing-response-write" (func 108))
        (with "import-method-outgoing-body-write" (func 109))
        (with "import-static-outgoing-body-finish" (func 110))
        (with "import-method-future-incoming-response-get" (func 111))
        (with "import-method-future-incoming-response-subscribe" (func 112))
        (with "import-type-input-stream" (type 100))
        (with "import-type-output-stream" (type 102))
        (with "import-type-pollable" (type 53))
        (with "import-type-fields" (type 8))
        (with "import-type-incoming-request" (type 9))
        (with "import-type-outgoing-request" (type 10))
        (with "import-type-response-outparam" (type 11))
        (with "import-type-incoming-response" (type 12))
        (with "import-type-incoming-body" (type 13))
        (with "import-type-future-trailers" (type 14))
        (with "import-type-outgoing-response" (type 15))
        (with "import-type-outgoing-body" (type 16))
        (with "import-type-future-incoming-response" (type 17))
        (with "import-type-method" (type 179))
        (with "import-type-scheme" (type 183))
        (with "import-type-headers" (type 8))
        (with "import-type-error" (type 200))
        (with "import-type-status-code" (type 204))
        (with "import-type-input-stream0" (type 100))
        (with "import-type-pollable0" (type 53))
        (with "import-type-trailers" (type 8))
        (with "import-type-output-stream0" (type 102))
      )
    )
    (export (;35;) "wasi:http/types@0.2.0-rc-2023-10-18" (instance 34))
    (alias export 35 "incoming-request" (type (;237;)))
    (type (;238;) (own 237))
    (alias export 35 "response-outparam" (type (;239;)))
    (type (;240;) (own 239))
    (type (;241;) (func (param "request" 238) (param "response-out" 240)))
    (alias core export 6 "wasi:http/incoming-handler@0.2.0-rc-2023-10-18#handle" (core func (;187;)))
    (func (;113;) (type 241) (canon lift (core func 187)))
    (component (;18;)
      (import "import-type-incoming-request" (type (;0;) (sub resource)))
      (import "import-type-response-outparam" (type (;1;) (sub resource)))
      (import "import-type-incoming-request0" (type (;2;) (eq 0)))
      (type (;3;) (own 2))
      (import "import-type-response-outparam0" (type (;4;) (eq 1)))
      (type (;5;) (own 4))
      (type (;6;) (func (param "request" 3) (param "response-out" 5)))
      (import "import-func-handle" (func (;0;) (type 6)))
      (export (;7;) "incoming-request" (type 0))
      (export (;8;) "response-outparam" (type 1))
      (type (;9;) (own 7))
      (type (;10;) (own 8))
      (type (;11;) (func (param "request" 9) (param "response-out" 10)))
      (export (;1;) "handle" (func 0) (func (type 11)))
    )
    (instance (;36;) (instantiate 18
        (with "import-func-handle" (func 113))
        (with "import-type-incoming-request" (type 237))
        (with "import-type-response-outparam" (type 239))
        (with "import-type-incoming-request0" (type 237))
        (with "import-type-response-outparam0" (type 239))
      )
    )
    (export (;37;) "wasi:http/incoming-handler@0.2.0-rc-2023-10-18" (instance 36))
    (alias export 35 "outgoing-request" (type (;242;)))
    (type (;243;) (own 242))
    (alias export 35 "request-options" (type (;244;)))
    (type (;245;) (option 244))
    (alias export 35 "future-incoming-response" (type (;246;)))
    (type (;247;) (own 246))
    (alias export 35 "error" (type (;248;)))
    (type (;249;) (result 247 (error 248)))
    (type (;250;) (func (param "request" 243) (param "options" 245) (result 249)))
    (alias core export 6 "wasi:http/outgoing-handler@0.2.0-rc-2023-10-18#handle" (core func (;188;)))
    (alias core export 6 "cabi_post_wasi:http/outgoing-handler@0.2.0-rc-2023-10-18#handle" (core func (;189;)))
    (func (;114;) (type 250) (canon lift (core func 188) (memory 0) string-encoding=utf8 (post-return 189)))
    (component (;19;)
      (import "import-type-outgoing-request" (type (;0;) (sub resource)))
      (type (;1;) (option u32))
      (type (;2;) (record (field "connect-timeout-ms" 1) (field "first-byte-timeout-ms" 1) (field "between-bytes-timeout-ms" 1)))
      (import "import-type-request-options" (type (;3;) (eq 2)))
      (import "import-type-future-incoming-response" (type (;4;) (sub resource)))
      (type (;5;) (variant (case "invalid-url" string) (case "timeout-error" string) (case "protocol-error" string) (case "unexpected-error" string)))
      (import "import-type-error" (type (;6;) (eq 5)))
      (import "import-type-outgoing-request0" (type (;7;) (eq 0)))
      (type (;8;) (own 7))
      (import "import-type-request-options0" (type (;9;) (eq 3)))
      (type (;10;) (option 9))
      (import "import-type-future-incoming-response0" (type (;11;) (eq 4)))
      (type (;12;) (own 11))
      (import "import-type-error0" (type (;13;) (eq 6)))
      (type (;14;) (result 12 (error 13)))
      (type (;15;) (func (param "request" 8) (param "options" 10) (result 14)))
      (import "import-func-handle" (func (;0;) (type 15)))
      (export (;16;) "outgoing-request" (type 0))
      (export (;17;) "request-options" (type 3))
      (export (;18;) "future-incoming-response" (type 4))
      (export (;19;) "error" (type 6))
      (type (;20;) (own 16))
      (type (;21;) (option 17))
      (type (;22;) (own 18))
      (type (;23;) (result 22 (error 19)))
      (type (;24;) (func (param "request" 20) (param "options" 21) (result 23)))
      (export (;1;) "handle" (func 0) (func (type 24)))
    )
    (instance (;38;) (instantiate 19
        (with "import-func-handle" (func 114))
        (with "import-type-outgoing-request" (type 242))
        (with "import-type-request-options" (type 244))
        (with "import-type-future-incoming-response" (type 246))
        (with "import-type-error" (type 248))
        (with "import-type-outgoing-request0" (type 242))
        (with "import-type-request-options0" (type 244))
        (with "import-type-future-incoming-response0" (type 246))
        (with "import-type-error0" (type 248))
      )
    )
    (export (;39;) "wasi:http/outgoing-handler@0.2.0-rc-2023-10-18" (instance 38))
    (type (;251;) (own 100))
    (type (;252;) (func (result 251)))
    (alias core export 6 "wasi:cli/stdin@0.2.0-rc-2023-10-18#get-stdin" (core func (;190;)))
    (func (;115;) (type 252) (canon lift (core func 190)))
    (component (;20;)
      (import "import-type-input-stream" (type (;0;) (sub resource)))
      (import "import-type-input-stream0" (type (;1;) (eq 0)))
      (type (;2;) (own 1))
      (type (;3;) (func (result 2)))
      (import "import-func-get-stdin" (func (;0;) (type 3)))
      (export (;4;) "input-stream" (type 0))
      (type (;5;) (own 4))
      (type (;6;) (func (result 5)))
      (export (;1;) "get-stdin" (func 0) (func (type 6)))
    )
    (instance (;40;) (instantiate 20
        (with "import-func-get-stdin" (func 115))
        (with "import-type-input-stream" (type 100))
        (with "import-type-input-stream0" (type 100))
      )
    )
    (export (;41;) "wasi:cli/stdin@0.2.0-rc-2023-10-18" (instance 40))
    (type (;253;) (own 102))
    (type (;254;) (func (result 253)))
    (alias core export 6 "wasi:cli/stdout@0.2.0-rc-2023-10-18#get-stdout" (core func (;191;)))
    (func (;116;) (type 254) (canon lift (core func 191)))
    (component (;21;)
      (import "import-type-output-stream" (type (;0;) (sub resource)))
      (import "import-type-output-stream0" (type (;1;) (eq 0)))
      (type (;2;) (own 1))
      (type (;3;) (func (result 2)))
      (import "import-func-get-stdout" (func (;0;) (type 3)))
      (export (;4;) "output-stream" (type 0))
      (type (;5;) (own 4))
      (type (;6;) (func (result 5)))
      (export (;1;) "get-stdout" (func 0) (func (type 6)))
    )
    (instance (;42;) (instantiate 21
        (with "import-func-get-stdout" (func 116))
        (with "import-type-output-stream" (type 102))
        (with "import-type-output-stream0" (type 102))
      )
    )
    (export (;43;) "wasi:cli/stdout@0.2.0-rc-2023-10-18" (instance 42))
    (type (;255;) (own 102))
    (type (;256;) (func (result 255)))
    (alias core export 6 "wasi:cli/stderr@0.2.0-rc-2023-10-18#get-stderr" (core func (;192;)))
    (func (;117;) (type 256) (canon lift (core func 192)))
    (component (;22;)
      (import "import-type-output-stream" (type (;0;) (sub resource)))
      (import "import-type-output-stream0" (type (;1;) (eq 0)))
      (type (;2;) (own 1))
      (type (;3;) (func (result 2)))
      (import "import-func-get-stderr" (func (;0;) (type 3)))
      (export (;4;) "output-stream" (type 0))
      (type (;5;) (own 4))
      (type (;6;) (func (result 5)))
      (export (;1;) "get-stderr" (func 0) (func (type 6)))
    )
    (instance (;44;) (instantiate 22
        (with "import-func-get-stderr" (func 117))
        (with "import-type-output-stream" (type 102))
        (with "import-type-output-stream0" (type 102))
      )
    )
    (export (;45;) "wasi:cli/stderr@0.2.0-rc-2023-10-18" (instance 44))
    (component (;23;)
      (import "import-type-terminal-input" (type (;0;) (sub resource)))
      (export (;1;) "terminal-input" (type 0))
    )
    (instance (;46;) (instantiate 23
        (with "import-type-terminal-input" (type 18))
      )
    )
    (export (;47;) "wasi:cli/terminal-input@0.2.0-rc-2023-10-18" (instance 46))
    (component (;24;)
      (import "import-type-terminal-output" (type (;0;) (sub resource)))
      (export (;1;) "terminal-output" (type 0))
    )
    (instance (;48;) (instantiate 24
        (with "import-type-terminal-output" (type 19))
      )
    )
    (export (;49;) "wasi:cli/terminal-output@0.2.0-rc-2023-10-18" (instance 48))
    (alias export 47 "terminal-input" (type (;257;)))
    (type (;258;) (own 257))
    (type (;259;) (option 258))
    (type (;260;) (func (result 259)))
    (alias core export 6 "wasi:cli/terminal-stdin@0.2.0-rc-2023-10-18#get-terminal-stdin" (core func (;193;)))
    (func (;118;) (type 260) (canon lift (core func 193) (memory 0)))
    (component (;25;)
      (import "import-type-terminal-input" (type (;0;) (sub resource)))
      (import "import-type-terminal-input0" (type (;1;) (eq 0)))
      (type (;2;) (own 1))
      (type (;3;) (option 2))
      (type (;4;) (func (result 3)))
      (import "import-func-get-terminal-stdin" (func (;0;) (type 4)))
      (export (;5;) "terminal-input" (type 0))
      (type (;6;) (own 5))
      (type (;7;) (option 6))
      (type (;8;) (func (result 7)))
      (export (;1;) "get-terminal-stdin" (func 0) (func (type 8)))
    )
    (instance (;50;) (instantiate 25
        (with "import-func-get-terminal-stdin" (func 118))
        (with "import-type-terminal-input" (type 257))
        (with "import-type-terminal-input0" (type 257))
      )
    )
    (export (;51;) "wasi:cli/terminal-stdin@0.2.0-rc-2023-10-18" (instance 50))
    (alias export 49 "terminal-output" (type (;261;)))
    (type (;262;) (own 261))
    (type (;263;) (option 262))
    (type (;264;) (func (result 263)))
    (alias core export 6 "wasi:cli/terminal-stdout@0.2.0-rc-2023-10-18#get-terminal-stdout" (core func (;194;)))
    (func (;119;) (type 264) (canon lift (core func 194) (memory 0)))
    (component (;26;)
      (import "import-type-terminal-output" (type (;0;) (sub resource)))
      (import "import-type-terminal-output0" (type (;1;) (eq 0)))
      (type (;2;) (own 1))
      (type (;3;) (option 2))
      (type (;4;) (func (result 3)))
      (import "import-func-get-terminal-stdout" (func (;0;) (type 4)))
      (export (;5;) "terminal-output" (type 0))
      (type (;6;) (own 5))
      (type (;7;) (option 6))
      (type (;8;) (func (result 7)))
      (export (;1;) "get-terminal-stdout" (func 0) (func (type 8)))
    )
    (instance (;52;) (instantiate 26
        (with "import-func-get-terminal-stdout" (func 119))
        (with "import-type-terminal-output" (type 261))
        (with "import-type-terminal-output0" (type 261))
      )
    )
    (export (;53;) "wasi:cli/terminal-stdout@0.2.0-rc-2023-10-18" (instance 52))
    (type (;265;) (own 261))
    (type (;266;) (option 265))
    (type (;267;) (func (result 266)))
    (alias core export 6 "wasi:cli/terminal-stderr@0.2.0-rc-2023-10-18#get-terminal-stderr" (core func (;195;)))
    (func (;120;) (type 267) (canon lift (core func 195) (memory 0)))
    (component (;27;)
      (import "import-type-terminal-output" (type (;0;) (sub resource)))
      (import "import-type-terminal-output0" (type (;1;) (eq 0)))
      (type (;2;) (own 1))
      (type (;3;) (option 2))
      (type (;4;) (func (result 3)))
      (import "import-func-get-terminal-stderr" (func (;0;) (type 4)))
      (export (;5;) "terminal-output" (type 0))
      (type (;6;) (own 5))
      (type (;7;) (option 6))
      (type (;8;) (func (result 7)))
      (export (;1;) "get-terminal-stderr" (func 0) (func (type 8)))
    )
    (instance (;54;) (instantiate 27
        (with "import-func-get-terminal-stderr" (func 120))
        (with "import-type-terminal-output" (type 261))
        (with "import-type-terminal-output0" (type 261))
      )
    )
    (export (;55;) "wasi:cli/terminal-stderr@0.2.0-rc-2023-10-18" (instance 54))
    (type (;268;) (borrow 20))
    (type (;269;) u64)
    (type (;270;) (own 100))
    (type (;271;) (enum "access" "would-block" "already" "bad-descriptor" "busy" "deadlock" "quota" "exist" "file-too-large" "illegal-byte-sequence" "in-progress" "interrupted" "invalid" "io" "is-directory" "loop" "too-many-links" "message-size" "name-too-long" "no-device" "no-entry" "no-lock" "insufficient-memory" "insufficient-space" "not-directory" "not-empty" "not-recoverable" "unsupported" "no-tty" "no-such-device" "overflow" "not-permitted" "pipe" "read-only" "invalid-seek" "text-file-busy" "cross-device"))
    (type (;272;) (result 270 (error 271)))
    (type (;273;) (func (param "self" 268) (param "offset" 269) (result 272)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.read-via-stream" (core func (;196;)))
    (func (;121;) (type 273) (canon lift (core func 196) (memory 0)))
    (type (;274;) (own 102))
    (type (;275;) (result 274 (error 271)))
    (type (;276;) (func (param "self" 268) (param "offset" 269) (result 275)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.write-via-stream" (core func (;197;)))
    (func (;122;) (type 276) (canon lift (core func 197) (memory 0)))
    (type (;277;) (func (param "self" 268) (result 275)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.append-via-stream" (core func (;198;)))
    (func (;123;) (type 277) (canon lift (core func 198) (memory 0)))
    (type (;278;) (enum "normal" "sequential" "random" "will-need" "dont-need" "no-reuse"))
    (type (;279;) (result (error 271)))
    (type (;280;) (func (param "self" 268) (param "offset" 269) (param "length" 269) (param "advice" 278) (result 279)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.advise" (core func (;199;)))
    (func (;124;) (type 280) (canon lift (core func 199) (memory 0)))
    (type (;281;) (func (param "self" 268) (result 279)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.sync-data" (core func (;200;)))
    (func (;125;) (type 281) (canon lift (core func 200) (memory 0)))
    (type (;282;) (flags "read" "write" "file-integrity-sync" "data-integrity-sync" "requested-write-sync" "mutate-directory"))
    (type (;283;) (result 282 (error 271)))
    (type (;284;) (func (param "self" 268) (result 283)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.get-flags" (core func (;201;)))
    (func (;126;) (type 284) (canon lift (core func 201) (memory 0)))
    (type (;285;) (enum "unknown" "block-device" "character-device" "directory" "fifo" "symbolic-link" "regular-file" "socket"))
    (type (;286;) (result 285 (error 271)))
    (type (;287;) (func (param "self" 268) (result 286)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.get-type" (core func (;202;)))
    (func (;127;) (type 287) (canon lift (core func 202) (memory 0)))
    (type (;288;) (func (param "self" 268) (param "size" 269) (result 279)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.set-size" (core func (;203;)))
    (func (;128;) (type 288) (canon lift (core func 203) (memory 0)))
    (type (;289;) (variant (case "no-change") (case "now") (case "timestamp" 72)))
    (type (;290;) (func (param "self" 268) (param "data-access-timestamp" 289) (param "data-modification-timestamp" 289) (result 279)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.set-times" (core func (;204;)))
    (func (;129;) (type 290) (canon lift (core func 204) (memory 0)))
    (type (;291;) (list u8))
    (type (;292;) (tuple 291 bool))
    (type (;293;) (result 292 (error 271)))
    (type (;294;) (func (param "self" 268) (param "length" 269) (param "offset" 269) (result 293)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.read" (core func (;205;)))
    (alias core export 6 "cabi_post_wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.read" (core func (;206;)))
    (func (;130;) (type 294) (canon lift (core func 205) (memory 0) (post-return 206)))
    (type (;295;) (result 269 (error 271)))
    (type (;296;) (func (param "self" 268) (param "buffer" 291) (param "offset" 269) (result 295)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.write" (core func (;207;)))
    (func (;131;) (type 296) (canon lift (core func 207) (memory 0) (realloc 33)))
    (type (;297;) (own 21))
    (type (;298;) (result 297 (error 271)))
    (type (;299;) (func (param "self" 268) (result 298)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.read-directory" (core func (;208;)))
    (func (;132;) (type 299) (canon lift (core func 208) (memory 0)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.sync" (core func (;209;)))
    (func (;133;) (type 281) (canon lift (core func 209) (memory 0)))
    (type (;300;) (func (param "self" 268) (param "path" string) (result 279)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.create-directory-at" (core func (;210;)))
    (func (;134;) (type 300) (canon lift (core func 210) (memory 0) (realloc 33) string-encoding=utf8))
    (type (;301;) u64)
    (type (;302;) (option 72))
    (type (;303;) (record (field "type" 285) (field "link-count" 301) (field "size" 269) (field "data-access-timestamp" 302) (field "data-modification-timestamp" 302) (field "status-change-timestamp" 302)))
    (type (;304;) (result 303 (error 271)))
    (type (;305;) (func (param "self" 268) (result 304)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.stat" (core func (;211;)))
    (func (;135;) (type 305) (canon lift (core func 211) (memory 0)))
    (type (;306;) (flags "symlink-follow"))
    (type (;307;) (func (param "self" 268) (param "path-flags" 306) (param "path" string) (result 304)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.stat-at" (core func (;212;)))
    (func (;136;) (type 307) (canon lift (core func 212) (memory 0) (realloc 33) string-encoding=utf8))
    (type (;308;) (func (param "self" 268) (param "path-flags" 306) (param "path" string) (param "data-access-timestamp" 289) (param "data-modification-timestamp" 289) (result 279)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.set-times-at" (core func (;213;)))
    (func (;137;) (type 308) (canon lift (core func 213) (memory 0) (realloc 33) string-encoding=utf8))
    (type (;309;) (func (param "self" 268) (param "old-path-flags" 306) (param "old-path" string) (param "new-descriptor" 268) (param "new-path" string) (result 279)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.link-at" (core func (;214;)))
    (func (;138;) (type 309) (canon lift (core func 214) (memory 0) (realloc 33) string-encoding=utf8))
    (type (;310;) (flags "create" "directory" "exclusive" "truncate"))
    (type (;311;) (flags "readable" "writable" "executable"))
    (type (;312;) (own 20))
    (type (;313;) (result 312 (error 271)))
    (type (;314;) (func (param "self" 268) (param "path-flags" 306) (param "path" string) (param "open-flags" 310) (param "flags" 282) (param "modes" 311) (result 313)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.open-at" (core func (;215;)))
    (func (;139;) (type 314) (canon lift (core func 215) (memory 0) (realloc 33) string-encoding=utf8))
    (type (;315;) (result string (error 271)))
    (type (;316;) (func (param "self" 268) (param "path" string) (result 315)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.readlink-at" (core func (;216;)))
    (alias core export 6 "cabi_post_wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.readlink-at" (core func (;217;)))
    (func (;140;) (type 316) (canon lift (core func 216) (memory 0) (realloc 33) string-encoding=utf8 (post-return 217)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.remove-directory-at" (core func (;218;)))
    (func (;141;) (type 300) (canon lift (core func 218) (memory 0) (realloc 33) string-encoding=utf8))
    (type (;317;) (func (param "self" 268) (param "old-path" string) (param "new-descriptor" 268) (param "new-path" string) (result 279)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.rename-at" (core func (;219;)))
    (func (;142;) (type 317) (canon lift (core func 219) (memory 0) (realloc 33) string-encoding=utf8))
    (type (;318;) (func (param "self" 268) (param "old-path" string) (param "new-path" string) (result 279)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.symlink-at" (core func (;220;)))
    (func (;143;) (type 318) (canon lift (core func 220) (memory 0) (realloc 33) string-encoding=utf8))
    (type (;319;) (variant (case "access" 311) (case "exists")))
    (type (;320;) (func (param "self" 268) (param "path-flags" 306) (param "path" string) (param "type" 319) (result 279)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.access-at" (core func (;221;)))
    (func (;144;) (type 320) (canon lift (core func 221) (memory 0) (realloc 33) string-encoding=utf8))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.unlink-file-at" (core func (;222;)))
    (func (;145;) (type 300) (canon lift (core func 222) (memory 0) (realloc 33) string-encoding=utf8))
    (type (;321;) (func (param "self" 268) (param "path-flags" 306) (param "path" string) (param "modes" 311) (result 279)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.change-file-permissions-at" (core func (;223;)))
    (func (;146;) (type 321) (canon lift (core func 223) (memory 0) (realloc 33) string-encoding=utf8))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.change-directory-permissions-at" (core func (;224;)))
    (func (;147;) (type 321) (canon lift (core func 224) (memory 0) (realloc 33) string-encoding=utf8))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.lock-shared" (core func (;225;)))
    (func (;148;) (type 281) (canon lift (core func 225) (memory 0)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.lock-exclusive" (core func (;226;)))
    (func (;149;) (type 281) (canon lift (core func 226) (memory 0)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.try-lock-shared" (core func (;227;)))
    (func (;150;) (type 281) (canon lift (core func 227) (memory 0)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.try-lock-exclusive" (core func (;228;)))
    (func (;151;) (type 281) (canon lift (core func 228) (memory 0)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.unlock" (core func (;229;)))
    (func (;152;) (type 281) (canon lift (core func 229) (memory 0)))
    (type (;322;) (func (param "self" 268) (param "other" 268) (result bool)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.is-same-object" (core func (;230;)))
    (func (;153;) (type 322) (canon lift (core func 230)))
    (type (;323;) (record (field "lower" u64) (field "upper" u64)))
    (type (;324;) (result 323 (error 271)))
    (type (;325;) (func (param "self" 268) (result 324)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.metadata-hash" (core func (;231;)))
    (func (;154;) (type 325) (canon lift (core func 231) (memory 0)))
    (type (;326;) (func (param "self" 268) (param "path-flags" 306) (param "path" string) (result 324)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]descriptor.metadata-hash-at" (core func (;232;)))
    (func (;155;) (type 326) (canon lift (core func 232) (memory 0) (realloc 33) string-encoding=utf8))
    (type (;327;) (borrow 21))
    (type (;328;) (record (field "type" 285) (field "name" string)))
    (type (;329;) (option 328))
    (type (;330;) (result 329 (error 271)))
    (type (;331;) (func (param "self" 327) (result 330)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]directory-entry-stream.read-directory-entry" (core func (;233;)))
    (alias core export 6 "cabi_post_wasi:filesystem/types@0.2.0-rc-2023-10-18#[method]directory-entry-stream.read-directory-entry" (core func (;234;)))
    (func (;156;) (type 331) (canon lift (core func 233) (memory 0) string-encoding=utf8 (post-return 234)))
    (alias export 13 "error" (type (;332;)))
    (type (;333;) (borrow 332))
    (type (;334;) (option 271))
    (type (;335;) (func (param "err" 333) (result 334)))
    (alias core export 6 "wasi:filesystem/types@0.2.0-rc-2023-10-18#filesystem-error-code" (core func (;235;)))
    (func (;157;) (type 335) (canon lift (core func 235) (memory 0)))
    (component (;28;)
      (import "import-type-input-stream" (type (;0;) (sub resource)))
      (import "import-type-output-stream" (type (;1;) (sub resource)))
      (import "import-type-error" (type (;2;) (sub resource)))
      (type (;3;) (record (field "seconds" u64) (field "nanoseconds" u32)))
      (import "import-type-datetime" (type (;4;) (eq 3)))
      (import "import-type-descriptor" (type (;5;) (sub resource)))
      (import "import-type-directory-entry-stream" (type (;6;) (sub resource)))
      (type (;7;) (borrow 5))
      (type (;8;) u64)
      (import "import-type-filesize" (type (;9;) (eq 8)))
      (import "import-type-input-stream0" (type (;10;) (eq 0)))
      (type (;11;) (own 10))
      (type (;12;) (enum "access" "would-block" "already" "bad-descriptor" "busy" "deadlock" "quota" "exist" "file-too-large" "illegal-byte-sequence" "in-progress" "interrupted" "invalid" "io" "is-directory" "loop" "too-many-links" "message-size" "name-too-long" "no-device" "no-entry" "no-lock" "insufficient-memory" "insufficient-space" "not-directory" "not-empty" "not-recoverable" "unsupported" "no-tty" "no-such-device" "overflow" "not-permitted" "pipe" "read-only" "invalid-seek" "text-file-busy" "cross-device"))
      (import "import-type-error-code" (type (;13;) (eq 12)))
      (type (;14;) (result 11 (error 13)))
      (type (;15;) (func (param "self" 7) (param "offset" 9) (result 14)))
      (import "import-method-descriptor-read-via-stream" (func (;0;) (type 15)))
      (import "import-type-output-stream0" (type (;16;) (eq 1)))
      (type (;17;) (own 16))
      (type (;18;) (result 17 (error 13)))
      (type (;19;) (func (param "self" 7) (param "offset" 9) (result 18)))
      (import "import-method-descriptor-write-via-stream" (func (;1;) (type 19)))
      (type (;20;) (func (param "self" 7) (result 18)))
      (import "import-method-descriptor-append-via-stream" (func (;2;) (type 20)))
      (type (;21;) (enum "normal" "sequential" "random" "will-need" "dont-need" "no-reuse"))
      (import "import-type-advice" (type (;22;) (eq 21)))
      (type (;23;) (result (error 13)))
      (type (;24;) (func (param "self" 7) (param "offset" 9) (param "length" 9) (param "advice" 22) (result 23)))
      (import "import-method-descriptor-advise" (func (;3;) (type 24)))
      (type (;25;) (func (param "self" 7) (result 23)))
      (import "import-method-descriptor-sync-data" (func (;4;) (type 25)))
      (type (;26;) (flags "read" "write" "file-integrity-sync" "data-integrity-sync" "requested-write-sync" "mutate-directory"))
      (import "import-type-descriptor-flags" (type (;27;) (eq 26)))
      (type (;28;) (result 27 (error 13)))
      (type (;29;) (func (param "self" 7) (result 28)))
      (import "import-method-descriptor-get-flags" (func (;5;) (type 29)))
      (type (;30;) (enum "unknown" "block-device" "character-device" "directory" "fifo" "symbolic-link" "regular-file" "socket"))
      (import "import-type-descriptor-type" (type (;31;) (eq 30)))
      (type (;32;) (result 31 (error 13)))
      (type (;33;) (func (param "self" 7) (result 32)))
      (import "import-method-descriptor-get-type" (func (;6;) (type 33)))
      (type (;34;) (func (param "self" 7) (param "size" 9) (result 23)))
      (import "import-method-descriptor-set-size" (func (;7;) (type 34)))
      (import "import-type-datetime0" (type (;35;) (eq 4)))
      (type (;36;) (variant (case "no-change") (case "now") (case "timestamp" 35)))
      (import "import-type-new-timestamp" (type (;37;) (eq 36)))
      (type (;38;) (func (param "self" 7) (param "data-access-timestamp" 37) (param "data-modification-timestamp" 37) (result 23)))
      (import "import-method-descriptor-set-times" (func (;8;) (type 38)))
      (type (;39;) (list u8))
      (type (;40;) (tuple 39 bool))
      (type (;41;) (result 40 (error 13)))
      (type (;42;) (func (param "self" 7) (param "length" 9) (param "offset" 9) (result 41)))
      (import "import-method-descriptor-read" (func (;9;) (type 42)))
      (type (;43;) (result 9 (error 13)))
      (type (;44;) (func (param "self" 7) (param "buffer" 39) (param "offset" 9) (result 43)))
      (import "import-method-descriptor-write" (func (;10;) (type 44)))
      (type (;45;) (own 6))
      (type (;46;) (result 45 (error 13)))
      (type (;47;) (func (param "self" 7) (result 46)))
      (import "import-method-descriptor-read-directory" (func (;11;) (type 47)))
      (import "import-method-descriptor-sync" (func (;12;) (type 25)))
      (type (;48;) (func (param "self" 7) (param "path" string) (result 23)))
      (import "import-method-descriptor-create-directory-at" (func (;13;) (type 48)))
      (type (;49;) u64)
      (import "import-type-link-count" (type (;50;) (eq 49)))
      (type (;51;) (option 35))
      (type (;52;) (record (field "type" 31) (field "link-count" 50) (field "size" 9) (field "data-access-timestamp" 51) (field "data-modification-timestamp" 51) (field "status-change-timestamp" 51)))
      (import "import-type-descriptor-stat" (type (;53;) (eq 52)))
      (type (;54;) (result 53 (error 13)))
      (type (;55;) (func (param "self" 7) (result 54)))
      (import "import-method-descriptor-stat" (func (;14;) (type 55)))
      (type (;56;) (flags "symlink-follow"))
      (import "import-type-path-flags" (type (;57;) (eq 56)))
      (type (;58;) (func (param "self" 7) (param "path-flags" 57) (param "path" string) (result 54)))
      (import "import-method-descriptor-stat-at" (func (;15;) (type 58)))
      (type (;59;) (func (param "self" 7) (param "path-flags" 57) (param "path" string) (param "data-access-timestamp" 37) (param "data-modification-timestamp" 37) (result 23)))
      (import "import-method-descriptor-set-times-at" (func (;16;) (type 59)))
      (type (;60;) (func (param "self" 7) (param "old-path-flags" 57) (param "old-path" string) (param "new-descriptor" 7) (param "new-path" string) (result 23)))
      (import "import-method-descriptor-link-at" (func (;17;) (type 60)))
      (type (;61;) (flags "create" "directory" "exclusive" "truncate"))
      (import "import-type-open-flags" (type (;62;) (eq 61)))
      (type (;63;) (flags "readable" "writable" "executable"))
      (import "import-type-modes" (type (;64;) (eq 63)))
      (type (;65;) (own 5))
      (type (;66;) (result 65 (error 13)))
      (type (;67;) (func (param "self" 7) (param "path-flags" 57) (param "path" string) (param "open-flags" 62) (param "flags" 27) (param "modes" 64) (result 66)))
      (import "import-method-descriptor-open-at" (func (;18;) (type 67)))
      (type (;68;) (result string (error 13)))
      (type (;69;) (func (param "self" 7) (param "path" string) (result 68)))
      (import "import-method-descriptor-readlink-at" (func (;19;) (type 69)))
      (import "import-method-descriptor-remove-directory-at" (func (;20;) (type 48)))
      (type (;70;) (func (param "self" 7) (param "old-path" string) (param "new-descriptor" 7) (param "new-path" string) (result 23)))
      (import "import-method-descriptor-rename-at" (func (;21;) (type 70)))
      (type (;71;) (func (param "self" 7) (param "old-path" string) (param "new-path" string) (result 23)))
      (import "import-method-descriptor-symlink-at" (func (;22;) (type 71)))
      (type (;72;) (variant (case "access" 64) (case "exists")))
      (import "import-type-access-type" (type (;73;) (eq 72)))
      (type (;74;) (func (param "self" 7) (param "path-flags" 57) (param "path" string) (param "type" 73) (result 23)))
      (import "import-method-descriptor-access-at" (func (;23;) (type 74)))
      (import "import-method-descriptor-unlink-file-at" (func (;24;) (type 48)))
      (type (;75;) (func (param "self" 7) (param "path-flags" 57) (param "path" string) (param "modes" 64) (result 23)))
      (import "import-method-descriptor-change-file-permissions-at" (func (;25;) (type 75)))
      (import "import-method-descriptor-change-directory-permissions-at" (func (;26;) (type 75)))
      (import "import-method-descriptor-lock-shared" (func (;27;) (type 25)))
      (import "import-method-descriptor-lock-exclusive" (func (;28;) (type 25)))
      (import "import-method-descriptor-try-lock-shared" (func (;29;) (type 25)))
      (import "import-method-descriptor-try-lock-exclusive" (func (;30;) (type 25)))
      (import "import-method-descriptor-unlock" (func (;31;) (type 25)))
      (type (;76;) (func (param "self" 7) (param "other" 7) (result bool)))
      (import "import-method-descriptor-is-same-object" (func (;32;) (type 76)))
      (type (;77;) (record (field "lower" u64) (field "upper" u64)))
      (import "import-type-metadata-hash-value" (type (;78;) (eq 77)))
      (type (;79;) (result 78 (error 13)))
      (type (;80;) (func (param "self" 7) (result 79)))
      (import "import-method-descriptor-metadata-hash" (func (;33;) (type 80)))
      (type (;81;) (func (param "self" 7) (param "path-flags" 57) (param "path" string) (result 79)))
      (import "import-method-descriptor-metadata-hash-at" (func (;34;) (type 81)))
      (type (;82;) (borrow 6))
      (type (;83;) (record (field "type" 31) (field "name" string)))
      (import "import-type-directory-entry" (type (;84;) (eq 83)))
      (type (;85;) (option 84))
      (type (;86;) (result 85 (error 13)))
      (type (;87;) (func (param "self" 82) (result 86)))
      (import "import-method-directory-entry-stream-read-directory-entry" (func (;35;) (type 87)))
      (import "import-type-error0" (type (;88;) (eq 2)))
      (type (;89;) (borrow 88))
      (type (;90;) (option 13))
      (type (;91;) (func (param "err" 89) (result 90)))
      (import "import-func-filesystem-error-code" (func (;36;) (type 91)))
      (export (;92;) "input-stream" (type 0))
      (export (;93;) "output-stream" (type 1))
      (export (;94;) "error" (type 2))
      (export (;95;) "datetime" (type 4))
      (type (;96;) u64)
      (export (;97;) "filesize" (type 96))
      (type (;98;) (enum "unknown" "block-device" "character-device" "directory" "fifo" "symbolic-link" "regular-file" "socket"))
      (export (;99;) "descriptor-type" (type 98))
      (type (;100;) (flags "read" "write" "file-integrity-sync" "data-integrity-sync" "requested-write-sync" "mutate-directory"))
      (export (;101;) "descriptor-flags" (type 100))
      (type (;102;) (flags "symlink-follow"))
      (export (;103;) "path-flags" (type 102))
      (type (;104;) (flags "create" "directory" "exclusive" "truncate"))
      (export (;105;) "open-flags" (type 104))
      (type (;106;) (flags "readable" "writable" "executable"))
      (export (;107;) "modes" (type 106))
      (type (;108;) (variant (case "access" 107) (case "exists")))
      (export (;109;) "access-type" (type 108))
      (type (;110;) u64)
      (export (;111;) "link-count" (type 110))
      (type (;112;) (option 95))
      (type (;113;) (record (field "type" 99) (field "link-count" 111) (field "size" 97) (field "data-access-timestamp" 112) (field "data-modification-timestamp" 112) (field "status-change-timestamp" 112)))
      (export (;114;) "descriptor-stat" (type 113))
      (type (;115;) (variant (case "no-change") (case "now") (case "timestamp" 95)))
      (export (;116;) "new-timestamp" (type 115))
      (type (;117;) (record (field "type" 99) (field "name" string)))
      (export (;118;) "directory-entry" (type 117))
      (type (;119;) (enum "access" "would-block" "already" "bad-descriptor" "busy" "deadlock" "quota" "exist" "file-too-large" "illegal-byte-sequence" "in-progress" "interrupted" "invalid" "io" "is-directory" "loop" "too-many-links" "message-size" "name-too-long" "no-device" "no-entry" "no-lock" "insufficient-memory" "insufficient-space" "not-directory" "not-empty" "not-recoverable" "unsupported" "no-tty" "no-such-device" "overflow" "not-permitted" "pipe" "read-only" "invalid-seek" "text-file-busy" "cross-device"))
      (export (;120;) "error-code" (type 119))
      (type (;121;) (enum "normal" "sequential" "random" "will-need" "dont-need" "no-reuse"))
      (export (;122;) "advice" (type 121))
      (type (;123;) (record (field "lower" u64) (field "upper" u64)))
      (export (;124;) "metadata-hash-value" (type 123))
      (export (;125;) "descriptor" (type 5))
      (export (;126;) "directory-entry-stream" (type 6))
      (type (;127;) (borrow 125))
      (type (;128;) (own 92))
      (type (;129;) (result 128 (error 120)))
      (type (;130;) (func (param "self" 127) (param "offset" 97) (result 129)))
      (export (;37;) "[method]descriptor.read-via-stream" (func 0) (func (type 130)))
      (type (;131;) (own 93))
      (type (;132;) (result 131 (error 120)))
      (type (;133;) (func (param "self" 127) (param "offset" 97) (result 132)))
      (export (;38;) "[method]descriptor.write-via-stream" (func 1) (func (type 133)))
      (type (;134;) (func (param "self" 127) (result 132)))
      (export (;39;) "[method]descriptor.append-via-stream" (func 2) (func (type 134)))
      (type (;135;) (result (error 120)))
      (type (;136;) (func (param "self" 127) (param "offset" 97) (param "length" 97) (param "advice" 122) (result 135)))
      (export (;40;) "[method]descriptor.advise" (func 3) (func (type 136)))
      (type (;137;) (func (param "self" 127) (result 135)))
      (export (;41;) "[method]descriptor.sync-data" (func 4) (func (type 137)))
      (type (;138;) (result 101 (error 120)))
      (type (;139;) (func (param "self" 127) (result 138)))
      (export (;42;) "[method]descriptor.get-flags" (func 5) (func (type 139)))
      (type (;140;) (result 99 (error 120)))
      (type (;141;) (func (param "self" 127) (result 140)))
      (export (;43;) "[method]descriptor.get-type" (func 6) (func (type 141)))
      (type (;142;) (func (param "self" 127) (param "size" 97) (result 135)))
      (export (;44;) "[method]descriptor.set-size" (func 7) (func (type 142)))
      (type (;143;) (func (param "self" 127) (param "data-access-timestamp" 116) (param "data-modification-timestamp" 116) (result 135)))
      (export (;45;) "[method]descriptor.set-times" (func 8) (func (type 143)))
      (type (;144;) (list u8))
      (type (;145;) (tuple 144 bool))
      (type (;146;) (result 145 (error 120)))
      (type (;147;) (func (param "self" 127) (param "length" 97) (param "offset" 97) (result 146)))
      (export (;46;) "[method]descriptor.read" (func 9) (func (type 147)))
      (type (;148;) (result 97 (error 120)))
      (type (;149;) (func (param "self" 127) (param "buffer" 144) (param "offset" 97) (result 148)))
      (export (;47;) "[method]descriptor.write" (func 10) (func (type 149)))
      (type (;150;) (own 126))
      (type (;151;) (result 150 (error 120)))
      (type (;152;) (func (param "self" 127) (result 151)))
      (export (;48;) "[method]descriptor.read-directory" (func 11) (func (type 152)))
      (export (;49;) "[method]descriptor.sync" (func 12) (func (type 137)))
      (type (;153;) (func (param "self" 127) (param "path" string) (result 135)))
      (export (;50;) "[method]descriptor.create-directory-at" (func 13) (func (type 153)))
      (type (;154;) (result 114 (error 120)))
      (type (;155;) (func (param "self" 127) (result 154)))
      (export (;51;) "[method]descriptor.stat" (func 14) (func (type 155)))
      (type (;156;) (func (param "self" 127) (param "path-flags" 103) (param "path" string) (result 154)))
      (export (;52;) "[method]descriptor.stat-at" (func 15) (func (type 156)))
      (type (;157;) (func (param "self" 127) (param "path-flags" 103) (param "path" string) (param "data-access-timestamp" 116) (param "data-modification-timestamp" 116) (result 135)))
      (export (;53;) "[method]descriptor.set-times-at" (func 16) (func (type 157)))
      (type (;158;) (func (param "self" 127) (param "old-path-flags" 103) (param "old-path" string) (param "new-descriptor" 127) (param "new-path" string) (result 135)))
      (export (;54;) "[method]descriptor.link-at" (func 17) (func (type 158)))
      (type (;159;) (own 125))
      (type (;160;) (result 159 (error 120)))
      (type (;161;) (func (param "self" 127) (param "path-flags" 103) (param "path" string) (param "open-flags" 105) (param "flags" 101) (param "modes" 107) (result 160)))
      (export (;55;) "[method]descriptor.open-at" (func 18) (func (type 161)))
      (type (;162;) (result string (error 120)))
      (type (;163;) (func (param "self" 127) (param "path" string) (result 162)))
      (export (;56;) "[method]descriptor.readlink-at" (func 19) (func (type 163)))
      (export (;57;) "[method]descriptor.remove-directory-at" (func 20) (func (type 153)))
      (type (;164;) (func (param "self" 127) (param "old-path" string) (param "new-descriptor" 127) (param "new-path" string) (result 135)))
      (export (;58;) "[method]descriptor.rename-at" (func 21) (func (type 164)))
      (type (;165;) (func (param "self" 127) (param "old-path" string) (param "new-path" string) (result 135)))
      (export (;59;) "[method]descriptor.symlink-at" (func 22) (func (type 165)))
      (type (;166;) (func (param "self" 127) (param "path-flags" 103) (param "path" string) (param "type" 109) (result 135)))
      (export (;60;) "[method]descriptor.access-at" (func 23) (func (type 166)))
      (export (;61;) "[method]descriptor.unlink-file-at" (func 24) (func (type 153)))
      (type (;167;) (func (param "self" 127) (param "path-flags" 103) (param "path" string) (param "modes" 107) (result 135)))
      (export (;62;) "[method]descriptor.change-file-permissions-at" (func 25) (func (type 167)))
      (export (;63;) "[method]descriptor.change-directory-permissions-at" (func 26) (func (type 167)))
      (export (;64;) "[method]descriptor.lock-shared" (func 27) (func (type 137)))
      (export (;65;) "[method]descriptor.lock-exclusive" (func 28) (func (type 137)))
      (export (;66;) "[method]descriptor.try-lock-shared" (func 29) (func (type 137)))
      (export (;67;) "[method]descriptor.try-lock-exclusive" (func 30) (func (type 137)))
      (export (;68;) "[method]descriptor.unlock" (func 31) (func (type 137)))
      (type (;168;) (func (param "self" 127) (param "other" 127) (result bool)))
      (export (;69;) "[method]descriptor.is-same-object" (func 32) (func (type 168)))
      (type (;169;) (result 124 (error 120)))
      (type (;170;) (func (param "self" 127) (result 169)))
      (export (;70;) "[method]descriptor.metadata-hash" (func 33) (func (type 170)))
      (type (;171;) (func (param "self" 127) (param "path-flags" 103) (param "path" string) (result 169)))
      (export (;71;) "[method]descriptor.metadata-hash-at" (func 34) (func (type 171)))
      (type (;172;) (borrow 126))
      (type (;173;) (option 118))
      (type (;174;) (result 173 (error 120)))
      (type (;175;) (func (param "self" 172) (result 174)))
      (export (;72;) "[method]directory-entry-stream.read-directory-entry" (func 35) (func (type 175)))
      (type (;176;) (borrow 94))
      (type (;177;) (option 120))
      (type (;178;) (func (param "err" 176) (result 177)))
      (export (;73;) "filesystem-error-code" (func 36) (func (type 178)))
    )
    (instance (;56;) (instantiate 28
        (with "import-method-descriptor-read-via-stream" (func 121))
        (with "import-method-descriptor-write-via-stream" (func 122))
        (with "import-method-descriptor-append-via-stream" (func 123))
        (with "import-method-descriptor-advise" (func 124))
        (with "import-method-descriptor-sync-data" (func 125))
        (with "import-method-descriptor-get-flags" (func 126))
        (with "import-method-descriptor-get-type" (func 127))
        (with "import-method-descriptor-set-size" (func 128))
        (with "import-method-descriptor-set-times" (func 129))
        (with "import-method-descriptor-read" (func 130))
        (with "import-method-descriptor-write" (func 131))
        (with "import-method-descriptor-read-directory" (func 132))
        (with "import-method-descriptor-sync" (func 133))
        (with "import-method-descriptor-create-directory-at" (func 134))
        (with "import-method-descriptor-stat" (func 135))
        (with "import-method-descriptor-stat-at" (func 136))
        (with "import-method-descriptor-set-times-at" (func 137))
        (with "import-method-descriptor-link-at" (func 138))
        (with "import-method-descriptor-open-at" (func 139))
        (with "import-method-descriptor-readlink-at" (func 140))
        (with "import-method-descriptor-remove-directory-at" (func 141))
        (with "import-method-descriptor-rename-at" (func 142))
        (with "import-method-descriptor-symlink-at" (func 143))
        (with "import-method-descriptor-access-at" (func 144))
        (with "import-method-descriptor-unlink-file-at" (func 145))
        (with "import-method-descriptor-change-file-permissions-at" (func 146))
        (with "import-method-descriptor-change-directory-permissions-at" (func 147))
        (with "import-method-descriptor-lock-shared" (func 148))
        (with "import-method-descriptor-lock-exclusive" (func 149))
        (with "import-method-descriptor-try-lock-shared" (func 150))
        (with "import-method-descriptor-try-lock-exclusive" (func 151))
        (with "import-method-descriptor-unlock" (func 152))
        (with "import-method-descriptor-is-same-object" (func 153))
        (with "import-method-descriptor-metadata-hash" (func 154))
        (with "import-method-descriptor-metadata-hash-at" (func 155))
        (with "import-method-directory-entry-stream-read-directory-entry" (func 156))
        (with "import-func-filesystem-error-code" (func 157))
        (with "import-type-input-stream" (type 100))
        (with "import-type-output-stream" (type 102))
        (with "import-type-error" (type 332))
        (with "import-type-datetime" (type 72))
        (with "import-type-descriptor" (type 20))
        (with "import-type-directory-entry-stream" (type 21))
        (with "import-type-filesize" (type 269))
        (with "import-type-input-stream0" (type 100))
        (with "import-type-error-code" (type 271))
        (with "import-type-output-stream0" (type 102))
        (with "import-type-advice" (type 278))
        (with "import-type-descriptor-flags" (type 282))
        (with "import-type-descriptor-type" (type 285))
        (with "import-type-datetime0" (type 72))
        (with "import-type-new-timestamp" (type 289))
        (with "import-type-link-count" (type 301))
        (with "import-type-descriptor-stat" (type 303))
        (with "import-type-path-flags" (type 306))
        (with "import-type-open-flags" (type 310))
        (with "import-type-modes" (type 311))
        (with "import-type-access-type" (type 319))
        (with "import-type-metadata-hash-value" (type 323))
        (with "import-type-directory-entry" (type 328))
        (with "import-type-error0" (type 332))
      )
    )
    (export (;57;) "wasi:filesystem/types@0.2.0-rc-2023-10-18" (instance 56))
    (alias export 57 "descriptor" (type (;336;)))
    (type (;337;) (own 336))
    (type (;338;) (tuple 337 string))
    (type (;339;) (list 338))
    (type (;340;) (func (result 339)))
    (alias core export 6 "wasi:filesystem/preopens@0.2.0-rc-2023-10-18#get-directories" (core func (;236;)))
    (alias core export 6 "cabi_post_wasi:filesystem/preopens@0.2.0-rc-2023-10-18#get-directories" (core func (;237;)))
    (func (;158;) (type 340) (canon lift (core func 236) (memory 0) string-encoding=utf8 (post-return 237)))
    (component (;29;)
      (import "import-type-descriptor" (type (;0;) (sub resource)))
      (import "import-type-descriptor0" (type (;1;) (eq 0)))
      (type (;2;) (own 1))
      (type (;3;) (tuple 2 string))
      (type (;4;) (list 3))
      (type (;5;) (func (result 4)))
      (import "import-func-get-directories" (func (;0;) (type 5)))
      (export (;6;) "descriptor" (type 0))
      (type (;7;) (own 6))
      (type (;8;) (tuple 7 string))
      (type (;9;) (list 8))
      (type (;10;) (func (result 9)))
      (export (;1;) "get-directories" (func 0) (func (type 10)))
    )
    (instance (;58;) (instantiate 29
        (with "import-func-get-directories" (func 158))
        (with "import-type-descriptor" (type 336))
        (with "import-type-descriptor0" (type 336))
      )
    )
    (export (;59;) "wasi:filesystem/preopens@0.2.0-rc-2023-10-18" (instance 58))
    (@producers
      (processed-by "wit-component" "0.18.0")
    )
  )
  (instance (;0;) (instantiate 3))
  (alias export 0 "wasi:io/streams@0.2.0-rc-2023-10-18" (instance (;1;)))
  (alias export 0 "wasi:filesystem/types@0.2.0-rc-2023-10-18" (instance (;2;)))
  (alias export 0 "wasi:filesystem/preopens@0.2.0-rc-2023-10-18" (instance (;3;)))
  (alias export 0 "wasi:sockets/tcp@0.2.0-rc-2023-10-18" (instance (;4;)))
  (alias export 0 "wasi:cli/environment@0.2.0-rc-2023-10-18" (instance (;5;)))
  (alias export 0 "wasi:cli/exit@0.2.0-rc-2023-10-18" (instance (;6;)))
  (alias export 0 "wasi:cli/stdin@0.2.0-rc-2023-10-18" (instance (;7;)))
  (alias export 0 "wasi:cli/stdout@0.2.0-rc-2023-10-18" (instance (;8;)))
  (alias export 0 "wasi:cli/stderr@0.2.0-rc-2023-10-18" (instance (;9;)))
  (alias export 0 "wasi:cli/terminal-input@0.2.0-rc-2023-10-18" (instance (;10;)))
  (alias export 0 "wasi:cli/terminal-output@0.2.0-rc-2023-10-18" (instance (;11;)))
  (alias export 0 "wasi:cli/terminal-stdin@0.2.0-rc-2023-10-18" (instance (;12;)))
  (alias export 0 "wasi:cli/terminal-stdout@0.2.0-rc-2023-10-18" (instance (;13;)))
  (alias export 0 "wasi:cli/terminal-stderr@0.2.0-rc-2023-10-18" (instance (;14;)))
  (instance (;15;) (instantiate 2
      (with "wasi:io/streams@0.2.0-rc-2023-10-18" (instance 1))
      (with "wasi:filesystem/types@0.2.0-rc-2023-10-18" (instance 2))
      (with "wasi:filesystem/preopens@0.2.0-rc-2023-10-18" (instance 3))
      (with "wasi:sockets/tcp@0.2.0-rc-2023-10-18" (instance 4))
      (with "wasi:cli/environment@0.2.0-rc-2023-10-18" (instance 5))
      (with "wasi:cli/exit@0.2.0-rc-2023-10-18" (instance 6))
      (with "wasi:cli/stdin@0.2.0-rc-2023-10-18" (instance 7))
      (with "wasi:cli/stdout@0.2.0-rc-2023-10-18" (instance 8))
      (with "wasi:cli/stderr@0.2.0-rc-2023-10-18" (instance 9))
      (with "wasi:cli/terminal-input@0.2.0-rc-2023-10-18" (instance 10))
      (with "wasi:cli/terminal-output@0.2.0-rc-2023-10-18" (instance 11))
      (with "wasi:cli/terminal-stdin@0.2.0-rc-2023-10-18" (instance 12))
      (with "wasi:cli/terminal-stdout@0.2.0-rc-2023-10-18" (instance 13))
      (with "wasi:cli/terminal-stderr@0.2.0-rc-2023-10-18" (instance 14))
      (with "unlocked-dep=<wasi:hello>" (component 0))
      (with "unlocked-dep=<wasi:goodbye>" (component 1))
    )
  )
  (alias export 15 "salutation" (instance (;16;)))
  (export (;17;) "salutation" (instance 16))
)