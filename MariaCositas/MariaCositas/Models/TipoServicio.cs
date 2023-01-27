using System;
using System.Collections.Generic;

namespace MariaCositas.Models;

public partial class TipoServicio
{
    public int IdTipoServicio { get; set; }

    public string Prenda { get; set; } = null!;

    public string Arreglo { get; set; } = null!;

    public double Valor { get; set; }
}
