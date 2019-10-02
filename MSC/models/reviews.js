module.exports = function(sequelize, DataTypes){
    var review = sequelize.define('review_table', {
        review_id: {
            type: DataTypes.STRING(15),
            primaryKey: true,
            allowNull: false
        },
        restaurant_id: {
            type: DataTypes.STRING(10),
            allowNull: false
        },
        writer_id: {
            type: DataTypes.STRING(45),
            allowNull: false
        },
        review_contents: {
            type: DataTypes.STRING(10000),
            allowNull: false
        },
        review_score: {
            type: DataTypes.STRING(10),
            allowNull: false
        }
    },{
        timestamps: false, // createdat 등등이 생김 false해주자
        freezeTableName: true,
        tableName: "review_table"
    });

    return review;
};