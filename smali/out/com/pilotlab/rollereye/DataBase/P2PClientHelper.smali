.class public Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;
.super Ljava/lang/Object;
.source "P2PClientHelper.java"


# instance fields
.field private context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private localDBHelper:Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;

    sget-object v1, Lcom/pilotlab/rollereye/DataBase/DatabaseUtil;->localDB:Ljava/lang/String;

    sget v2, Lcom/pilotlab/rollereye/DataBase/DatabaseUtil;->localDBVersion:I

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3, v2}, Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->localDBHelper:Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;

    .line 22
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->localDBHelper:Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    iput-object p1, p0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public Close()V
    .registers 4

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->localDBHelper:Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;

    if-eqz v0, :cond_9

    .line 95
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->localDBHelper:Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;->close()V

    .line 98
    :cond_9
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1e

    .line 99
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_1e

    :catch_13
    move-exception v0

    .line 102
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "P2PHelper"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public InsertDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 32
    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/Controller/FilePathController;->initUsrPath(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 40
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const-string p1, "replace into p2p_client (\'sn\',\'uid\',\'username\',\'password\',\'p2pkey\') VALUES (\'%s\',\'%s\',\'%s\',\'%s\',\'%s\')"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 42
    monitor-enter p0

    .line 43
    :try_start_20
    iget-object p2, p0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_40

    .line 45
    :try_start_25
    iget-object p2, p0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_39

    .line 48
    :try_start_2f
    iget-object p1, p0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 50
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->Close()V

    .line 51
    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    .line 48
    iget-object p2, p0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_40
    move-exception p1

    .line 51
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_40

    throw p1
.end method

.method public getDevices()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    monitor-enter p0

    :try_start_6
    const-string v1, "sn"

    const-string v2, "uid"

    const-string v3, "username"

    const-string v4, "password"

    const-string v5, "p2pkey"

    .line 62
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    .line 64
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v11, "uid = ?"

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v4, p0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultUser(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_42

    .line 68
    new-instance v3, Lcom/pilotlab/rollereye/DataBase/UserHelper;

    iget-object v4, p0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/pilotlab/rollereye/DataBase/UserHelper;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultUser(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "username"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/pilotlab/rollereye/DataBase/UserHelper;->getDevicesItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    :cond_42
    move-object v12, v3

    const/4 v13, 0x0

    move v14, v13

    .line 70
    :goto_45
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_8e

    .line 71
    iget-object v3, p0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "p2p_client"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v7, v13

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    move-object v6, v11

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 73
    :goto_63
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 74
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v5, v13

    .line 75
    :goto_6f
    array-length v6, v1

    if-ge v5, v6, :cond_84

    .line 76
    aget-object v6, v1, v5

    aget-object v7, v1, v5

    .line 77
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 76
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6f

    .line 79
    :cond_84
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 81
    :cond_88
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_45

    .line 83
    :cond_8e
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->Close()V

    .line 84
    monitor-exit p0

    return-object v0

    :catchall_93
    move-exception v0

    monitor-exit p0
    :try_end_95
    .catchall {:try_start_6 .. :try_end_95} :catchall_93

    throw v0
.end method
