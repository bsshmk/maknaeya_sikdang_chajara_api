module.exports = function(sequelize, DataTypes){
    var restaurant = sequelize.define('restaurant_table', {
        restaurant_id: {
            type: DataTypes.STRING(10),
            primaryKey: true,
            allowNull: false
        },
        restaurant_name: {
            type: DataTypes.STRING(40),
            allowNull: false
        },
        web_link: {
            type: DataTypes.STRING(100),
            allowNull: false
        },
        category: {
            type: DataTypes.STRING(100),
            allowNull: false
        },
        phone_number: {
            type: DataTypes.STRING(20),
            allowNull: false
        },
        rating: {
            type: DataTypes.STRING(10),
            allowNull: false
        },
        location: {
            type: DataTypes.STRING(100),
            allowNull: false
        },
        gps_N: {
            type: DataTypes.STRING(20),
            allowNull: false
        },
        gps_E: {
            type: DataTypes.STRING(20),
            allowNull: false
        },
        image_src: {
            type: DataTypes.STRING(100),
            allowNull: false
        },
        main_menu: {
            type: DataTypes.STRING(200),
            allowNull: false
        },
        main_menu_price: {
            type: DataTypes.STRING(400),
            allowNull: false
        },
        review_count_number: {
            type: DataTypes.STRING(20),
            allowNull: false
        },
        mean_price: {
            type: DataTypes.STRING(20),
            allowNull: false
        }
    },{
        timestamps: false,
        freezeTableName: true,
        tableName: "restaurant_table"
    });

    return restaurant;
};