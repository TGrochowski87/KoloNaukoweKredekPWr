﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TomaszGrochowskiZadanieDomowe4.Models.Entities
{
    /// <summary>
    /// Model of PopulationStatus entity
    /// </summary>
    public class PopulationStatus
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
    }
}
