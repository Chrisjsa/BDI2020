require "clipboard"

def step(instructions, to_clipboard)
  puts "-" * 80
  puts instructions
  puts
  puts to_clipboard
  Clipboard.copy to_clipboard
  STDIN.gets.chomp()
end

store = ARGV.first

store_caps = store.upcase

reducer_file = "%sReducer.js" % store
actions_file = "%sActions.js" % store
types_file = "%sTypes.js" % store

reducer_name = store + "Reducer"
types_name = store + "Types"
actions_name = store + "Actions"

File.open(actions_file, "w") do |f|     
  f.write("import { ERROR_%s, LOADING_%s } from './%sTypes'\n" % [store_caps, store_caps, store])
  f.write("import axios from 'axios'\n")
  f.write("import setAuthToken from '../../utils/setAuthToken'\n")
  f.write("\n")
  f.write("const config = { headers: { 'Content-Type': 'application/json' } }\n")
  f.write("\n")
  f.write("export const setLoading = () => dispatch => { return dispatch({ type: LOADING_%s, })}" % store_caps)
end

File.open(reducer_file, "w") do |f|
  f.write("import { ERROR_%s, LOADING_%s } from './%sTypes'\n" % [store_caps, store_caps, store])
  f.write("\n")
  f.write("const initialState = { loading: false, error: null, }\n")
  f.write("\n")
  f.write("export default (state = initialState, action) => { switch (action.type) {")
  f.write("case LOADING: return { ...state, loading: true, }\n")
  f.write("\n")
  f.write("case ERROR_%s: return { ...state, loading: false, error: action.payload, }\n" % store_caps)
  f.write("\n")
  f.write("default: return state\n }}")
end

File.open(types_file, "w") do |f|
  f.write("export const ERROR_%s = 'ERROR_%s'\n" % [store_caps, store_caps])
  f.write("export const LOADING_%s = 'LOADING_%s'\n" % [store_caps, store_caps])
end

reducer_name = "%sReducer" % store
step("import to rootReducer", "import %s from './%s/%s'" % [reducer_name, store, reducer_name])
step("add to combineReducers", "%ss: %s," % [store, reducer_name])