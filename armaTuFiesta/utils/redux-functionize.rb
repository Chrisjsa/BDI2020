require "clipboard"

def input(msg = ">> ")
  print msg
  gets.chomp
end

def step(instructions, to_clipboard)
  puts "-" * 80
  puts instructions
  puts
  puts to_clipboard
  Clipboard.copy to_clipboard
  STDIN.gets.chomp()
end

fc = input("action_fn: ")
args = input("arguments: ")
html_request = input("html_request: ")
api_route = input("api route: ")
type = input("type: ")
store = input("store: ")
state_change = input("state change (reducer case): ")
is_new = input("is new in component?: ")

type_format = type.gsub("-", "_").upcase

puts "REDUX"
step("add type to types", 'export const %s = "%s"' % [type_format, type_format])

step("add type to actions", type_format)

step("action function", 
"export const %s = (%s) => async dispatch => { setLoading()(dispatch); try { const res = await axios.%s(`api/%s`, %s, config); dispatch({ type: %s, payload: res.data, }) } catch (error) { dispatch({ type: ERROR_%s, payload: error.response.msg, }) } }" % [
    fc, args, html_request, api_route, args, type_format, store.upcase
])

step("add type to reducer", type_format)

step("reducer case", "case %s: return { ...state, loading: false, %s }" % [type_format, state_change])

puts "COMPONENT"
step("import redux", 'import { connect } from "react-redux"')

step("import action", is_new != "" ? 'import { %s } from "../../actions/%sActions"' % [fc, store] : "%s," % fc )

step("add to exports connect", is_new != "" ? "{ %s } " % fc : "%s," % fc )

step("add to props", "%s," % fc)




