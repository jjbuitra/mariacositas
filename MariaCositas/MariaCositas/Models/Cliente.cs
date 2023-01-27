using System;
using System.Collections.Generic;

namespace MariaCositas.Models;

public partial class Cliente
{
    public int IdCliente { get; set; }

    public string Nombre { get; set; } = null!;

    public string? Telefono { get; set; }

    public DateTime FechaCreacion { get; set; }

    public string Estatus { get; set; } = null!;

    public string Genero { get; set; } = null!;
}
