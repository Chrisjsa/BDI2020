# Functionize
# 2.0

require "clipboard"

def backend
    header("backend")
    step("(queries)", "exports.#{$type} = ''")

    step("(controller) import query to controller", "#{$type},")

    step("(controller) add new controller", "exports.leerEventosPorUsuario = (req, res) => { const data = []; connection.query(%s, [data], (error, rows) => { if (error) { return res.status(400).send(error.message) } return res.json(rows) } ) }" % [$type, $type])

    step("(routes) import controller to route", "#{$fn},")

    if $html_request == "delete"
        step("(routes) add route", 
        "router.delete('#{$fn}/:id_#{$entity}', middleware, #{$fn})")
    else
        step("(routes) add route", 
        "router.#{$html_request}('/#{$fn}', middleware, #{$fn})")
    end

    end_point = "api/#{$plural_entity}/#{$fn}"

    step("(insomnia) test route", "http://localhost:5000/#{end_point}")
end

def frontend
    header("frontend")

    step("(types) add $type to types", "export const #{$type} = '#{$type}'")

    step("(actions) import $type to actions", "#{$type},")

    end_point = "api/#{$plural_entity}/#{$fn}"

    if $html_request == "get"
        step("(action) add action function", 
    "export const #{$fn} = (#{$entity}) => async dispatch => { setLoading()(dispatch); try { const res = await axios.get('#{end_point}'); dispatch({ $type: #{$type}, payload: res.data, }) } catch (error) { dispatch({ $type: ERROR_#{$entity.upcase}, payload: error.response.msg, }) } }" )

    elsif $html_request == "post"
        step("(action) add action function", 
    "export const #{$fn} = (#{$entity}) => async dispatch => { setLoading()(dispatch); try { const res = await axios.post('#{end_point}', #{$entity}, config); dispatch({ $type: #{$type}, payload: res.data, }) } catch (error) { dispatch({ $type: ERROR_#{$entity.upcase}, payload: error.response.msg, }) } }" )

    elsif $html_request == "put"
        step("(action) add action function", 
    "export const #{$fn} = (#{$entity}) => async dispatch => { setLoading()(dispatch); try { const res = await axios.put('#{end_point}', #{$entity}, config); dispatch({ $type: #{$type}, payload: res.data, }) } catch (error) { dispatch({ $type: ERROR_#{$entity.upcase}, payload: error.response.msg, }) } }" )

    elsif $html_request == "delete"
        step("(action) add action function", 
    "export const #{$fn} = (#{$entity}) => async dispatch => { setLoading()(dispatch); try { const res = await axios.delete(`#{end_point}/${id_#{$entity}}`); dispatch({ $type: #{$type} }) } catch (error) { dispatch({ $type: ERROR_#{$entity.upcase}, payload: error.response.msg, }) } }" )

    else 
        puts "Request #{$html_request} is not get, post, put or delete"
        exit
    end

    step("(reducer) import $type to reducer", "#{$type},")

    step("(reducer) add case", "case #{$type}: return { ...state, loading: false, #{$new_state} }")
end

def connect_redux
    header("redux")
    component = input("Component name: (Capitalized)")    
    step("(import) redux", "import { connect } from 'react-redux'")
    step("(connect) map actions to props", "const mapActionsToProps = state => {}\n\nconst mapStateToProps = state => ({})\n\nexport default connect(mapStateToProps, mapActionsToProps)(#{component})")
end

def connect_redux_form
    header("redux-form")
    puts "! must be connected to redux to work"
    component = input("Component name: (Capitalized)")
    form = input("form name: (camelCase)")
    step("(import) redux-form", "import { Field, reduxForm, getFormValues } from 'redux-form'")
    step("(change) change const for let in component definition", "let")
    step("(decorate) decorate component with redux-form", "#{component} = reduxForm({ form: '#{form}' })(#{component})")
    step("(mapping) add form values to state", "formValues: getFormValues('#{form}')(state)")
    step("(props) add formValues as props", "formValues, ")
end

def input(msg = ">> ")
  print msg + "\n> "
  $stdin.gets.chomp
end

def header(text)
    puts "\t\t" + "="*(text.length + 4)
    puts "\t\t" + "| #{text} |"
    puts "\t\t" + "="*(text.length + 4)
end

def step(instructions, to_clipboard)
  puts "-" * 50
  puts instructions
  puts
  puts to_clipboard
  Clipboard.copy to_clipboard
  STDIN.gets.chomp()
end

def form
    header("forms")
    out = ""
    while (name = input("Field name (or -q to quit): ")) != "-q"
        label = input("Label for #{name}: ")
        if name != "" and label != "" 
            out += "<Form.Group as={Col}><Form.Label>#{label}</Form.Label><Field className='form-control' name='#{name}' component='input' type='text'/></Form.Group>\n"
        else
            puts "! name is empty" if name == ""
            puts "! label is empty" if label == ""
            puts "! no new field"
        end
    end
    
    step("(ready) form fields are ready", out) unless out == ""
end

$option = ARGV.first

if $option == "-h"
    puts "modes are (default mode is full* mode)"
    puts "-h\t displays this xd"
    puts "-b\t backend only"
    puts "-f\t frontend only"
    puts "-r\t connect to redux"
    puts "-rf\t connect to redux form"
    puts "-fo\t create redux-form fields"
    puts
    puts "* full mode is front + back"
    exit
end

if $option == "-r"
    connect_redux
    exit
elsif $option == "-rf"
    connect_redux_form
    exit
elsif $option == "-fo"
    form
    exit
end

$fn = input("Function name: (camelCase)")
$type = input("Type: (dashed-case)")
$entity = input("Entity: (camelCase)")
$plural_entity = input("Plural: (camelCase)") unless $option == "-f"
$html_request = input("HTML Request (get/post/put/delete): ")
$new_state = input("New state (key: value): ") unless $option == "-b"

# filtering
$type = $type.gsub("-", "_").upcase
api_route = "/#{$fn}"

if $option == "-f"
    frontend
    exit
elsif $option == "-b"
    backend
    exit
elsif !$option
    backend
    frontend
    exit
end




