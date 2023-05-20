.class public Lcom/taobao/accs/a/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/a/a$a;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/taobao/accs/a/a;

.field private static final e:Ljava/util/concurrent/locks/Lock;


# instance fields
.field public a:I

.field b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/taobao/accs/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/taobao/accs/a/a;->e:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p2, 0x0

    .line 38
    iput p2, p0, Lcom/taobao/accs/a/a;->a:I

    .line 40
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/taobao/accs/a/a;->b:Ljava/util/LinkedList;

    .line 68
    iput-object p1, p0, Lcom/taobao/accs/a/a;->d:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/taobao/accs/a/a;
    .registers 6

    .line 56
    sget-object v0, Lcom/taobao/accs/a/a;->c:Lcom/taobao/accs/a/a;

    if-nez v0, :cond_1b

    .line 57
    const-class v0, Lcom/taobao/accs/a/a;

    monitor-enter v0

    .line 58
    :try_start_7
    sget-object v1, Lcom/taobao/accs/a/a;->c:Lcom/taobao/accs/a/a;

    if-nez v1, :cond_16

    .line 59
    new-instance v1, Lcom/taobao/accs/a/a;

    const-string v2, "emas_accs.db"

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/taobao/accs/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v1, Lcom/taobao/accs/a/a;->c:Lcom/taobao/accs/a/a;

    .line 61
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    .line 63
    :cond_1b
    :goto_1b
    sget-object p0, Lcom/taobao/accs/a/a;->c:Lcom/taobao/accs/a/a;

    return-object p0
.end method

