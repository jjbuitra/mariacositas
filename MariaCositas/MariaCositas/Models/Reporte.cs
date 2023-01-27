using System;
using System.Collections.Generic;

namespace MariaCositas.Models;

public partial class Reporte
{
    public int IdCliente { get; set; }

    public string Nombre { get; set; } = null!;

    public string? Telefono { get; set; }

    public string Estatus { get; set; } = null!;

    public string Genero { get; set; } = null!;

    public int? IdServicio { get; set; }

    public int? Cantidad { get; set; }

    public string? Prenda { get; set; }

    public double? Valor { get; set; }

    public double? Pagado { get; set; }
}
