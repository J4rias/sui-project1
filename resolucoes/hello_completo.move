
module hello_sui::hello {
    // ===== Imports =====
    use std::string::String;

    // ===== Structs =====
    public struct HelloMessage has key, store {
        id: UID,
        text: String,
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
        let message = HelloMessage {
            id: object::new(ctx),
            text: text,
        };

        // Transfiere el objeto para quien llamó la función
        transfer::transfer(message, tx_context::sender(ctx));
    }

}