.method private declared-synchronized a(Ljava/lang/String;[Ljava/lang/Object;Z)V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    .line 193
    :try_start_2
    iget-object v1, p0, Lcom/taobao/accs/a/a;->b:Ljava/util/LinkedList;

    new-instance v2, Lcom/taobao/accs/a/a$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/taobao/accs/a/a$a;-><init>(Lcom/taobao/accs/a/a;Ljava/lang/String;[Ljava/lang/Object;Lcom/taobao/accs/a/b;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object p1, p0, Lcom/taobao/accs/a/a;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 p2, 0x5

    if-gt p1, p2, :cond_18

    if-eqz p3, :cond_7c

    .line 196
    :cond_18
    invoke-virtual {p0}, Lcom/taobao/accs/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_70
    .catchall {:try_start_2 .. :try_end_1c} :catchall_6e

    if-nez p1, :cond_20

    .line 198
    monitor-exit p0

    return-void

    .line 201
    :cond_20
    :try_start_20
    iget-object p2, p0, Lcom/taobao/accs/a/a;->b:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    if-lez p2, :cond_65

    .line 202
    iget-object p2, p0, Lcom/taobao/accs/a/a;->b:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/accs/a/a$a;

    .line 207
    iget-object p3, p2, Lcom/taobao/accs/a/a$a;->b:[Ljava/lang/Object;

    if-eqz p3, :cond_3c

    .line 208
    iget-object p3, p2, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/taobao/accs/a/a$a;->b:[Ljava/lang/Object;

    invoke-virtual {p1, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_41

    .line 210
    :cond_3c
    iget-object p3, p2, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 213
    :goto_41
    iget-object p2, p2, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    const-string p3, "INSERT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 214
    iget p2, p0, Lcom/taobao/accs/a/a;->a:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p0, Lcom/taobao/accs/a/a;->a:I

    .line 215
    iget p2, p0, Lcom/taobao/accs/a/a;->a:I

    const/16 v1, 0xfa0

    if-le p2, v1, :cond_20

    const-string p2, "DBHelper"

    const-string v1, "db is full!"

    .line 216
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p2, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p0, p1, v0, p3}, Lcom/taobao/accs/a/a;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 218
    iput v0, p0, Lcom/taobao/accs/a/a;->a:I
    :try_end_65
    .catchall {:try_start_20 .. :try_end_65} :catchall_69

    .line 225
    :cond_65
    :try_start_65
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_7c

    :catchall_69
    move-exception p2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 226
    throw p2
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6e} :catch_70
    .catchall {:try_start_65 .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception p1

    goto :goto_7e

    :catch_70
    move-exception p1

    :try_start_71
    const-string p2, "DBHelper"

    .line 230
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_6e

    .line 232
    :cond_7c
    :goto_7c
    monitor-exit p0

    return-void

    :goto_7e
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 16

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 119
    :try_start_3
    invoke-virtual {p0}, Lcom/taobao/accs/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_57
    .catchall {:try_start_3 .. :try_end_7} :catchall_55

    if-nez v2, :cond_b

    .line 121
    monitor-exit p0

    return v1

    :cond_b
    :try_start_b
    const-string v3, "traffic"

    const-string v4, "_id"

    const-string v5, "date"

    const-string v6, "host"

    const-string v7, "serviceid"

    const-string v8, "bid"

    const-string v9, "isbackground"

    const-string v10, "size"

    .line 123
    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "date=? AND host=? AND bid=? AND isbackground=?"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    aput-object p4, v6, v1

    const/4 p4, 0x1

    aput-object p1, v6, p4

    const/4 p1, 0x2

    aput-object p2, v6, p1

    const/4 p1, 0x3

    .line 124
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 p1, 0x64

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 123
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 125
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_46} :catch_57
    .catchall {:try_start_b .. :try_end_46} :catchall_55

    if-lez p1, :cond_4f

    if-eqz v0, :cond_4d

    .line 132
    :try_start_4a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_6e

    .line 126
    :cond_4d
    monitor-exit p0

    return p4

    :cond_4f
    if-eqz v0, :cond_66

    .line 132
    :goto_51
    :try_start_51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_6e

    goto :goto_66

    :catchall_55
    move-exception p1

    goto :goto_68

    :catch_57
    move-exception p1

    :try_start_58
    const-string p2, "DBHelper"

    .line 129
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_55

    if-eqz v0, :cond_66

    goto :goto_51

    .line 136
    :cond_66
    :goto_66
    monitor-exit p0

    return v1

    :goto_68
    if-eqz v0, :cond_6d

    .line 132
    :try_start_6a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_6d
    throw p1
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Z)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;",
            ">;"
        }
    .end annotation

    .line 144
    monitor-enter p0

    .line 147
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_db

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 149
    :try_start_8
    invoke-virtual {p0}, Lcom/taobao/accs/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_c2
    .catchall {:try_start_8 .. :try_end_c} :catchall_c0

    if-nez v3, :cond_10

    .line 184
    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_db

    return-object v2

    :cond_10
    const/4 v12, 0x1

    const/16 v4, 0x64

    if-eqz p1, :cond_44

    :try_start_15
    const-string p1, "traffic"

    const-string v5, "_id"

    const-string v6, "date"

    const-string v7, "host"

    const-string v8, "serviceid"

    const-string v9, "bid"

    const-string v10, "isbackground"

    const-string v11, "size"

    .line 154
    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "date=?"

    new-array v7, v12, [Ljava/lang/String;

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/taobao/accs/utl/UtilityImpl;->a(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object v4, p1

    .line 154
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_66

    :cond_44
    const-string p1, "traffic"

    const-string v5, "_id"

    const-string v6, "date"

    const-string v7, "host"

    const-string v8, "serviceid"

    const-string v9, "bid"

    const-string v10, "isbackground"

    const-string v11, "size"

    .line 157
    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 158
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object v4, p1

    .line 157
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_66} :catch_c2
    .catchall {:try_start_15 .. :try_end_66} :catchall_c0

    :goto_66
    if-nez p1, :cond_6f

    if-eqz p1, :cond_6d

    .line 184
    :try_start_6a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_db

    return-object v2

    .line 164
    :cond_6f
    :try_start_6f
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 167
    :cond_75
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x2

    .line 168
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x3

    .line 169
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    .line 170
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    .line 171
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v2, 0x6

    .line 172
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    if-eqz v5, :cond_ab

    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-lez v2, :cond_ab

    .line 174
    new-instance v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_ab
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_af} :catch_bb
    .catchall {:try_start_6f .. :try_end_af} :catchall_b7

    if-nez v2, :cond_75

    :cond_b1
    if-eqz p1, :cond_d3

    .line 184
    :try_start_b3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_db

    goto :goto_d3

    :catchall_b7
    move-exception v0

    move-object v2, p1

    move-object p1, v0

    goto :goto_d5

    :catch_bb
    move-exception v2

    move-object v13, v2

    move-object v2, p1

    move-object p1, v13

    goto :goto_c3

    :catchall_c0
    move-exception p1

    goto :goto_d5

    :catch_c2
    move-exception p1

    :goto_c3
    :try_start_c3
    const-string v3, "DBHelper"

    .line 181
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ce
    .catchall {:try_start_c3 .. :try_end_ce} :catchall_c0

    if-eqz v2, :cond_d3

    .line 184
    :try_start_d0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_d3
    :goto_d3
    monitor-exit p0

    return-object v0

    :goto_d5
    if-eqz v2, :cond_da

    .line 184
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_da
    throw p1

    :catchall_db
    move-exception p1

    .line 188
    monitor-exit p0
    :try_end_dd
    .catchall {:try_start_d0 .. :try_end_dd} :catchall_db

    throw p1
.end method

.method public a()V
    .registers 4

    const-string v0, "DELETE FROM traffic"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 140
    invoke-direct {p0, v0, v1, v2}, Lcom/taobao/accs/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;)V
    .registers 15

    .line 108
    invoke-direct {p0, p1, p3, p4, p7}, Lcom/taobao/accs/a/a;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-nez v0, :cond_29

    const/4 v0, 0x6

    .line 109
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p7, v0, v4

    aput-object p1, v0, v6

    aput-object p2, v0, v3

    aput-object p3, v0, v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v5

    const-string p1, "INSERT INTO traffic VALUES(null,?,?,?,?,?,?)"

    invoke-direct {p0, p1, v0, v6}, Lcom/taobao/accs/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;Z)V

    goto :goto_42

    .line 111
    :cond_29
    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    aput-object p5, p2, v4

    aput-object p7, p2, v6

    aput-object p1, p2, v3

    aput-object p3, p2, v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "UPDATE traffic SET size=? WHERE date=? AND host=? AND bid=? AND isbackground=?"

    invoke-direct {p0, p1, p2, v6}, Lcom/taobao/accs/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;Z)V

    :goto_42
    return-void
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .line 48
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    const v1, 0x19000

    invoke-static {v0, v1}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->checkIsWritable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_13
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 81
    :try_start_0
    sget-object v0, Lcom/taobao/accs/a/a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "CREATE TABLE IF NOT EXISTS traffic(_id INTEGER PRIMARY KEY AUTOINCREMENT, date TEXT, host TEXT,serviceid TEXT, bid TEXT, isbackground TEXT, size TEXT)"

    .line 83
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_13

    .line 86
    :cond_d
    sget-object p1, Lcom/taobao/accs/a/a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_13
    move-exception p1

    sget-object v0, Lcom/taobao/accs/a/a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 87
    throw p1
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    if-ge p2, p3, :cond_32

    const-string p2, "DROP TABLE IF EXISTS service"

    .line 93
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS network"

    .line 94
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS ping"

    .line 95
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS msg"

    .line 96
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS ack"

    .line 97
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS election"

    .line 98
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS bindApp"

    .line 99
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS bindUser"

    .line 100
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS traffic"

    .line 101
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/taobao/accs/a/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_32
    return-void
.end method
