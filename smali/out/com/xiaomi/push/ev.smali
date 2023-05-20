.class public Lcom/xiaomi/push/ev;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/ev$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static volatile a:Lcom/xiaomi/push/ev;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/xiaomi/push/ev;->a:Landroid/content/Context;

    new-instance v0, Lcom/xiaomi/push/ev$a;

    invoke-direct {v0, p1}, Lcom/xiaomi/push/ev$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/xiaomi/push/ev$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/database/Cursor;)Lcom/xiaomi/push/er;
    .registers 13

    const-string v0, "policy_type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "interval"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "insert_time"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "life_time"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "timeout_count"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "pong_count"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "fixed_duration"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    new-instance p2, Lcom/xiaomi/push/er;

    invoke-direct {p2}, Lcom/xiaomi/push/er;-><init>()V

    iput-object p1, p2, Lcom/xiaomi/push/er;->a:Ljava/lang/String;

    iput v0, p2, Lcom/xiaomi/push/er;->a:I

    int-to-long v0, v1

    iput-wide v0, p2, Lcom/xiaomi/push/er;->a:J

    iput-wide v2, p2, Lcom/xiaomi/push/er;->b:J

    iput-wide v4, p2, Lcom/xiaomi/push/er;->c:J

    iput v6, p2, Lcom/xiaomi/push/er;->b:I

    iput v7, p2, Lcom/xiaomi/push/er;->c:I

    iput-wide v8, p2, Lcom/xiaomi/push/er;->d:J

    return-object p2
.end method

.method private a(Ljava/lang/String;Landroid/database/Cursor;)Lcom/xiaomi/push/es;
    .registers 13

    const-string v0, "policy_type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "interval"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "insert_time"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "life_time"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "effective_wakeup"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3a

    const/4 v6, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v6, 0x0

    :goto_3b
    const-string v7, "wakeup_count"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "invalid_reason"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v8, Lcom/xiaomi/push/es;

    invoke-direct {v8}, Lcom/xiaomi/push/es;-><init>()V

    iput-object p1, v8, Lcom/xiaomi/push/es;->a:Ljava/lang/String;

    iput v0, v8, Lcom/xiaomi/push/es;->a:I

    int-to-long v0, v1

    iput-wide v0, v8, Lcom/xiaomi/push/es;->a:J

    iput-wide v2, v8, Lcom/xiaomi/push/es;->b:J

    iput-wide v4, v8, Lcom/xiaomi/push/es;->c:J

    iput-boolean v6, v8, Lcom/xiaomi/push/es;->a:Z

    iput v7, v8, Lcom/xiaomi/push/es;->b:I

    iput-object p2, v8, Lcom/xiaomi/push/es;->b:Ljava/lang/String;

    return-object v8
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/ev;
    .registers 3

    sget-object v0, Lcom/xiaomi/push/ev;->a:Lcom/xiaomi/push/ev;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/push/ev;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/push/ev;->a:Lcom/xiaomi/push/ev;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/push/ev;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/ev;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/push/ev;->a:Lcom/xiaomi/push/ev;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/xiaomi/push/ev;->a:Lcom/xiaomi/push/ev;

    return-object p0
.end method

.method private a(Lcom/xiaomi/push/fb$a;J)V
    .registers 8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    const-string v2, "digest"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "interval"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p2, p1, Lcom/xiaomi/push/fb$a;->b:Ljava/lang/String;

    const-string p3, "net_mode"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p1, Lcom/xiaomi/push/fb$a;->b:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "continuous_count"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p2, p1, Lcom/xiaomi/push/fb$a;->c:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "jump_count"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean p2, p1, Lcom/xiaomi/push/fb$a;->b:Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "last_ping_suc"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p2, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    iget-wide v1, p1, Lcom/xiaomi/push/fb$a;->a:J

    invoke-virtual {p0, p2, v1, v2}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;J)Z

    move-result p2

    const-string p3, "records"

    if-eqz p2, :cond_78

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    aput-object v2, p2, v1

    const/4 v1, 0x1

    iget-wide v2, p1, Lcom/xiaomi/push/fb$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "digest=?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "interval=?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p3, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7e

    :cond_78
    iget-object p1, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_7e
    return-void
.end method

