/// Módulo: Hello Debug - ¡Tu primer código en Move! (VERSIÓN COMPLETA)
/// Objetivo: Ver tu primer "Hello World" funcionando
module hello_debug::pratica_sui {
    use std::debug::print;
    use std::string::utf8;

    fun pratica() {
        print(&utf8(b"Hello, Piaui!"));
    }

    #[test]
    fun teste() {
        pratica();
    }
}
