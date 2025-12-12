/// Módulo: Badge NFT - ¡Tu primer NFT de verdad!
/// Objetivo: Crear un badge (insignia) NFT con Display personalizado
module badge_nft::badge_nft {
    // ===== Imports =====
    use sui::display;
    use std::string::{Self, String};
    use sui::package::{Self, Publisher};

    // ===== Structs =====

    /// One-Time Witness (Testigo Único)
    /// Este es nuestro "sello especial" que prueba que somos los creadores
    /// Solo puede ser usado UNA vez, en la función init
    public struct BADGE_NFT has drop {}

    /// La estructura de nuestro Badge NFT
    /// Representa una insignia digital en la blockchain
    public struct BadgeNFT has key, store {
        id: UID,
        name: String,
        description: String,
        url: String,
    }

    // ===== Función de Inicialización =====

    /// Esta función se ejecuta AUTOMÁTICAMENTE cuando publicamos el contrato
    /// Crea el Publisher (certificado de autoría)
    fun init(otw: BADGE_NFT, ctx: &mut TxContext) {
        // TODO: Usa package::claim() para reclamar la autoría
        // let publisher = package::claim(???, ???);

        // TODO: Transfiere el publisher para quien está publicando
        // Pista: usa transfer::public_transfer()
        // transfer::public_transfer(???, tx_context::sender(???));
    }

    // ===== Entry Functions =====

    /// Crea (mintea) un nuevo Badge NFT
    /// Esta es la función que los usuarios van a llamar para crear badges
    public entry fun mint(
        name: vector<u8>,
        description: vector<u8>,
        url: vector<u8>,
        ctx: &mut TxContext
    ) {
        // TODO: Crea el objeto BadgeNFT
        // Pista: usa object::new(ctx) para crear el UID
        // Pista: usa string::utf8() para convertir bytes en String

        // let badge = BadgeNFT {
        //     id: ???,
        //     name: ???,
        //     description: ???,
        //     url: ???,
        // };

        // TODO: Transfiere el badge para quien llamó la función
        // transfer::public_transfer(???, ???);
    }

    /// Crea el Display - la "vitrina" del NFT
    /// Define cómo el badge va a aparecer en las billeteras
    public entry fun create_display(
        publisher: &Publisher,
        ctx: &mut TxContext
    ) {
        // TODO: Crea el display usando display::new_with_fields
        // Primer vector: nombres de los campos que van a aparecer
        // Segundo vector: de dónde viene cada información (usando {campo})

        // let mut display = display::new_with_fields<BadgeNFT>(
        //     publisher,
        //     vector[
        //         string::utf8(b"name"),
        //         // TODO: Añade "description"
        //         // TODO: Añade "image_url"
        //     ],
        //     vector[
        //         string::utf8(b"{name}"),
        //         // TODO: Añade "{description}"
        //         // TODO: Añade "{url}"
        //     ],
        //     ctx
        // );

        // TODO: Actualiza la versión del display
        // display::update_version(&mut ???);

        // TODO: Transfiere el display para quien llamó
        // transfer::public_transfer(???, ???);
    }
}