.method private b(Lcom/xiaomi/push/fb$a;J)V
    .registers 8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    const-string v2, "digest"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "cur_interval"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-boolean p2, p1, Lcom/xiaomi/push/fb$a;->a:Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "fixed"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide p2, p1, Lcom/xiaomi/push/fb$a;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "fixed_timestamp"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide p2, p1, Lcom/xiaomi/push/fb$a;->c:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "fiexd_duration"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, p3, v2

    const-string v1, "digest=?"

    const-string v3, "recent"

    invoke-virtual {p0, v3, v1, p3}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_60

    new-array p2, p2, [Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    aput-object p1, p2, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v3, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_66

    :cond_60
    iget-object p1, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 p2, 0x0

    invoke-virtual {p1, v3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_66
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IJ)Lcom/xiaomi/push/er;
    .registers 14

    const/4 v0, 0x0

    :try_start_1
    const-string v4, "digest=? and policy_type=? and interval=? "

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    const/4 p2, 0x2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v5, p2

    iget-object v1, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pingpong"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_45
    .catchall {:try_start_1 .. :try_end_23} :catchall_3e

    if-eqz p2, :cond_3b

    :try_start_25
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-lez p3, :cond_3b

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;Landroid/database/Cursor;)Lcom/xiaomi/push/er;

    move-result-object p1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_32} :catch_46
    .catchall {:try_start_25 .. :try_end_32} :catchall_38

    if-eqz p2, :cond_37

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_37
    return-object p1

    :catchall_38
    move-exception p1

    move-object v0, p2

    goto :goto_3f

    :cond_3b
    if-eqz p2, :cond_4b

    goto :goto_48

    :catchall_3e
    move-exception p1

    :goto_3f
    if-eqz v0, :cond_44

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_44
    throw p1

    :catch_45
    move-object p2, v0

    :catch_46
    if-eqz p2, :cond_4b

    :goto_48
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4b
    return-object v0
.end method

