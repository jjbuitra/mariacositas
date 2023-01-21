using System;
using System.Collections.Generic;

namespace MariaCositas.Models;

public partial class Customer
{
    public int IdCustomer { get; set; }

    public string Name { get; set; } = null!;

    public string Phone { get; set; } = null!;

    public DateTime? CreationDate { get; set; }
}
