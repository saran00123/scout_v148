.class public Lorg/android/agoo/message/MessageService;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/message/MessageService$a;
    }
.end annotation


# static fields
.field public static final MSG_ACCS_NOTIFY_CLICK:Ljava/lang/String; = "8"

.field public static final MSG_ACCS_NOTIFY_DISMISS:Ljava/lang/String; = "9"

.field public static final MSG_ACCS_READY_REPORT:Ljava/lang/String; = "4"

.field public static final MSG_DB_COMPLETE:Ljava/lang/String; = "100"

.field public static final MSG_DB_NOTIFY_CLICK:Ljava/lang/String; = "2"

.field public static final MSG_DB_NOTIFY_DISMISS:Ljava/lang/String; = "3"

.field public static final MSG_DB_NOTIFY_REACHED:Ljava/lang/String; = "1"

.field public static final MSG_DB_READY_REPORT:Ljava/lang/String; = "0"

.field private static a:Landroid/content/Context;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile b:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lorg/android/agoo/message/MessageService;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method private static a(JLorg/android/agoo/common/MsgDO;)Landroid/os/Bundle;
    .registers 12

    const-string v0, ""

    .line 601
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 603
    :try_start_7
    invoke-static {p0, p1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    if-eqz p0, :cond_99

    .line 605
    array-length p1, p0

    const/16 v2, 0x8

    if-gt v2, p1, :cond_99

    .line 606
    array-length p1, p0
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_17} :catch_99

    const/4 v3, 0x1

    const-string v4, "1"

    const/16 v5, 0x31

    if-gt v2, p1, :cond_6f

    :try_start_1e
    const-string p1, "encrypted"

    .line 607
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v0, p0, v3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aget-char v8, p0, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x3

    aget-char v8, p0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x4

    aget-char v8, p0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 610
    invoke-static {v7, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 612
    aget-char p1, p0, p1

    if-ne p1, v5, :cond_65

    const-string p1, "report"

    .line 613
    invoke-virtual {v1, p1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iput-object v4, p2, Lorg/android/agoo/common/MsgDO;->reportStr:Ljava/lang/String;

    :cond_65
    const/4 p1, 0x7

    .line 616
    aget-char p1, p0, p1

    if-ne p1, v5, :cond_6f

    const-string p1, "notify"

    .line 617
    invoke-virtual {v1, p1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_6f
    array-length p1, p0

    const/16 p2, 0x9

    if-gt p2, p1, :cond_7d

    .line 622
    aget-char p1, p0, v2

    if-ne p1, v5, :cond_7d

    const-string p1, "has_test"

    .line 623
    invoke-virtual {v1, p1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_7d
    array-length p1, p0

    const/16 v0, 0xa

    if-gt v0, p1, :cond_8b

    .line 628
    aget-char p1, p0, p2

    if-ne p1, v5, :cond_8b

    const-string p1, "duplicate"

    .line 629
    invoke-virtual {v1, p1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    const/16 p1, 0xb

    .line 633
    array-length p2, p0

    if-gt p1, p2, :cond_99

    .line 634
    aget-char p0, p0, v0

    if-ne p0, v5, :cond_99

    const-string p0, "popup"

    .line 635
    invoke-virtual {v1, p0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_99} :catch_99

    :catch_99
    :cond_99
    return-object v1
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5

    .line 239
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 240
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 241
    array-length v1, p1

    if-lez v1, :cond_23

    const/4 v1, 0x0

    .line 242
    :goto_f
    array-length v2, p1

    if-ge v1, v2, :cond_23

    .line 243
    aget-object v2, p1, v1

    .line 244
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 247
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII)V
    .registers 23

    move-object v0, p1

    const-string v1, "addMessage,db.close(),error,e--->["

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add sqlite3--->["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "MessageService"

    invoke-static {v6, v2, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 262
    :try_start_22
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_26} :catch_13c
    .catchall {:try_start_22 .. :try_end_26} :catchall_135

    const-string v7, ""

    if-eqz v5, :cond_2d

    const/4 v5, -0x1

    move-object v8, v7

    goto :goto_33

    .line 266
    :cond_2d
    :try_start_2d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    move-object/from16 v8, p2

    .line 268
    :goto_33
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3a

    goto :goto_3c

    :cond_3a
    move-object/from16 v7, p3

    .line 272
    :goto_3c
    sget-object v9, Lorg/android/agoo/message/MessageService;->c:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_79

    .line 273
    sget-object v9, Lorg/android/agoo/message/MessageService;->c:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v9, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v9}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 275
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addMessage,messageId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",messageStores\uff1d"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lorg/android/agoo/message/MessageService;->c:Ljava/util/Map;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v6, v9, v10}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_79} :catch_13c
    .catchall {:try_start_2d .. :try_end_79} :catchall_135

    :cond_79
    move-object v9, p0

    .line 278
    :try_start_7a
    iget-object v10, v9, Lorg/android/agoo/message/MessageService;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_80} :catch_133
    .catchall {:try_start_7a .. :try_end_80} :catchall_1cd

    if-nez v2, :cond_cd

    if-eqz v2, :cond_cc

    .line 294
    :try_start_84
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_cc

    :catch_88
    move-exception v0

    move-object v2, v0

    .line 298
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    :cond_a9
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d2

    sget-object v3, Lorg/android/agoo/message/MessageService;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "accs.add_agoo_message"

    const-string v5, "addMessageDBcloseFailed"

    move-object p1, v0

    move/from16 p2, v1

    move-object/from16 p3, v4

    move-object/from16 p4, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v2

    invoke-virtual/range {p1 .. p6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_cc
    :goto_cc
    return-void

    :cond_cd
    :try_start_cd
    const-string v10, "INSERT INTO message VALUES(?,?,?,?,?,?,?,?,?,date(\'now\'))"

    const/16 v11, 0x9

    .line 282
    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v4

    const/4 v0, 0x1

    .line 284
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v0

    const/4 v0, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v0

    const/4 v0, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v0

    const/4 v0, 0x4

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v11, v0

    const/4 v0, 0x5

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v0

    const/4 v0, 0x6

    aput-object v7, v11, v0

    const/4 v0, 0x7

    aput-object v8, v11, v0

    const/16 v0, 0x8

    .line 285
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v0

    .line 282
    invoke-virtual {v2, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_109
    .catch Ljava/lang/Throwable; {:try_start_cd .. :try_end_109} :catch_133
    .catchall {:try_start_cd .. :try_end_109} :catchall_1cd

    if-eqz v2, :cond_1cc

    .line 294
    :try_start_10b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_10e
    .catch Ljava/lang/Throwable; {:try_start_10b .. :try_end_10e} :catch_110

    goto/16 :goto_1cc

    :catch_110
    move-exception v0

    move-object v2, v0

    .line 298
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1a9

    :catch_133
    move-exception v0

    goto :goto_13e

    :catchall_135
    move-exception v0

    move-object v9, p0

    :goto_137
    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    goto/16 :goto_1d0

    :catch_13c
    move-exception v0

    move-object v9, p0

    .line 287
    :goto_13e
    :try_start_13e
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_15f

    .line 288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addMessage error,e--->["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :cond_15f
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v5

    const v7, 0x101d2

    const-string v8, "accs.add_agoo_message"

    sget-object v10, Lorg/android/agoo/message/MessageService;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "addMessageFailed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, v5

    move/from16 p2, v7

    move-object/from16 p3, v8

    move-object/from16 p4, v10

    move-object/from16 p5, v11

    move-object/from16 p6, v0

    invoke-virtual/range {p1 .. p6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_182
    .catchall {:try_start_13e .. :try_end_182} :catchall_1cd

    if-eqz v2, :cond_1cc

    .line 294
    :try_start_184
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_187
    .catch Ljava/lang/Throwable; {:try_start_184 .. :try_end_187} :catch_188

    goto :goto_1cc

    :catch_188
    move-exception v0

    move-object v2, v0

    .line 298
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    :cond_1a9
    :goto_1a9
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d2

    sget-object v3, Lorg/android/agoo/message/MessageService;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "accs.add_agoo_message"

    const-string v5, "addMessageDBcloseFailed"

    move-object p1, v0

    move/from16 p2, v1

    move-object/from16 p3, v4

    move-object/from16 p4, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v2

    invoke-virtual/range {p1 .. p6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1cc
    :goto_1cc
    return-void

    :catchall_1cd
    move-exception v0

    goto/16 :goto_137

    :goto_1d0
    if-eqz v0, :cond_21a

    .line 294
    :try_start_1d2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1d5
    .catch Ljava/lang/Throwable; {:try_start_1d2 .. :try_end_1d5} :catch_1d6

    goto :goto_21a

    :catch_1d6
    move-exception v0

    move-object v5, v0

    .line 298
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1f7

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    :cond_1f7
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d2

    sget-object v3, Lorg/android/agoo/message/MessageService;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "accs.add_agoo_message"

    const-string v6, "addMessageDBcloseFailed"

    move-object p1, v0

    move/from16 p2, v1

    move-object/from16 p3, v5

    move-object/from16 p4, v3

    move-object/from16 p5, v6

    move-object/from16 p6, v4

    invoke-virtual/range {p1 .. p6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 303
    :cond_21a
    :goto_21a
    throw v2
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 587
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 589
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_d

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :catch_d
    :cond_d
    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lorg/android/agoo/common/MsgDO;
    .registers 24

    move-object/from16 v0, p1

    const-string v1, "ext"

    .line 488
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    const-string v3, "MessageService"

    const/4 v4, 0x0

    if-eqz v2, :cond_33

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgRecevie,message--->["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "],utdid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/android/agoo/message/MessageService;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    :cond_33
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_73

    .line 492
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d2

    sget-object v2, Lorg/android/agoo/message/MessageService;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "accs.dealMessage"

    const-string v7, "message==null"

    invoke-virtual {v0, v1, v6, v2, v7}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 493
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage message==null,utdid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/android/agoo/message/MessageService;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_72
    return-object v5

    .line 498
    :cond_73
    new-instance v2, Lorg/android/agoo/common/MsgDO;

    invoke-direct {v2}, Lorg/android/agoo/common/MsgDO;-><init>()V

    .line 500
    :try_start_78
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 506
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 507
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v5

    move v5, v4

    :goto_97
    if-ge v5, v0, :cond_1d7

    .line 511
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    if-nez v11, :cond_a8

    move/from16 v19, v0

    move-object/from16 v20, v1

    move v0, v5

    :cond_a4
    :goto_a4
    move-object/from16 v1, p2

    goto/16 :goto_1ae

    :cond_a8
    const-string v12, "p"

    .line 515
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "i"

    .line 516
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v13, "b"

    .line 517
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "f"

    move/from16 p1, v5

    .line 518
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 519
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_cf

    .line 521
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_cf} :catch_1b7

    :cond_cf
    add-int/lit8 v11, v0, -0x1

    const-string v14, ","

    move/from16 v19, v0

    move/from16 v0, p1

    if-ge v0, v11, :cond_dc

    .line 525
    :try_start_d9
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :cond_dc
    iput-object v15, v2, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    .line 528
    iput-object v10, v2, Lorg/android/agoo/common/MsgDO;->extData:Ljava/lang/String;

    move-object/from16 v20, v1

    const-string v1, "accs"

    .line 529
    iput-object v1, v2, Lorg/android/agoo/common/MsgDO;->messageSource:Ljava/lang/String;

    const-string v1, "cache"

    .line 530
    iput-object v1, v2, Lorg/android/agoo/common/MsgDO;->type:Ljava/lang/String;

    .line 531
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f5

    const-string v1, "11"

    .line 532
    iput-object v1, v2, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    goto :goto_a4

    .line 535
    :cond_f5
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_100

    const-string v1, "12"

    .line 536
    iput-object v1, v2, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    goto :goto_a4

    :cond_100
    const-wide/16 v16, -0x1

    cmp-long v1, v4, v16

    if-nez v1, :cond_10b

    const-string v1, "13"

    .line 540
    iput-object v1, v2, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    goto :goto_a4

    .line 543
    :cond_10b
    sget-object v1, Lorg/android/agoo/message/MessageService;->a:Landroid/content/Context;

    invoke-static {v1, v12}, Lorg/android/agoo/message/MessageService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_156

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ondata checkpackage is del,pack="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v13

    const v1, 0x101d2

    const-string v4, "accs.dealMessage"

    sget-object v5, Lorg/android/agoo/message/MessageService;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "deletePack"

    move-object v5, v14

    move v14, v1

    move-object v1, v15

    move-object v15, v4

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 546
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iput-object v12, v2, Lorg/android/agoo/common/MsgDO;->removePacks:Ljava/lang/String;

    if-ge v0, v11, :cond_a4

    .line 550
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a4

    .line 555
    :cond_156
    invoke-static {v4, v5, v2}, Lorg/android/agoo/message/MessageService;->a(JLorg/android/agoo/common/MsgDO;)Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "encrypted"

    .line 556
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    sget-object v4, Lorg/android/agoo/message/MessageService;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a1

    const/4 v4, 0x0

    .line 561
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19f

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19f

    const-string v4, "15"

    .line 562
    iput-object v4, v2, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error encrypted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a4

    :cond_19f
    const/4 v4, 0x0

    goto :goto_1a2

    :cond_1a1
    const/4 v4, 0x1

    .line 569
    :goto_1a2
    iput-boolean v4, v2, Lorg/android/agoo/common/MsgDO;->agooFlag:Z

    .line 570
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a4

    move-object/from16 v1, p2

    .line 571
    iput-object v1, v2, Lorg/android/agoo/common/MsgDO;->msgStatus:Ljava/lang/String;
    :try_end_1ae
    .catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_1ae} :catch_1b7

    :goto_1ae
    add-int/lit8 v5, v0, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v20

    const/4 v4, 0x0

    goto/16 :goto_97

    :catch_1b7
    move-exception v0

    .line 575
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_1d7

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createMsg is error,e: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d7
    return-object v2
.end method


# virtual methods
.method public a()V
    .registers 6

    const/4 v0, 0x0

    .line 313
    :try_start_1
    iget-object v1, p0, Lorg/android/agoo/message/MessageService;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7} :catch_21
    .catchall {:try_start_1 .. :try_end_7} :catchall_1f

    if-nez v0, :cond_f

    if-eqz v0, :cond_e

    .line 327
    :try_start_b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_e

    :catch_e
    :cond_e
    return-void

    :cond_f
    :try_start_f
    const-string v1, "delete from message where create_time< date(\'now\',\'-7 day\') and state=1"

    .line 317
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete from accs_message where create_time< date(\'now\',\'-1 day\') "

    .line 320
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_19} :catch_21
    .catchall {:try_start_f .. :try_end_19} :catchall_1f

    if-eqz v0, :cond_2f

    .line 327
    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_2f

    goto :goto_2f

    :catchall_1f
    move-exception v1

    goto :goto_30

    :catch_21
    move-exception v1

    :try_start_22
    const-string v2, "MessageService"

    const-string v3, "deleteCacheMessage sql Throwable"

    const/4 v4, 0x0

    .line 323
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_1f

    if-eqz v0, :cond_2f

    goto :goto_1b

    :catch_2f
    :cond_2f
    :goto_2f
    return-void

    :goto_30
    if-eqz v0, :cond_35

    .line 327
    :try_start_32
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_35

    .line 333
    :catch_35
    :cond_35
    throw v1
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/android/agoo/message/MessageService;->c:Ljava/util/Map;

    .line 69
    sput-object p1, Lorg/android/agoo/message/MessageService;->a:Landroid/content/Context;

    .line 70
    new-instance v0, Lorg/android/agoo/message/MessageService$a;

    invoke-direct {v0, p1}, Lorg/android/agoo/message/MessageService$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/android/agoo/message/MessageService;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 168
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    const-string v1, "MessageService"

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAccsMessage sqlite3--->["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2e
    const/4 v0, 0x0

    .line 173
    :try_start_2f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_73

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_73

    .line 176
    :cond_3c
    iget-object v3, p0, Lorg/android/agoo/message/MessageService;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_42} :catch_76
    .catchall {:try_start_2f .. :try_end_42} :catchall_74

    if-nez v0, :cond_4a

    if-eqz v0, :cond_49

    .line 194
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_49
    return-void

    :cond_4a
    :try_start_4a
    const-string v3, "1"

    .line 180
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_65

    const-string v3, "UPDATE accs_message set state = ? where id = ? and state = ?"

    const/4 v6, 0x3

    .line 181
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v2

    aput-object p1, v6, v4

    const-string p1, "0"

    aput-object p1, v6, v5

    invoke-virtual {v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_70

    :cond_65
    const-string v3, "UPDATE accs_message set state = ? where id = ?"

    .line 184
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v2

    aput-object p1, v5, v4

    invoke-virtual {v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_70} :catch_76
    .catchall {:try_start_4a .. :try_end_70} :catchall_74

    :goto_70
    if-eqz v0, :cond_c2

    goto :goto_bf

    :cond_73
    :goto_73
    return-void

    :catchall_74
    move-exception p1

    goto :goto_c3

    :catch_76
    move-exception p1

    .line 188
    :try_start_77
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_a5

    .line 189
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAccsMessage error,e--->["

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "],ex="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p2, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :cond_a5
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v1

    const v2, 0x101d2

    const-string v3, "accs.add_agoo_message"

    sget-object p2, Lorg/android/agoo/message/MessageService;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "updateAccsMessageFailed"

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_bd
    .catchall {:try_start_77 .. :try_end_bd} :catchall_74

    if-eqz v0, :cond_c2

    .line 194
    :goto_bf
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c2
    return-void

    :goto_c3
    if-eqz v0, :cond_c8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 197
    :cond_c8
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 201
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    const-string v1, "MessageService"

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccsMessage sqlite3--->["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",message="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_36
    const/4 v0, 0x0

    .line 207
    :try_start_37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_9b

    .line 210
    :cond_44
    iget-object v3, p0, Lorg/android/agoo/message/MessageService;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_4a} :catch_9f
    .catchall {:try_start_37 .. :try_end_4a} :catchall_9c

    if-nez v3, :cond_52

    if-eqz v3, :cond_51

    .line 233
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_51
    return-void

    :cond_52
    :try_start_52
    const-string v4, "select count(1) from accs_message where id = ?"

    const/4 v5, 0x1

    .line 214
    new-array v6, v5, [Ljava/lang/String;

    aput-object p1, v6, v2

    invoke-virtual {v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 216
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_79

    .line 217
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_6e} :catch_97
    .catchall {:try_start_52 .. :try_end_6e} :catchall_93

    if-eqz v0, :cond_73

    .line 230
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_73
    if-eqz v3, :cond_78

    .line 233
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_78
    return-void

    :cond_79
    :try_start_79
    const-string v4, "INSERT INTO accs_message VALUES(?,?,?,date(\'now\'))"

    const/4 v6, 0x3

    .line 220
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object p3, v6, v5

    const/4 p1, 0x2

    aput-object p2, v6, p1

    invoke-virtual {v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_88} :catch_97
    .catchall {:try_start_79 .. :try_end_88} :catchall_93

    if-eqz v0, :cond_8d

    .line 230
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8d
    if-eqz v3, :cond_ed

    .line 233
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_ed

    :catchall_93
    move-exception p1

    move-object p2, v0

    move-object v0, v3

    goto :goto_ef

    :catch_97
    move-exception p1

    move-object p2, v0

    move-object v0, v3

    goto :goto_a1

    :cond_9b
    :goto_9b
    return-void

    :catchall_9c
    move-exception p1

    move-object p2, v0

    goto :goto_ef

    :catch_9f
    move-exception p1

    move-object p2, v0

    .line 224
    :goto_a1
    :try_start_a1
    sget-object p3, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p3}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p3

    if-eqz p3, :cond_cb

    .line 225
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccsMessage error,e--->["

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "],ex="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p3, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :cond_cb
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v1

    const v2, 0x101d2

    const-string v3, "accs.add_agoo_message"

    sget-object p3, Lorg/android/agoo/message/MessageService;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "addAccsMessageFailed"

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e3
    .catchall {:try_start_a1 .. :try_end_e3} :catchall_ee

    if-eqz p2, :cond_e8

    .line 230
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_e8
    if-eqz v0, :cond_ed

    .line 233
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_ed
    :goto_ed
    return-void

    :catchall_ee
    move-exception p1

    :goto_ef
    if-eqz p2, :cond_f4

    .line 230
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_f4
    if-eqz v0, :cond_f9

    .line 233
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 235
    :cond_f9
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v8, p4

    .line 252
    invoke-direct/range {v0 .. v8}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 412
    :try_start_2
    sget-object v2, Lorg/android/agoo/message/MessageService;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2d

    .line 413
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "MessageService"

    .line 414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasMessageDuplicate,msgid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2b} :catch_71
    .catchall {:try_start_2 .. :try_end_2b} :catchall_64

    :cond_2b
    move v2, v3

    goto :goto_2e

    :cond_2d
    move v2, v1

    .line 418
    :goto_2e
    :try_start_2e
    iget-object v4, p0, Lorg/android/agoo/message/MessageService;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_34} :catch_62
    .catchall {:try_start_2e .. :try_end_34} :catchall_64

    if-nez v4, :cond_3c

    if-eqz v4, :cond_3b

    .line 435
    :try_start_38
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_3b

    :catch_3b
    :cond_3b
    return v2

    :cond_3c
    :try_start_3c
    const-string v5, "select count(1) from message where id = ?"

    .line 422
    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 424
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_55

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_52} :catch_73
    .catchall {:try_start_3c .. :try_end_52} :catchall_60

    if-lez p1, :cond_55

    move v2, v3

    :cond_55
    if-eqz v0, :cond_5a

    .line 431
    :try_start_57
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5a
    if-eqz v4, :cond_7b

    .line 435
    :goto_5c
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5f} :catch_7b

    goto :goto_7b

    :catchall_60
    move-exception p1

    goto :goto_66

    :catch_62
    move-object v4, v0

    goto :goto_73

    :catchall_64
    move-exception p1

    move-object v4, v0

    :goto_66
    if-eqz v0, :cond_6b

    .line 431
    :try_start_68
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6b
    if-eqz v4, :cond_70

    .line 435
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_70} :catch_70

    .line 441
    :catch_70
    :cond_70
    throw p1

    :catch_71
    move-object v4, v0

    move v2, v1

    :catch_73
    :goto_73
    if-eqz v0, :cond_78

    .line 431
    :try_start_75
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_78} :catch_7b

    :cond_78
    if-eqz v4, :cond_7b

    goto :goto_5c

    :catch_7b
    :cond_7b
    :goto_7b
    return v2
.end method

.method public a(Ljava/lang/String;I)Z
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 451
    :try_start_2
    sget-object v2, Lorg/android/agoo/message/MessageService;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_39

    sget-object v2, Lorg/android/agoo/message/MessageService;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 452
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "MessageService"

    .line 453
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMessage,messageStores hasMessageDuplicate,msgid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_37} :catch_91
    .catchall {:try_start_2 .. :try_end_37} :catchall_84

    :cond_37
    move v2, v3

    goto :goto_3a

    :cond_39
    move v2, v1

    .line 457
    :goto_3a
    :try_start_3a
    iget-object v4, p0, Lorg/android/agoo/message/MessageService;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_40} :catch_82
    .catchall {:try_start_3a .. :try_end_40} :catchall_84

    if-nez v4, :cond_48

    if-eqz v4, :cond_47

    .line 476
    :try_start_44
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_47} :catch_47

    :catch_47
    :cond_47
    return v2

    :cond_48
    :try_start_48
    const-string v5, "select count(1) from message where id = ? and body_code=? create_time< date(\'now\',\'-1 day\')"

    const/4 v6, 0x2

    .line 461
    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 465
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_75

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_72} :catch_93
    .catchall {:try_start_48 .. :try_end_72} :catchall_80

    if-lez p1, :cond_75

    move v2, v3

    :cond_75
    if-eqz v0, :cond_7a

    .line 472
    :try_start_77
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7a
    if-eqz v4, :cond_9b

    .line 476
    :goto_7c
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_7f} :catch_9b

    goto :goto_9b

    :catchall_80
    move-exception p1

    goto :goto_86

    :catch_82
    move-object v4, v0

    goto :goto_93

    :catchall_84
    move-exception p1

    move-object v4, v0

    :goto_86
    if-eqz v0, :cond_8b

    .line 472
    :try_start_88
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8b
    if-eqz v4, :cond_90

    .line 476
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_90} :catch_90

    .line 482
    :catch_90
    :cond_90
    throw p1

    :catch_91
    move-object v4, v0

    move v2, v1

    :catch_93
    :goto_93
    if-eqz v0, :cond_98

    .line 472
    :try_start_95
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_98} :catch_9b

    :cond_98
    if-eqz v4, :cond_9b

    goto :goto_7c

    :catch_9b
    :cond_9b
    :goto_9b
    return v2
