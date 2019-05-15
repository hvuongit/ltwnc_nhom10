namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Permistion")]
    public partial class Permistion
    {
        public int ID { get; set; }

        public int? Permission { get; set; }

        [StringLength(50)]
        public string Description { get; set; }

        public bool Status { get; set; }
    }
}
