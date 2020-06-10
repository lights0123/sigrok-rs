#!/usr/bin/env bash

read -r -d '' PREFIX <<"EOF"
#![allow(non_camel_case_types, non_snake_case, non_upper_case_globals, clippy::redundant_static_lifetimes)]

pub use glib_sys::{GSList, GHashTable, GString, GArray, GVariant};
EOF

bindgen wrapper.h -o src/lib.rs \
--raw-line "$PREFIX" \
--bitfield-enum '^sr_mqflag$' \
--rustified-enum sr_packettype \
--rustified-enum sr_configkey \
--rustified-enum sr_error_code \
--rustified-enum sr_loglevel \
--rustified-enum sr_datatype \
--rustified-enum sr_mq \
--rustified-enum sr_unit \
--rustified-enum sr_trigger_matches \
--rustified-enum sr_channeltype \
--rustified-enum sr_configcap \
--rustified-enum sr_dev_inst_status \
--rustified-enum sr_dev_inst_type \
--rustified-enum sr_keytype \
--rustified-enum sr_output_flag \
--rustified-enum sr_resource_type \
--blacklist-item GSList \
--blacklist-item GHashTable \
--blacklist-item GString \
--blacklist-item GArray \
--blacklist-item GVariant \
--blacklist-item timespec \
--blacklist-item timezone \
--blacklist-item fd_set \
--blacklist-item imaxdiv_t \
--blacklist-item itimerval \
--blacklist-item stderr \
--blacklist-item stdout \
--blacklist-item stdin \
--blacklist-item sys_errlist \
--blacklist-item sys_nerr \
--blacklist-function remove \
--blacklist-function rename \
--blacklist-function renameat \
--blacklist-function tmpfile \
--blacklist-function tmpnam \
--blacklist-function tmpnam_r \
--blacklist-function tempnam \
--blacklist-function fclose \
--blacklist-function fflush \
--blacklist-function fflush_unlocked \
--blacklist-function fopen \
--blacklist-function freopen \
--blacklist-function fdopen \
--blacklist-function fmemopen \
--blacklist-function open_memstream \
--blacklist-function setbuf \
--blacklist-function setvbuf \
--blacklist-function setbuffer \
--blacklist-function setlinebuf \
--blacklist-function fprintf \
--blacklist-function printf \
--blacklist-function sprintf \
--blacklist-function vfprintf \
--blacklist-function vprintf \
--blacklist-function vsprintf \
--blacklist-function snprintf \
--blacklist-function vsnprintf \
--blacklist-function vdprintf \
--blacklist-function dprintf \
--blacklist-function fscanf \
--blacklist-function scanf \
--blacklist-function sscanf \
--blacklist-function vfscanf \
--blacklist-function vscanf \
--blacklist-function vsscanf \
--blacklist-function fgetc \
--blacklist-function getc \
--blacklist-function getchar \
--blacklist-function getc_unlocked \
--blacklist-function getchar_unlocked \
--blacklist-function fgetc_unlocked \
--blacklist-function fputc \
--blacklist-function putc \
--blacklist-function putchar \
--blacklist-function fputc_unlocked \
--blacklist-function putc_unlocked \
--blacklist-function putchar_unlocked \
--blacklist-function getw \
--blacklist-function putw \
--blacklist-function fgets \
--blacklist-function __getdelim \
--blacklist-function getdelim \
--blacklist-function getline \
--blacklist-function fputs \
--blacklist-function puts \
--blacklist-function ungetc \
--blacklist-function fread \
--blacklist-function fwrite \
--blacklist-function fread_unlocked \
--blacklist-function fwrite_unlocked \
--blacklist-function fseek \
--blacklist-function ftell \
--blacklist-function rewind \
--blacklist-function fseeko \
--blacklist-function ftello \
--blacklist-function fgetpos \
--blacklist-function fsetpos \
--blacklist-function clearerr \
--blacklist-function feof \
--blacklist-function ferror \
--blacklist-function clearerr_unlocked \
--blacklist-function feof_unlocked \
--blacklist-function ferror_unlocked \
--blacklist-function perror \
--blacklist-function fileno \
--blacklist-function fileno_unlocked \
--blacklist-function popen \
--blacklist-function pclose \
--blacklist-function ctermid \
--blacklist-function flockfile \
--blacklist-function ftrylockfile \
--blacklist-function funlockfile \
--blacklist-function __uflow \
--blacklist-function __overflow \
--blacklist-function select \
--blacklist-function pselect \
--blacklist-function gettimeofday \
--blacklist-function settimeofday \
--blacklist-function adjtime \
--blacklist-function futimes \
--blacklist-function getitimer \
--blacklist-function setitimer \
--blacklist-function imaxabs \
--blacklist-function imaxdiv \
--blacklist-function lutimes \
--blacklist-function strtoimax \
--blacklist-function strtoumax \
--blacklist-function utimes \
--blacklist-function wcstoimax \
--blacklist-function wcstoumax \
-- \
-I .
