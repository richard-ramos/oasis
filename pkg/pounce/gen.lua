cflags{
	'-std=c11', '-Wall', '-Wextra', '-Wpedantic',
	'-D _GNU_SOURCE',
	'-I $builddir/pkg/libressl/include',
}

exe('pounce', {
	'bounce.c',
	'client.c',
	'config.c',
	'local.c',
	'ring.c',
	'server.c',
	'state.c',
	'$builddir/pkg/libressl/libtls.a.d',
})
file('bin/pounce', '755', '$outdir/pounce')
man{'pounce.1'}

exe('calico', {
	'dispatch.c',
})
file('bin/calico', '755', '$outdir/calico')
man{'calico.1'}

fetch 'git'