.method public a(Ljava/lang/String;IJZLjava/lang/String;)Lcom/xiaomi/push/es;
    .registers 16

    const/4 v0, 0x0

    :try_start_1
    const-string v4, "digest=? and policy_type=? and interval=? and effective_wakeup=? and invalid_reason=? "

    const/4 v1, 0x5

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v5, v2

    const/4 p2, 0x2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x3

    if-eqz p5, :cond_1b

    move v1, v2

    :cond_1b
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x4

    aput-object p6, v5, p2

    iget-object v1, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "wakeup"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_52
    .catchall {:try_start_1 .. :try_end_30} :catchall_4b

    if-eqz p2, :cond_48

    :try_start_32
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-lez p3, :cond_48

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;Landroid/database/Cursor;)Lcom/xiaomi/push/es;

    move-result-object p1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3f} :catch_53
    .catchall {:try_start_32 .. :try_end_3f} :catchall_45

    if-eqz p2, :cond_44

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_44
    return-object p1

    :catchall_45
    move-exception p1

    move-object v0, p2

    goto :goto_4c

    :cond_48
    if-eqz p2, :cond_58

    goto :goto_55

    :catchall_4b
    move-exception p1

    :goto_4c
    if-eqz v0, :cond_51

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_51
    throw p1

    :catch_52
    move-object p2, v0

    :catch_53
    if-eqz p2, :cond_58

    :goto_55
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_58
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/push/fb$a;
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    :try_start_5
    const-string v6, "digest=?"

    const/4 v11, 0x1

    new-array v7, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v0, v7, v12

    iget-object v3, v1, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "recent"

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_e3
    .catchall {:try_start_5 .. :try_end_19} :catchall_db

    if-eqz v3, :cond_d8

    :try_start_1b
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_d8

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "cur_interval"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "fixed"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v11, :cond_3c

    move v6, v11

    goto :goto_3d

    :cond_3c
    move v6, v12

    :goto_3d
    const-string v7, "fixed_timestamp"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v9, "fiexd_duration"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    if-eqz v6, :cond_6b

    new-instance v11, Lcom/xiaomi/push/fb$a;

    invoke-direct {v11}, Lcom/xiaomi/push/fb$a;-><init>()V

    iput-object v0, v11, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    iput-boolean v6, v11, Lcom/xiaomi/push/fb$a;->a:Z

    iput-wide v4, v11, Lcom/xiaomi/push/fb$a;->a:J

    iput-wide v7, v11, Lcom/xiaomi/push/fb$a;->b:J

    iput-wide v9, v11, Lcom/xiaomi/push/fb$a;->c:J
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_65} :catch_e4
    .catchall {:try_start_1b .. :try_end_65} :catchall_d6

    if-eqz v3, :cond_6a

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6a
    return-object v11

    :cond_6b
    :try_start_6b
    const-string v16, "digest=? and interval=?"

    const/4 v13, 0x2

    new-array v15, v13, [Ljava/lang/String;

    aput-object v0, v15, v12

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v15, v11

    iget-object v13, v1, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "records"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v21

    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_d8

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_d8

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v13, Lcom/xiaomi/push/fb$a;

    invoke-direct {v13}, Lcom/xiaomi/push/fb$a;-><init>()V

    iput-wide v4, v13, Lcom/xiaomi/push/fb$a;->a:J

    iput-object v0, v13, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    const-string v0, "continuous_count"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v13, Lcom/xiaomi/push/fb$a;->b:I

    const-string v0, "jump_count"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v13, Lcom/xiaomi/push/fb$a;->c:I

    iput-boolean v6, v13, Lcom/xiaomi/push/fb$a;->a:Z

    iput-wide v7, v13, Lcom/xiaomi/push/fb$a;->b:J

    const-string v0, "last_ping_suc"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v11, :cond_cb

    goto :goto_cc

    :cond_cb
    move v11, v12

    :goto_cc
    iput-boolean v11, v13, Lcom/xiaomi/push/fb$a;->b:Z

    iput-wide v9, v13, Lcom/xiaomi/push/fb$a;->c:J
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_d0} :catch_e4
    .catchall {:try_start_6b .. :try_end_d0} :catchall_d6

    if-eqz v3, :cond_d5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_d5
    return-object v13

    :catchall_d6
    move-exception v0

    goto :goto_dd

    :cond_d8
    if-eqz v3, :cond_e9

    goto :goto_e6

    :catchall_db
    move-exception v0

    move-object v3, v2

    :goto_dd
    if-eqz v3, :cond_e2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_e2
    throw v0

    :catch_e3
    move-object v3, v2

    :catch_e4
    if-eqz v3, :cond_e9

    :goto_e6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_e9
    return-object v2
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaomi/push/es;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    const-string v5, "digest=? "

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    iget-object v2, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "wakeup"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_27

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_21} :catch_4d
    .catchall {:try_start_6 .. :try_end_21} :catchall_46

    if-eqz v1, :cond_26

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_26
    return-object p1

    :cond_27
    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_40

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_40

    :cond_33
    invoke-direct {p0, p1, v1}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;Landroid/database/Cursor;)Lcom/xiaomi/push/es;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3e} :catch_4d
    .catchall {:try_start_27 .. :try_end_3e} :catchall_46

    if-nez v2, :cond_33

    :cond_40
    if-eqz v1, :cond_45

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_45
    return-object v0

    :catchall_46
    move-exception p1

    if-eqz v1, :cond_4c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4c
    throw p1

    :catch_4d
    if-eqz v1, :cond_52

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_52
    return-object v0
.end method

.method public a(Lcom/xiaomi/push/er;)V
    .registers 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p1, Lcom/xiaomi/push/er;->a:Ljava/lang/String;

    const-string v2, "digest"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lcom/xiaomi/push/er;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "policy_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v1, p1, Lcom/xiaomi/push/er;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "interval"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v1, p1, Lcom/xiaomi/push/er;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "insert_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v1, p1, Lcom/xiaomi/push/er;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "life_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v1, p1, Lcom/xiaomi/push/er;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "timeout_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p1, Lcom/xiaomi/push/er;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pong_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v1, p1, Lcom/xiaomi/push/er;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fixed_duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/er;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Lcom/xiaomi/push/er;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p1, Lcom/xiaomi/push/er;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "pingpong"

    const-string v2, "digest=? and policy_type=? and interval=?"

    invoke-virtual {p0, p1, v2, v1}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_83

    iget-object v3, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_89

    :cond_83
    iget-object v1, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_89
    return-void
.end method

