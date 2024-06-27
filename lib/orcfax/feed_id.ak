use aiken/bytearray

pub fn starts_with(actual_id: ByteArray, expected_prefix: ByteArray) {
  ( actual_id |> bytearray.drop(expected_prefix |> bytearray.length) ) == expected_prefix
}
