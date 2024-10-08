# Get Balance

curl http://127.0.0.1:8899 -X POST -H "Content-Type: application/json" -d '
  {
    "jsonrpc": "2.0",
    "id": 1,
    "method": "getBalance",
    "params": [
      "HCgVLRhXm1YND6mxYePmyPjrF2LPsvkzj1Teu8LXZdYK",
      {
        "commitment": "finalized"
      }
    ]
  }
'

# Health Check request

# Although not a JSON RPC API, a GET /health at the RPC HTTP Endpoint provides a health-check mechanism for use by load balancers or other network infrastructure. This request will always return a HTTP 200 OK response with a body of "ok", "behind" or "unknown":

# ok: The node is within HEALTH_CHECK_SLOT_DISTANCE slots from the latest cluster confirmed slot
# behind { distance }: The node is behind distance slots from the latest cluster confirmed slot where distance {'>'} HEALTH_CHECK_SLOT_DISTANCE
# unknown: The node is unable to determine where it stands in relation to the cluster

curl http://127.0.0.1:8899/health
curl http://127.0.0.1:8899/health


# Get Account Info

curl http://127.0.0.1:8899 -X POST -H "Content-Type: application/json" -d '
  {
    "jsonrpc": "2.0",
    "id": 1,
    "method": "getAccountInfo",
    "params": [
      "HCgVLRhXm1YND6mxYePmyPjrF2LPsvkzj1Teu8LXZdYK",
      {
        "encoding": "base58"
      }
    ]
  }
'

# Returns identity and transaction information about a confirmed block in the ledger

curl http://127.0.0.1:8899 -X POST -H "Content-Type: application/json" -d '
  {
    "jsonrpc": "2.0","id":1,
    "method":"getBlock",
    "params": [
      3226,
      {
        "encoding": "json",
        "maxSupportedTransactionVersion":0,
        "transactionDetails":"full",
        "rewards":false
      }
    ]
  }
'