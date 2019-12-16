using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Demo_CodeFirst.Models
{
    [Table("Employees")]
    public class Employee
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { set; get; }

        public string Code { set; get; }

        public string Name { set; get; }

        public string BirthDay { set; get; }

        public string Gender { set; get; }

        public string Address { set; get; }

        public string Phone { set; get; }

        public string Email { set; get; }
    }
}