.method public a(Lcom/xiaomi/push/es;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p1, Lcom/xiaomi/push/es;->a:Ljava/lang/String;

    const-string v2, "digest"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lcom/xiaomi/push/es;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "policy_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v1, p1, Lcom/xiaomi/push/es;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "interval"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v1, p1, Lcom/xiaomi/push/es;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "insert_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v1, p1, Lcom/xiaomi/push/es;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "life_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-boolean v1, p1, Lcom/xiaomi/push/es;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "effective_wakeup"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget v1, p1, Lcom/xiaomi/push/es;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "wakeup_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p1, Lcom/xiaomi/push/es;->b:Ljava/lang/String;

    const-string v2, "invalid_reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/xiaomi/push/es;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lcom/xiaomi/push/es;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p1, Lcom/xiaomi/push/es;->a:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p1, Lcom/xiaomi/push/es;->a:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object p1, p1, Lcom/xiaomi/push/es;->b:Ljava/lang/String;

    aput-object p1, v1, v2

    const-string p1, "digest=? and policy_type=? and interval=? and effective_wakeup=? and invalid_reason=?"

    const-string v2, "wakeup"

    invoke-virtual {p0, v2, p1, v1}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_90

    iget-object v3, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2, v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_96

    :cond_90
    iget-object p1, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_96
    return-void
.end method

.method public a(Lcom/xiaomi/push/fb$a;ZJ)V
    .registers 9

    if-eqz p1, :cond_48

    iget-object v0, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-wide v0, p1, Lcom/xiaomi/push/fb$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_13

    goto :goto_48

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HB] cacheHeartbeat interval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/xiaomi/push/fb$a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-nez p2, :cond_33

    :try_start_30
    invoke-direct {p0, p1, p3, p4}, Lcom/xiaomi/push/ev;->a(Lcom/xiaomi/push/fb$a;J)V

    :cond_33
    invoke-direct {p0, p1, p3, p4}, Lcom/xiaomi/push/ev;->b(Lcom/xiaomi/push/fb$a;J)V

    iget-object p1, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_3b} :catch_43
    .catchall {:try_start_30 .. :try_end_3b} :catchall_3c

    goto :goto_43

    :catchall_3c
    move-exception p1

    iget-object p2, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catch_43
    :goto_43
    iget-object p1, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_48
    :goto_48
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "digest=?"

    const-string v1, "records"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "digest=?"

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_5
    iget-object v0, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[HB] clear history "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "count = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_2c} :catch_34
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2d

    goto :goto_34

    :catchall_2d
    move-exception p1

    iget-object p2, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catch_34
    :goto_34
    iget-object p1, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public a(Ljava/lang/String;J)Z
    .registers 13

    const-string v3, "digest=? and interval=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v4, v8

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v4, p2

    const/4 p1, 0x0

    :try_start_10
    iget-object v0, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "records"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_22} :catch_34
    .catchall {:try_start_10 .. :try_end_22} :catchall_2d

    if-lez p3, :cond_2a

    if-eqz p1, :cond_29

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_29
    return p2

    :cond_2a
    if-eqz p1, :cond_39

    goto :goto_36

    :catchall_2d
    move-exception p2

    if-eqz p1, :cond_33

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_33
    throw p2

    :catch_34
    if-eqz p1, :cond_39

    :goto_36
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_39
    return v8
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 13

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_27
    .catchall {:try_start_1 .. :try_end_14} :catchall_20

    if-lez p1, :cond_1d

    const/4 p1, 0x1

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1c
    return p1

    :cond_1d
    if-eqz v0, :cond_2c

    goto :goto_29

    :catchall_20
    move-exception p1

    if-eqz v0, :cond_26

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_26
    throw p1

    :catch_27
    if-eqz v0, :cond_2c

    :goto_29
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaomi/push/er;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    const-string v5, "digest=? "

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    iget-object v2, p0, Lcom/xiaomi/push/ev;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "pingpong"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_48
    .catchall {:try_start_6 .. :try_end_1a} :catchall_41

    if-nez v1, :cond_22

    if-eqz v1, :cond_21

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_21
    return-object v0

    :cond_22
    :try_start_22
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3b

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3b

    :cond_2e
    invoke-direct {p0, p1, v1}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;Landroid/database/Cursor;)Lcom/xiaomi/push/er;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_39} :catch_48
    .catchall {:try_start_22 .. :try_end_39} :catchall_41

    if-nez v2, :cond_2e

    :cond_3b
    if-eqz v1, :cond_40

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_40
    return-object v0

    :catchall_41
    move-exception p1

    if-eqz v1, :cond_47

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_47
    throw p1

    :catch_48
    if-eqz v1, :cond_4d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4d
    return-object v0
.end method
