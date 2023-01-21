using System;
using System.Collections.Generic;

namespace MariaCositas.Models;

public partial class Reporting
{
    public int IdReporting { get; set; }

    public int IdCustomer { get; set; }

    public DateTime CreationDate { get; set; }
}
