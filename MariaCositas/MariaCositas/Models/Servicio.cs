using System;
using System.Collections.Generic;

namespace MariaCositas.Models;

public partial class Servicio
{
    public int IdServicio { get; set; }

    public int Cantidad { get; set; }

    public int IdTipoServicio { get; set; }

    public DateTime FechaCreacion { get; set; }

    public double Pagado { get; set; }

    public int IdCliente { get; set; }
}
