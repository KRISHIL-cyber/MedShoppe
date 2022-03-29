namespace StoreManagement.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Medicine : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Medicines",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        CategoryName = c.String(),
                        BrandName = c.String(),
                        MedicineName = c.String(),
                        Type = c.Boolean(nullable: false),
                        Description = c.String(),
                        ExpDate = c.DateTime(nullable: false),
                        Stock = c.Int(nullable: false),
                        Price = c.Single(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Medicines");
        }
    }
}