.end method

.method public b()Ljava/util/ArrayList;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/android/agoo/common/MsgDO;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "3"

    const-string v2, "2"

    const-string v3, "0"

    const-string v4, "getUnReportMsg close cursor or db, e: "

    const-string v5, "MessageService"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 344
    :try_start_e
    iget-object v8, v1, Lorg/android/agoo/message/MessageService;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_14} :catch_146
    .catchall {:try_start_e .. :try_end_14} :catchall_141

    if-nez v8, :cond_3b

    if-eqz v8, :cond_3a

    .line 394
    :try_start_18
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_3a

    :catch_1c
    move-exception v0

    move-object v2, v0

    .line 398
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3a
    :goto_3a
    return-object v6

    .line 348
    :cond_3b
    :try_start_3b
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_40} :catch_13e
    .catchall {:try_start_3b .. :try_end_40} :catchall_13b

    :try_start_40
    const-string v10, "select * from accs_message where state = ? or state = ? or state = ?"

    .line 350
    filled-new-array {v3, v2, v0}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_4a} :catch_138
    .catchall {:try_start_40 .. :try_end_4a} :catchall_13b

    if-eqz v10, :cond_10b

    :try_start_4c
    const-string v11, "id"

    .line 353
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "state"

    .line 354
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "message"

    .line 355
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "create_time"

    .line 356
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 358
    :goto_64
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_10b

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_10b

    .line 359
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 360
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 361
    sget-object v16, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v16 .. v16}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v16

    if-eqz v16, :cond_c0

    .line 362
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v12

    const-string v12, "state: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ,cursor.message:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ,cursor.id:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ,cursor.time:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move/from16 v18, v11

    const/4 v12, 0x0

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v5, v7, v11}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c4

    :cond_c0
    move/from16 v18, v11

    move/from16 v17, v12

    .line 366
    :goto_c4
    invoke-static {v3, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_cd

    const-string v7, "4"

    goto :goto_e0

    .line 368
    :cond_cd
    invoke-static {v2, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d6

    const-string v7, "8"

    goto :goto_e0

    .line 370
    :cond_d6
    invoke-static {v0, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_df

    const-string v7, "9"

    goto :goto_e0

    :cond_df
    const/4 v7, 0x0

    .line 373
    :goto_e0
    new-instance v11, Lorg/android/agoo/common/MsgDO;

    invoke-direct {v11}, Lorg/android/agoo/common/MsgDO;-><init>()V

    .line 374
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_fc

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_fc

    .line 375
    invoke-direct {v1, v6, v7}, Lorg/android/agoo/message/MessageService;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/android/agoo/common/MsgDO;

    move-result-object v6

    const-string v7, "cache"

    .line 376
    iput-object v7, v6, Lorg/android/agoo/common/MsgDO;->messageSource:Ljava/lang/String;

    .line 380
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_fc
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_fc} :catch_108
    .catchall {:try_start_4c .. :try_end_fc} :catchall_104

    :cond_fc
    move/from16 v12, v17

    move/from16 v11, v18

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_64

    :catchall_104
    move-exception v0

    move-object v2, v0

    goto/16 :goto_198

    :catch_108
    move-exception v0

    move-object v6, v10

    goto :goto_14a

    :cond_10b
    if-eqz v10, :cond_113

    .line 390
    :try_start_10d
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_113

    :catch_111
    move-exception v0

    goto :goto_11a

    :cond_113
    :goto_113
    if-eqz v8, :cond_194

    .line 394
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_10d .. :try_end_118} :catch_111

    goto/16 :goto_194

    .line 398
    :goto_11a
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_194

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_194

    :catch_138
    move-exception v0

    const/4 v6, 0x0

    goto :goto_14a

    :catchall_13b
    move-exception v0

    move-object v2, v0

    goto :goto_144

    :catch_13e
    move-exception v0

    const/4 v6, 0x0

    goto :goto_149

    :catchall_141
    move-exception v0

    move-object v2, v0

    const/4 v8, 0x0

    :goto_144
    const/4 v10, 0x0

    goto :goto_198

    :catch_146
    move-exception v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_149
    const/4 v9, 0x0

    .line 384
    :goto_14a
    :try_start_14a
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_169

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUnReportMsg, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_169
    .catchall {:try_start_14a .. :try_end_169} :catchall_195

    :cond_169
    if-eqz v6, :cond_171

    .line 390
    :try_start_16b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_171

    :catch_16f
    move-exception v0

    goto :goto_177

    :cond_171
    :goto_171
    if-eqz v8, :cond_194

    .line 394
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_176
    .catch Ljava/lang/Throwable; {:try_start_16b .. :try_end_176} :catch_16f

    goto :goto_194

    .line 398
    :goto_177
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_194

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_194
    :goto_194
    return-object v9

    :catchall_195
    move-exception v0

    move-object v2, v0

    move-object v10, v6

    :goto_198
    if-eqz v10, :cond_1a0

    .line 390
    :try_start_19a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1a0

    :catch_19e
    move-exception v0

    goto :goto_1a6

    :cond_1a0
    :goto_1a0
    if-eqz v8, :cond_1c3

    .line 394
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1a5
    .catch Ljava/lang/Throwable; {:try_start_19a .. :try_end_1a5} :catch_19e

    goto :goto_1c3

    .line 398
    :goto_1a6
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    :cond_1c3
    :goto_1c3
    throw v2
.end method
