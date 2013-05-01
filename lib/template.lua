template = {}

template.init = function()
	print( 'HTTP/1.0 200 OK\r\nContent-Type: text/html\r\n\r\n' )
end

template.set = function( file )
	local f = io.open( file, 'r' )
	local c = f:read('*a')
	print( c )
end
