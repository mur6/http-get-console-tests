use reqwest::Error;
use serde::Deserialize;

#[derive(Deserialize)]
struct Rates {
    rates: std::collections::HashMap<String, f64>,
}

fn get_exchange_rate() -> Result<f64, Error> {
    let url = "https://api.exchangerate-api.com/v4/latest/JPY";
    let body = reqwest::get("https://www.rust-lang.org").await?
    .text().await?;
    Ok(resp.rates["USD"])
}

fn main() {
    
}
