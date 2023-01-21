using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace MariaCositas.Models;

public partial class MariacositasContext : DbContext
{
    public MariacositasContext()
    {
    }

    public MariacositasContext(DbContextOptions<MariacositasContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Customer> Customers { get; set; }

    public virtual DbSet<Reporting> Reportings { get; set; }

    public virtual DbSet<Service> Services { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder) { }
//#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
//        => optionsBuilder.UseSqlServer("server=localhost; database=Mariacositas; TrustServerCertificate=True; integrated security=true;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Customer>(entity =>
        {
            entity.HasKey(e => e.IdCustomer).HasName("PK__customer__AD293258ABDC25EA");

            entity.ToTable("Customer");

            entity.Property(e => e.IdCustomer).HasColumnName("Id_Customer");
            entity.Property(e => e.CreationDate)
                .HasColumnType("datetime")
                .HasColumnName("Creation_Date");
            entity.Property(e => e.Name)
                .HasMaxLength(40)
                .IsUnicode(false);
            entity.Property(e => e.Phone)
                .HasMaxLength(40)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Reporting>(entity =>
        {
            entity.HasKey(e => e.IdReporting);

            entity.ToTable("Reporting");

            entity.Property(e => e.IdReporting)
                .ValueGeneratedNever()
                .HasColumnName("Id_Reporting");
            entity.Property(e => e.CreationDate)
                .HasColumnType("datetime")
                .HasColumnName("Creation_Date");
            entity.Property(e => e.IdCustomer).HasColumnName("Id_Customer");
        });

        modelBuilder.Entity<Service>(entity =>
        {
            entity.HasKey(e => e.IdService);

            entity.ToTable("Service");

            entity.Property(e => e.IdService)
                .ValueGeneratedNever()
                .HasColumnName("Id_Service");
            entity.Property(e => e.DateCreation)
                .HasColumnType("datetime")
                .HasColumnName("Date_Creation");
            entity.Property(e => e.ServiceType).HasColumnName("Service_Type");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
