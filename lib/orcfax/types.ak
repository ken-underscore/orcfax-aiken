/// Fs script
/// The FsDat is the datum containing orcfax statements
pub type FsDat<t> {
  statement: Statement<t>,
  context: Context,
}

/// For consumers
pub type Statement<t> {
  feed_id: ByteArray,
  created_at: Int,
  body: t,
}

/// For orcfax publisher only
pub type Context {
  collect_after: Int,
  collector: ByteArray,
}

// Note : 28 bytes
/// Fsp script
pub type PubKey =
  ByteArray

pub type FspDat =
  PubKey
