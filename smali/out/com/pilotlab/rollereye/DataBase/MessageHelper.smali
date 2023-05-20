.class public Lcom/pilotlab/rollereye/DataBase/MessageHelper;
.super Ljava/lang/Object;
.source "MessageHelper.java"


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

    iput-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->localDBHelper:Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;

    .line 18
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->localDBHelper:Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    iput-object p1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public Close()V
    .registers 4

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->localDBHelper:Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;

    if-eqz v0, :cond_9

    .line 256
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->localDBHelper:Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/DataBase/DatabaseHelper;->close()V

    .line 258
    :cond_9
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1e

    .line 259
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_1e

    :catch_13
    move-exception v0

    .line 262
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MessageHelper"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public InsertReadMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select 1 from message_user where mid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_24

    return-void

    :cond_24
    const/16 v0, 0x8

    .line 89
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/JCType;->CheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultUser(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "username"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    invoke-static {p2}, Lcom/pilotlab/rollereye/Utils/JCType;->CheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    invoke-static {p3}, Lcom/pilotlab/rollereye/Utils/JCType;->CheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x4

    .line 90
    invoke-static {p4}, Lcom/pilotlab/rollereye/Utils/JCType;->CheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x5

    invoke-static {p5}, Lcom/pilotlab/rollereye/Utils/JCType;->CheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "insert into message_user (\'mid\',\'username\',\'title\',\'content\',\'date\',\'ext\',\'type\',\'status\') VALUES (\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%d\',\'%d\')"

    .line 89
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 91
    monitor-enter p0

    .line 92
    :try_start_6f
    iget-object p2, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_8f

    .line 94
    :try_start_74
    iget-object p2, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_88

    .line 97
    :try_start_7e
    iget-object p1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 99
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->Close()V

    .line 100
    monitor-exit p0

    return-void

    :catchall_88
    move-exception p1

    .line 97
    iget-object p2, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_8f
    move-exception p1

    .line 100
    monitor-exit p0
    :try_end_91
    .catchall {:try_start_7e .. :try_end_91} :catchall_8f

    throw p1
.end method

.method public InsertUnreadMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select 1 from message_user where mid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_24

    return-void

    :cond_24
    const/16 v0, 0x8

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/JCType;->CheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget-object v2, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultUser(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "username"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, p1

    const/4 p1, 0x2

    invoke-static {p2}, Lcom/pilotlab/rollereye/Utils/JCType;->CheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    invoke-static {p3}, Lcom/pilotlab/rollereye/Utils/JCType;->CheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x4

    .line 48
    invoke-static {p4}, Lcom/pilotlab/rollereye/Utils/JCType;->CheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x5

    invoke-static {p5}, Lcom/pilotlab/rollereye/Utils/JCType;->CheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "insert into message_user (\'mid\',\'username\',\'title\',\'content\',\'date\',\'ext\',\'type\',\'status\') VALUES (\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%d\',\'%d\')"

    .line 47
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 51
    monitor-enter p0

    .line 52
    :try_start_6f
    iget-object p2, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_8f

    .line 54
    :try_start_74
    iget-object p2, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_88

    .line 57
    :try_start_7e
    iget-object p1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 59
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->Close()V

    .line 60
    monitor-exit p0

    return-void

    :catchall_88
    move-exception p1

    .line 57
    iget-object p2, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_8f
    move-exception p1

    .line 60
    monitor-exit p0
    :try_end_91
    .catchall {:try_start_7e .. :try_end_91} :catchall_8f

    throw p1
.end method

.method public checkMessageIsRead(Ljava/lang/String;)Z
    .registers 11

    const-string v0, "status"

    .line 191
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 192
    iget-object v1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mid like \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "message_user"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, 0x1

    .line 194
    :cond_29
    :goto_29
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 195
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_29

    const/4 v1, 0x0

    goto :goto_29

    .line 199
    :cond_3b
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->Close()V

    return v1
.end method

.method public checkUnreadAnnoucement()I
    .registers 5

    const-string v0, "select count(*) from message_user where type = 2 and status = 0 ;"

    .line 236
    monitor-enter p0

    .line 238
    :try_start_3
    iget-object v1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 239
    :goto_c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 240
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto :goto_c

    .line 242
    :cond_17
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 244
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->Close()V

    .line 245
    monitor-exit p0

    return v2

    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public checkUnreadNotification()I
    .registers 5

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select count(*) from message_user where type = 1 and status = 0 and username like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultUser(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "username"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    monitor-enter p0

    .line 213
    :try_start_25
    iget-object v1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 214
    :goto_2e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 215
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto :goto_2e

    .line 217
    :cond_39
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 219
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->Close()V

    .line 220
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_25 .. :try_end_40} :catchall_4b

    .line 222
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->setHuaweiBadgeNum(Landroid/content/Context;I)V

    .line 223
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->setSamsungNum(Landroid/content/Context;I)V

    return v2

    :catchall_4b
    move-exception v0

    .line 220
    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method public deleteAllUserMessage()V
    .registers 4

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from message_user where username like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultUser(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "username"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    monitor-enter p0

    .line 129
    :try_start_25
    iget-object v1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_45

    .line 131
    :try_start_2a
    iget-object v1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_3e

    .line 134
    :try_start_34
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 136
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->Close()V

    .line 137
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception v0

    .line 134
    iget-object v1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_45
    move-exception v0

    .line 137
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_45

    throw v0
.end method

.method public deleteAllUserNotification()V
    .registers 4

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from message_user where username like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultUser(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "username"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' and type = 1 ;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    monitor-enter p0

    .line 110
    :try_start_25
    iget-object v1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_45

    .line 112
    :try_start_2a
    iget-object v1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_3e

    .line 115
    :try_start_34
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 117
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->Close()V

    .line 118
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception v0

    .line 115
    iget-object v1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_45
    move-exception v0

    .line 118
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_45

    throw v0
.end method

.method public deleteNotificationAfterMid(Ljava/lang/String;)V
    .registers 5

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from message_user where username like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultUser(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "username"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' and  mid < \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and type = 1 ;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    monitor-enter p0

    .line 150
    :try_start_2d
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_4d

    .line 152
    :try_start_32
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_46

    .line 155
    :try_start_3c
    iget-object p1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 157
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->Close()V

    .line 158
    monitor-exit p0

    return-void

    :catchall_46
    move-exception p1

    .line 155
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_4d
    move-exception p1

    .line 158
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_3c .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public updateMessageStatus(Ljava/lang/String;)V
    .registers 4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update message_user set status = 1 where mid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' ;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    monitor-enter p0

    .line 172
    :try_start_17
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_37

    .line 174
    :try_start_1c
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_30

    .line 177
    :try_start_26
    iget-object p1, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 179
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->Close()V

    .line 180
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    .line 177
    iget-object v0, p0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_37
    move-exception p1

    .line 180
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_37

    throw p1
.end method
