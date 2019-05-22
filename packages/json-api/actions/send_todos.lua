event = ["todos_request_received"]
priority = 1
input_parameters = ["request"]

local url = "http://jsonplaceholder.typicode.com/todos/"
local todos_response = send_request(url)

local body = {
  lighttouch = "lighttouch",
  url = url,
  status = todos_response.status,
  count = #todos_response.body
}

local response = {
  headers = {
    ["content-type"] = "application/json",
  },
  body = json.from_table(body)
}

return response
