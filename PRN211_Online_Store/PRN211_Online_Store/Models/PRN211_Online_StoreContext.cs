using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace PRN211_Online_Store.Models
{
    public partial class PRN211_Online_StoreContext : DbContext
    {
        public PRN211_Online_StoreContext()
        {
        }

        public PRN211_Online_StoreContext(DbContextOptions<PRN211_Online_StoreContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Category> Categories { get; set; } = null!;
        public virtual DbSet<Feature> Features { get; set; } = null!;
        public virtual DbSet<Feedback> Feedbacks { get; set; } = null!;
        public virtual DbSet<FeedbackAttachment> FeedbackAttachments { get; set; } = null!;
        public virtual DbSet<Product> Products { get; set; } = null!;
        public virtual DbSet<ProductAttachment> ProductAttachments { get; set; } = null!;
        public virtual DbSet<Role> Roles { get; set; } = null!;
        public virtual DbSet<User> Users { get; set; } = null!;
        public virtual DbSet<Variant> Variants { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var builder = new ConfigurationBuilder()
                              .SetBasePath(Directory.GetCurrentDirectory())
                              .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true);
            IConfigurationRoot configuration = builder.Build();
            optionsBuilder.UseSqlServer(configuration.GetConnectionString("MyCnn"));
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Category>(entity =>
            {
                entity.ToTable("Category");

                entity.Property(e => e.CategoryId).HasColumnName("categoryId");

                entity.Property(e => e.CategoryName)
                    .HasMaxLength(255)
                    .HasColumnName("categoryName");
            });

            modelBuilder.Entity<Feature>(entity =>
            {
                entity.ToTable("Feature");

                entity.Property(e => e.FeatureId).HasColumnName("featureId");

                entity.Property(e => e.FeatureName)
                    .HasMaxLength(255)
                    .HasColumnName("featureName");

                entity.Property(e => e.FeatureUrl)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("featureUrl");
            });

            modelBuilder.Entity<Feedback>(entity =>
            {
                entity.ToTable("Feedback");

                entity.Property(e => e.FeedbackId).HasColumnName("feedbackId");

                entity.Property(e => e.Comment)
                    .HasMaxLength(255)
                    .HasColumnName("comment");

                entity.Property(e => e.FeedbackTime)
                    .HasColumnType("datetime")
                    .HasColumnName("feedbackTime");

                entity.Property(e => e.ProductId).HasColumnName("productId");

                entity.Property(e => e.Rating).HasColumnName("rating");

                entity.Property(e => e.Username)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("username");

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.Feedbacks)
                    .HasForeignKey(d => d.ProductId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Feedback_Product");

                entity.HasOne(d => d.UsernameNavigation)
                    .WithMany(p => p.Feedbacks)
                    .HasForeignKey(d => d.Username)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Feedback_User");
            });

            modelBuilder.Entity<FeedbackAttachment>(entity =>
            {
                entity.HasKey(e => e.AttachmentId);

                entity.ToTable("FeedbackAttachment");

                entity.Property(e => e.AttachmentId).HasColumnName("attachmentId");

                entity.Property(e => e.Description)
                    .HasMaxLength(255)
                    .HasColumnName("description");

                entity.Property(e => e.FeedbackId).HasColumnName("feedbackId");

                entity.Property(e => e.FilePath)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("filePath");

                entity.Property(e => e.FileType)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("fileType");

                entity.HasOne(d => d.Feedback)
                    .WithMany(p => p.FeedbackAttachments)
                    .HasForeignKey(d => d.FeedbackId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_FeedbackAttachment_Feedback");
            });

            modelBuilder.Entity<Product>(entity =>
            {
                entity.ToTable("Product");

                entity.Property(e => e.ProductId).HasColumnName("productId");

                entity.Property(e => e.ProductDescription).HasColumnName("productDescription");

                entity.Property(e => e.ProductName)
                    .HasMaxLength(255)
                    .HasColumnName("productName");

                entity.Property(e => e.SoldUnit).HasColumnName("soldUnit");

                entity.Property(e => e.StockUnit).HasColumnName("stockUnit");

                entity.Property(e => e.UnitPrice).HasColumnName("unitPrice");

                entity.HasMany(d => d.Categories)
                    .WithMany(p => p.Products)
                    .UsingEntity<Dictionary<string, object>>(
                        "ProductCategory",
                        l => l.HasOne<Category>().WithMany().HasForeignKey("CategoryId").OnDelete(DeleteBehavior.ClientSetNull).HasConstraintName("FK_ProductCategory_Category"),
                        r => r.HasOne<Product>().WithMany().HasForeignKey("ProductId").OnDelete(DeleteBehavior.ClientSetNull).HasConstraintName("FK_ProductCategory_Product"),
                        j =>
                        {
                            j.HasKey("ProductId", "CategoryId");

                            j.ToTable("ProductCategory");

                            j.IndexerProperty<int>("ProductId").HasColumnName("productId");

                            j.IndexerProperty<int>("CategoryId").HasColumnName("categoryId");
                        });
            });

            modelBuilder.Entity<ProductAttachment>(entity =>
            {
                entity.HasKey(e => e.AttachmentId);

                entity.ToTable("ProductAttachment");

                entity.Property(e => e.AttachmentId).HasColumnName("attachmentId");

                entity.Property(e => e.Description)
                    .HasMaxLength(255)
                    .HasColumnName("description");

                entity.Property(e => e.FilePath)
                    .IsUnicode(false)
                    .HasColumnName("filePath");

                entity.Property(e => e.FileType)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("fileType");

                entity.Property(e => e.ProductId).HasColumnName("productId");

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.ProductAttachments)
                    .HasForeignKey(d => d.ProductId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ProductAttachment_Product");
            });

            modelBuilder.Entity<Role>(entity =>
            {
                entity.ToTable("Role");

                entity.Property(e => e.RoleId).HasColumnName("roleId");

                entity.Property(e => e.RoleName)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("roleName");

                entity.HasMany(d => d.Features)
                    .WithMany(p => p.Roles)
                    .UsingEntity<Dictionary<string, object>>(
                        "RoleFeature",
                        l => l.HasOne<Feature>().WithMany().HasForeignKey("FeatureId").OnDelete(DeleteBehavior.ClientSetNull).HasConstraintName("FK_RoleFeature_Feature"),
                        r => r.HasOne<Role>().WithMany().HasForeignKey("RoleId").OnDelete(DeleteBehavior.ClientSetNull).HasConstraintName("FK_RoleFeature_Role"),
                        j =>
                        {
                            j.HasKey("RoleId", "FeatureId");

                            j.ToTable("RoleFeature");

                            j.IndexerProperty<int>("RoleId").HasColumnName("roleId");

                            j.IndexerProperty<int>("FeatureId").HasColumnName("featureId");
                        });
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.HasKey(e => e.Username);

                entity.ToTable("User");

                entity.Property(e => e.Username)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("username");

                entity.Property(e => e.AvatarPath)
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("avatarPath");

                entity.Property(e => e.DisplayName)
                    .HasMaxLength(255)
                    .HasColumnName("displayName");

                entity.Property(e => e.Password)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("password");

                entity.HasMany(d => d.Roles)
                    .WithMany(p => p.Usernames)
                    .UsingEntity<Dictionary<string, object>>(
                        "UserRole",
                        l => l.HasOne<Role>().WithMany().HasForeignKey("RoleId").OnDelete(DeleteBehavior.ClientSetNull).HasConstraintName("FK_UserRole_Role"),
                        r => r.HasOne<User>().WithMany().HasForeignKey("Username").OnDelete(DeleteBehavior.ClientSetNull).HasConstraintName("FK_UserRole_User"),
                        j =>
                        {
                            j.HasKey("Username", "RoleId");

                            j.ToTable("UserRole");

                            j.IndexerProperty<string>("Username").HasMaxLength(50).IsUnicode(false).HasColumnName("username");

                            j.IndexerProperty<int>("RoleId").HasColumnName("roleId");
                        });
            });

            modelBuilder.Entity<Variant>(entity =>
            {
                entity.ToTable("Variant");

                entity.Property(e => e.VariantId).HasColumnName("variantId");

                entity.Property(e => e.ProductId).HasColumnName("productId");

                entity.Property(e => e.VariantDescription).HasColumnName("variantDescription");

                entity.Property(e => e.VariantName)
                    .HasMaxLength(255)
                    .HasColumnName("variantName");

                entity.Property(e => e.VariantPrice).HasColumnName("variantPrice");

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.Variants)
                    .HasForeignKey(d => d.ProductId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Variant_Product");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
