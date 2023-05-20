.class public Lcom/pilotlab/rollereye/DataBase/UserHelper;
.super Ljava/lang/Object;
.source "UserHelper.java"


# instance fields
.field private context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private localDBHelper:Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;

    sget-object v1, Lcom/pilotlab/rollereye/DataBase/DatabaseUtil;->localDB:Ljava/lang/String;

    sget v2, Lcom/pilotlab/rollereye/DataBase/DatabaseUtil;->localDBVersion:I

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3, v2}, Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->localDBHelper:Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;

    .line 18
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->localDBHelper:Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    iput-object p1, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public Close()V
    .registers 4

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->localDBHelper:Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;

    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->localDBHelper:Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;->close()V

    .line 115
    :cond_9
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1e

    .line 116
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_1e

    :catch_13
    move-exception v0

    .line 119
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "UerHelper"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public DeleteUser(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from device_user where uid like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and username like \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\';"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    monitor-enter p0

    .line 75
    :try_start_1f
    iget-object p2, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_3f

    .line 78
    :try_start_24
    iget-object p2, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_38

    .line 81
    :try_start_2e
    iget-object p1, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 83
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/DataBase/UserHelper;->Close()V

    .line 84
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    .line 81
    iget-object p2, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_3f
    move-exception p1

    .line 84
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_2e .. :try_end_41} :catchall_3f

    throw p1
.end method

.method public InsertUpdataUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x3

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "replace into device_user (\'uid\',\'username\',\'email\') VALUES (\'%s\',\'%s\',\'%s\')"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 54
    monitor-enter p0

    .line 55
    :try_start_13
    iget-object p2, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_33

    .line 57
    :try_start_18
    iget-object p2, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_2c

    .line 60
    :try_start_22
    iget-object p1, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 62
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/DataBase/UserHelper;->Close()V

    .line 63
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    .line 60
    iget-object p2, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_33
    move-exception p1

    .line 63
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public deleteUserDevice(Ljava/lang/String;)V
    .registers 4

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from device_user where username like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\';"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    monitor-enter p0

    .line 30
    :try_start_17
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_37

    .line 32
    :try_start_1c
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_30

    .line 35
    :try_start_26
    iget-object p1, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 37
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/DataBase/UserHelper;->Close()V

    .line 38
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    .line 35
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_37
    move-exception p1

    .line 38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public getDevicesItem(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "uid"

    .line 93
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    .line 94
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 95
    iget-object v3, p0, Lcom/pilotlab/rollereye/DataBase/UserHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "username like \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v4, "device_user"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 97
    :goto_33
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_48

    const/4 v2, 0x0

    .line 98
    aget-object v2, v1, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 101
    :cond_48
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/DataBase/UserHelper;->Close()V

    return-object v0
.end method
