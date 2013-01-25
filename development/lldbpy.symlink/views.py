import lldb
max_depth = 6

#filters = {'_view': 'UIView *', '_layer': 'CALayer *', '_viewFlags': 'struct'}
filters = {'_view': 'UIView *'}


def print_value(var, depth, prefix):
    """ print values and recurse """
    global max_depth
    local_depth = max_depth - depth
    pad = ' ' * local_depth
    name = var.GetName()
    typ = str(var.GetType()).split('\n')[0].split('{')[0].split(':')[0].strip()

    found = name in filters.keys()  # only visit filter items children
    if found:
        found = (filters.get(name) == typ)

    value = var.GetValue()
    if value is None or str(value) == '0x00000000':
        value = ''
    else:
        value = ' Val: %s' % value

    if var.GetNumChildren() == 0 and var.IsInScope():
        path = lldb.SBStream()
        var.GetExpressionPath(path)
        path = ' pathData: %s' % path.GetData()
    else:
        path = ''

    print '^' * local_depth, prefix, ' Adr:', var.GetAddress(), ' Name:', name, ' Type:', typ, value, path

    if var.GetNumChildren() > 0:
        if local_depth < 2 or found:
            print pad, var.GetNumChildren(), 'children, to depth', local_depth + 1
            counter = 0
            for subvar in var:
                subprefix = '%d/%d' % (counter, var.GetNumChildren())
                print_value(subvar, depth - 1, subprefix)
                counter += 1


def prect(debugger, command_line, result, dict):
    """ print rect dimensions """
    print "Rect dimensions"
    args = command_line.split()
    if len(args) > 0:
        var = lldb.frame.FindVariable(args[0])
        print var.GetName()


def printvh(debugger, command_line, result, dict):
    """ print view hierarchy """
    print 'View hierarchy:'
    global max_depth
    args = command_line.split()
    if len(args) > 0:
        var = lldb.frame.FindVariable(args[0])
        depth = max_depth
        if len(args) > 1:
            depth = int(args[1])
            max_depth = depth
        print_value(var, depth, 'ROOT')
    else:
        print 'pass a variable name and optional depth'
