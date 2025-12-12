/// Módulo: Badge NFT - ¡Tu primer NFT de verdad! (VERSIÓN COMPLETA)
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
        let publisher = package::claim(otw, ctx);
        transfer::public_transfer(publisher, tx_context::sender(ctx));
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
        let badge = BadgeNFT {
            id: object::new(ctx),
            name: string::utf8(name),
            description: string::utf8(description),
            url: string::utf8(url),
        };

        transfer::public_transfer(badge, tx_context::sender(ctx));
    }

    /// Crea el Display - la "vitrina" del NFT
    /// Define cómo el badge va a aparecer en las billeteras
    public entry fun create_display(
        publisher: &Publisher,
        ctx: &mut TxContext
    ) {
        let mut display = display::new_with_fields<BadgeNFT>(
            publisher,
            vector[
                string::utf8(b"name"),
                string::utf8(b"description"),
                string::utf8(b"image_url")
            ],
            vector[
                string::utf8(b"{name}"),
                string::utf8(b"{description}"),
                string::utf8(b"{url}")
            ],
            ctx
        );

        display::update_version(&mut display);
        transfer::public_transfer(display, tx_context::sender(ctx));
    }
}
