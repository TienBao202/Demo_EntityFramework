using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Demo_CodeFirst.Models
{
    public partial class CodeFirstDBContext : DbContext
    {
        public CodeFirstDBContext() : base("name=CodeFirstDBContext")
        {

        }

        public virtual DbSet<Employee> Employees { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }
    }
}