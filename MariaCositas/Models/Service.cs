using System;
using System.Collections.Generic;

namespace MariaCositas.Models;

public partial class Service
{
    public int IdService { get; set; }

    public int Count { get; set; }

    public int ServiceType { get; set; }

    public int Value { get; set; }

    public DateTime DateCreation { get; set; }

    public int Payment { get; set; }
}
