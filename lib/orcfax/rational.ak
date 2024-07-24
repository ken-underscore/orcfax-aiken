use orcfax/types as t

/// Body for rational statements, including prices
pub type Rational {
  num: Int,
  denom: Int,
}

pub type RationalFsDat =
  t.FsDat<Rational>

pub fn get_body(dat: RationalFsDat) -> Rational {
  dat.statement.body
}

pub type RationalStatement =
  t.Statement<Rational>

pub fn get_statement(dat: RationalFsDat) -> RationalStatement {
  dat.statement
}

/// For the feed: "A->B", 
/// we can convert a value expressed in terms of a quantity of token A 
/// as a value expressed in terms of a quantity of token B.
///
/// Suppose we have a quantity `x` of token A 
/// that is equivalent to `a_to_b(x)` of token B. 
pub fn a_to_b(body: Rational, x: Int) -> Int {
  let Rational { num, denom } = body
  x * num / denom
}

/// For the feed: "A->B", 
/// we can convert a value expressed in terms of a quantity of token B 
/// as a value expressed in terms of a quantity of token A.
///
/// Suppose we have a quantity `x` of token B 
/// that is equivalent to `b_to_a(x)` of token A. 
pub fn b_to_a(body: Rational, x: Int) -> Int {
  let Rational { num, denom } = body
  x * denom / num
}
