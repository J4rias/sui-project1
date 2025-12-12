/// Módulo: Hello Sui - Primer Smart Contract
/// ¡Este es tu primer contrato en Sui!
/// Objetivo: Crear un objeto simple que almacena un mensaje
module hello_sui::hello {
    // ===== Imports =====
    use std::string::String;

    // ===== Structs =====

    /// Representa un mensaje "Hello" en la blockchain
    /// - key: permite que sea un objeto en Sui
    /// - store: permite que sea transferido/almacenado
    public struct HelloMessage has key, store {
        id: UID,
        // TODO: Añade un campo llamado 'text' del tipo String
        // text: ???,
    }

    // ===== Entry Functions =====

    /// Crea un nuevo mensaje y transfiere para quien llamó la función
    ///
    /// Parámetros:
    /// - text: El mensaje que será almacenado
    /// - ctx: Contexto de la transacción (proporciona información como la dirección de quien llamó)
    public entry fun create_message(
        text: String,
        ctx: &mut TxContext
    ) {
        // TODO: Crea un nuevo objeto HelloMessage
        // Pista: usa object::new(ctx) para crear el UID

        // let message = HelloMessage {
        //     id: ???,
        //     text: ???,
        // };

        // TODO: Transfiere el objeto para quien llamó la función
        // Pista: usa transfer::transfer(objeto, direccion)
        // Pista: para obtener la dirección de quien llamó, usa tx_context::sender(ctx)

        // transfer::transfer(???, ???);
    }

    // ===== Funciones de Lectura (View Functions) =====

}
