//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FurnitureProduction.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Shipments
    {
        public int IdShipment { get; set; }
        public int IdProduct { get; set; }
        public int IdCustomer { get; set; }
        public int Quantity { get; set; }
        public System.DateTime ShipmentDate { get; set; }
        public int IdEmployee { get; set; }
    
        public virtual Customers Customers { get; set; }
        public virtual Employees Employees { get; set; }
        public virtual Products Products { get; set; }
    }
}
