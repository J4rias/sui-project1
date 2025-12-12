/// Módulo: Hello Debug - ¡Tu primer código en Move!
/// Objetivo: Ver tu primer "Hello World" funcionando
module hello_debug::practica_sui {
    use std::debug::print;
    use std::string::utf8;

    // TODO: Crea una función llamada 'practica' que imprime "Hello, Medellín!"
    // Pista: usa print(&utf8(b"tu mensaje aquí"));

    // fun practica() {
    //     ???
    // }

    #[test]
    fun teste() {
        practica();
    }
}
