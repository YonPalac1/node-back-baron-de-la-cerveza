module.exports = function(sequelize, dataTypes){
    let alias = "Category";
    let cols = {
        id: {
            type: dataTypes.INTEGER(11).UNSIGNED,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false 
        },
        category: {
            type: dataTypes.STRING(800),
            allowNull: false
        }
    }
    let config = {
        tableName: "categories",
        timestamps: false
    }

    const Category = sequelize.define(alias, cols, config)

    Category.associate = models => {
        Category.hasMany(models.Product, {
            as: "products",
            foreignKey: "category_id"
        })
    }

    return Category
}