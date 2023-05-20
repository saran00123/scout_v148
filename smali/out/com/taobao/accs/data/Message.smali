.class public Lcom/taobao/accs/data/Message;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/data/Message$a;,
        Lcom/taobao/accs/data/Message$b;,
        Lcom/taobao/accs/data/Message$ReqType;,
        Lcom/taobao/accs/data/Message$c;
    }
.end annotation


# static fields
.field public static final EXT_HEADER_VALUE_MAX_LEN:I = 0x3ff

.field public static final FLAG_ACK_TYPE:I = 0x20

.field public static final FLAG_BIZ_RET:I = 0x40

.field public static final FLAG_DATA_TYPE:I = 0x8000

.field public static final FLAG_ERR:I = 0x1000

.field public static final FLAG_REQ_BIT1:I = 0x4000

.field public static final FLAG_REQ_BIT2:I = 0x2000

.field public static final FLAG_RET:I = 0x800

.field public static final KEY_BINDAPP:Ljava/lang/String; = "ctrl_bindapp"

.field public static final KEY_BINDSERVICE:Ljava/lang/String; = "ctrl_bindservice"

.field public static final KEY_BINDUSER:Ljava/lang/String; = "ctrl_binduser"

.field public static final KEY_UNBINDAPP:Ljava/lang/String; = "ctrl_unbindapp"

.field public static final KEY_UNBINDSERVICE:Ljava/lang/String; = "ctrl_unbindservice"

.field public static final KEY_UNBINDUSER:Ljava/lang/String; = "ctrl_unbinduser"

.field public static final MAX_RETRY_TIMES:I = 0x3

.field public static a:I = 0x5

.field static b:J = 0x1L


# instance fields
.field A:Ljava/lang/String;

.field B:Ljava/lang/String;

.field C:Ljava/lang/String;

.field D:Ljava/lang/Integer;

.field E:Ljava/lang/String;

.field F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field I:Ljava/lang/String;

.field J:Ljava/lang/String;

.field K:Ljava/lang/String;

.field L:Ljava/lang/String;

.field M:Ljava/lang/String;

.field N:[B

.field public O:Ljava/lang/String;

.field P:I

.field public Q:J

.field public R:I

.field public S:I

.field public T:J

.field U:J

.field public V:Ljava/lang/String;

.field transient W:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

.field X:Ljava/lang/String;

.field Y:Lcom/taobao/accs/data/Message$a;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Ljava/net/URL;

.field g:B

.field h:B

.field i:S

.field j:S

.field k:S

.field l:B

.field m:B

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:I

.field public q:Ljava/lang/String;

.field r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field s:Ljava/lang/String;

.field public t:Ljava/lang/Integer;

.field u:Ljava/lang/Integer;

.field v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field x:Ljava/lang/Integer;

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 7

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/taobao/accs/data/Message;->c:Z

    .line 174
    iput-boolean v0, p0, Lcom/taobao/accs/data/Message;->d:Z

    .line 179
    iput-boolean v0, p0, Lcom/taobao/accs/data/Message;->e:Z

    .line 188
    iput-byte v0, p0, Lcom/taobao/accs/data/Message;->g:B

    .line 190
    iput-byte v0, p0, Lcom/taobao/accs/data/Message;->h:B

    const/4 v1, -0x1

    .line 223
    iput v1, p0, Lcom/taobao/accs/data/Message;->p:I

    const/4 v1, 0x0

    .line 230
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 232
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 234
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/accs/data/Message;->u:Ljava/lang/Integer;

    .line 236
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->v:Ljava/lang/String;

    .line 238
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->w:Ljava/lang/String;

    .line 240
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->x:Ljava/lang/Integer;

    .line 242
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->y:Ljava/lang/String;

    .line 244
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->z:Ljava/lang/String;

    .line 245
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->A:Ljava/lang/String;

    .line 247
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->B:Ljava/lang/String;

    .line 249
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->C:Ljava/lang/String;

    .line 251
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->D:Ljava/lang/Integer;

    .line 253
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    .line 255
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    .line 257
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->G:Ljava/lang/String;

    .line 259
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    .line 261
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->I:Ljava/lang/String;

    .line 263
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->J:Ljava/lang/String;

    .line 265
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->K:Ljava/lang/String;

    .line 267
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->L:Ljava/lang/String;

    .line 269
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 280
    iput-wide v2, p0, Lcom/taobao/accs/data/Message;->Q:J

    .line 282
    iput v0, p0, Lcom/taobao/accs/data/Message;->R:I

    const v0, 0x9c40

    .line 284
    iput v0, p0, Lcom/taobao/accs/data/Message;->S:I

    .line 288
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    .line 292
    iput-object v1, p0, Lcom/taobao/accs/data/Message;->X:Ljava/lang/String;

    .line 332
    const-class v0, Lcom/taobao/accs/data/Message;

    monitor-enter v0

    .line 333
    :try_start_52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/accs/data/Message;->T:J

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/taobao/accs/data/Message;->T:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/taobao/accs/data/Message;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    .line 335
    new-instance v1, Lcom/taobao/accs/data/Message$a;

    sget-wide v2, Lcom/taobao/accs/data/Message;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/taobao/accs/data/Message;->b:J

    long-to-int v2, v2

    iget-object v3, p0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/taobao/accs/data/Message$a;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/taobao/accs/data/Message;->Y:Lcom/taobao/accs/data/Message$a;

    .line 336
    monitor-exit v0

    return-void

    :catchall_8d
    move-exception v1

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_52 .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .registers 11

    .line 661
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 664
    :cond_8
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v1, 0x1

    .line 666
    iput v1, v0, Lcom/taobao/accs/data/Message;->P:I

    .line 667
    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v1, v2, v1}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 668
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/accs/data/Message;->x:Ljava/lang/Integer;

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/accs/data/Message;->y:Ljava/lang/String;

    .line 670
    iput-object p4, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    const-string v2, "3|dm|"

    .line 671
    iput-object v2, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 672
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 673
    iput-object p2, v0, Lcom/taobao/accs/data/Message;->v:Ljava/lang/String;

    .line 674
    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v1}, Lcom/taobao/accs/utl/UtilityImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->w:Ljava/lang/String;

    const/16 p2, 0xdd

    .line 675
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->D:Ljava/lang/Integer;

    .line 676
    iput-object p6, v0, Lcom/taobao/accs/data/Message;->C:Ljava/lang/String;

    .line 677
    iput-object p4, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 678
    iput-object p5, v0, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    .line 679
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->I:Ljava/lang/String;

    .line 680
    sget-object p2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->J:Ljava/lang/String;

    const-string p2, "ctrl_bindapp"

    .line 681
    iput-object p2, v0, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    .line 682
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->X:Ljava/lang/String;

    .line 683
    new-instance p1, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    invoke-direct {p1}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;-><init>()V

    .line 684
    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "notifyEnable"

    invoke-virtual {p1, p2, p0}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object p0

    .line 685
    invoke-static {}, Lcom/taobao/accs/utl/RomInfoCollecter;->getCollecter()Lcom/taobao/accs/utl/RomInfoCollecter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/accs/utl/RomInfoCollecter;->collect()Ljava/lang/String;

    move-result-object p1

    const-string p2, "romInfo"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object p0

    .line 686
    invoke-virtual {p0}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->build()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/accs/data/Message;->B:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/taobao/accs/net/b;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "packageName"

    .line 639
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "userInfo"

    .line 641
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "appKey"

    .line 643
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "ttid"

    .line 644
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "sid"

    .line 645
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "anti_brush_cookie"

    .line 646
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "appVersion"

    .line 647
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "app_sercet"

    .line 648
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 649
    iget-object v3, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/taobao/accs/data/Message;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 653
    invoke-static {p0, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_39

    goto :goto_4b

    :catch_39
    move-exception p0

    const/4 p1, 0x1

    .line 655
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "Msg"

    const-string p2, "buildBindApp"

    invoke-static {p0, p2, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4b
    return-object v0
.end method

.method public static a(Lcom/taobao/accs/net/b;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;)Lcom/taobao/accs/data/Message;
    .registers 5

    const/4 v0, 0x1

    .line 926
    invoke-static {p0, p1, p2, p3, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/taobao/accs/net/b;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;
    .registers 14

    .line 931
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 934
    :cond_8
    new-instance v7, Lcom/taobao/accs/data/Message;

    invoke-direct {v7}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v0, 0x1

    .line 935
    iput v0, v7, Lcom/taobao/accs/data/Message;->P:I

    .line 936
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v7, v0, v1, v0}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    const/16 v0, 0x64

    .line 937
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 938
    iput-object p2, v7, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 939
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    iput-object p2, v7, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    .line 940
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    iput-object p2, v7, Lcom/taobao/accs/data/Message;->G:Ljava/lang/String;

    .line 941
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    iput-object p2, v7, Lcom/taobao/accs/data/Message;->N:[B

    .line 942
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_36

    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    goto :goto_38

    :cond_36
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    .line 943
    :goto_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    const-string v8, ""

    if-nez p2, :cond_52

    move-object p2, v8

    goto :goto_54

    :cond_52
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    :goto_54
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v7, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 945
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    iput-object p2, v7, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    .line 946
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iput-object p2, v7, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    .line 947
    iget p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    if-lez p2, :cond_6d

    .line 948
    iget p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    iput p2, v7, Lcom/taobao/accs/data/Message;->S:I

    :cond_6d
    if-eqz p4, :cond_73

    .line 952
    invoke-static {p0, v7, p3}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;Lcom/taobao/accs/ACCSManager$AccsRequest;)V

    goto :goto_77

    .line 954
    :cond_73
    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    iput-object p2, v7, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    .line 957
    :goto_77
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object p2

    iget-object p4, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/taobao/accs/client/GlobalClientInfo;->getUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 958
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/taobao/accs/client/GlobalClientInfo;->getSid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 959
    sget-object v4, Lcom/taobao/accs/client/GlobalClientInfo;->b:Ljava/lang/String;

    .line 960
    iget-object p1, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getStoreId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iget-object v6, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/data/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    new-instance p1, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    invoke-direct {p1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;-><init>()V

    iput-object p1, v7, Lcom/taobao/accs/data/Message;->W:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    .line 963
    iget-object p1, v7, Lcom/taobao/accs/data/Message;->W:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setMsgType(I)V

    .line 964
    iget-object p1, v7, Lcom/taobao/accs/data/Message;->W:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDataId(Ljava/lang/String;)V

    .line 965
    iget-object p1, v7, Lcom/taobao/accs/data/Message;->W:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object p2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setServiceId(Ljava/lang/String;)V

    .line 966
    iget-object p1, v7, Lcom/taobao/accs/data/Message;->W:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object p2, v7, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-eqz p2, :cond_c0

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_c0
    invoke-virtual {p1, v8}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setHost(Ljava/lang/String;)V

    .line 967
    iget-object p0, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iput-object p0, v7, Lcom/taobao/accs/data/Message;->X:Ljava/lang/String;

    return-object v7
.end method

.method public static a(Lcom/taobao/accs/net/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;
    .registers 14

    .line 974
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 977
    :cond_8
    new-instance v7, Lcom/taobao/accs/data/Message;

    invoke-direct {v7}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v0, 0x1

    .line 978
    iput v0, v7, Lcom/taobao/accs/data/Message;->P:I

    .line 979
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v7, v0, v1, v0}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    const/16 v0, 0x64

    .line 980
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 981
    iput-object p2, v7, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 982
    iget-object p2, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    iput-object p2, v7, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    .line 983
    iget-object p2, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    iput-object p2, v7, Lcom/taobao/accs/data/Message;->G:Ljava/lang/String;

    .line 984
    iget-object p2, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    iput-object p2, v7, Lcom/taobao/accs/data/Message;->N:[B

    .line 985
    iget-object p2, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_36

    iget-object p2, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    goto :goto_38

    :cond_36
    iget-object p2, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    .line 986
    :goto_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    const-string p3, ""

    if-nez p2, :cond_50

    move-object p2, p3

    goto :goto_52

    :cond_50
    iget-object p2, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    :goto_52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v7, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 988
    iget-object p2, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    iput-object p2, v7, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    .line 989
    iget-object p2, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iput-object p2, v7, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    .line 990
    iget-object p2, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iput-object p2, v7, Lcom/taobao/accs/data/Message;->X:Ljava/lang/String;

    .line 991
    iget p2, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    if-lez p2, :cond_6f

    .line 992
    iget p2, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    iput p2, v7, Lcom/taobao/accs/data/Message;->S:I

    :cond_6f
    if-eqz p5, :cond_75

    .line 996
    invoke-static {p0, v7, p4}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;Lcom/taobao/accs/ACCSManager$AccsRequest;)V

    goto :goto_79

    .line 998
    :cond_75
    iget-object p2, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    iput-object p2, v7, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    .line 1001
    :goto_79
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object p2

    iget-object p5, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {p2, p5}, Lcom/taobao/accs/client/GlobalClientInfo;->getUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1002
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/taobao/accs/client/GlobalClientInfo;->getSid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1004
    sget-object v4, Lcom/taobao/accs/client/GlobalClientInfo;->b:Ljava/lang/String;

    .line 1005
    iget-object p1, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getStoreId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iget-object v6, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/data/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    new-instance p1, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    invoke-direct {p1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;-><init>()V

    iput-object p1, v7, Lcom/taobao/accs/data/Message;->W:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    .line 1008
    iget-object p1, v7, Lcom/taobao/accs/data/Message;->W:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object p2, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDataId(Ljava/lang/String;)V

    .line 1009
    iget-object p1, v7, Lcom/taobao/accs/data/Message;->W:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object p2, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setServiceId(Ljava/lang/String;)V

    .line 1010
    iget-object p1, v7, Lcom/taobao/accs/data/Message;->W:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object p2, v7, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-eqz p2, :cond_bc

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_bc
    invoke-virtual {p1, p3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setHost(Ljava/lang/String;)V

    .line 1011
    iget-object p0, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iput-object p0, v7, Lcom/taobao/accs/data/Message;->X:Ljava/lang/String;

    return-object v7
.end method

.method public static a(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .registers 8

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildUnbindApp1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Msg"

    invoke-static {v4, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :try_start_23
    const-string v3, "packageName"

    .line 695
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "userInfo"

    .line 697
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "sid"

    .line 698
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "anti_brush_cookie"

    .line 699
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 700
    invoke-static {p0, v3}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 703
    invoke-static {p0, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3f} :catch_40

    goto :goto_4d

    :catch_40
    move-exception p0

    const/4 p1, 0x1

    .line 706
    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    invoke-static {v4, v1, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4d
    return-object v0
.end method

.method public static a(Lcom/taobao/accs/net/b;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .registers 9

    const-string v0, "buildUnbindApp"

    const-string v1, "Msg"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 714
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v6}, Lcom/taobao/accs/utl/UtilityImpl;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2b

    return-object v3

    .line 718
    :cond_2b
    new-instance v5, Lcom/taobao/accs/data/Message;

    invoke-direct {v5}, Lcom/taobao/accs/data/Message;-><init>()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_30} :catch_58

    .line 719
    :try_start_30
    iput v4, v5, Lcom/taobao/accs/data/Message;->P:I

    .line 720
    sget-object v3, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v5, v4, v3, v4}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 721
    iput-object p1, v5, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    const-string v3, "3|dm|"

    .line 722
    iput-object v3, v5, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const/4 v3, 0x2

    .line 723
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v5, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 724
    iput-object p1, v5, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    const/16 p1, 0xdd

    .line 725
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v5, Lcom/taobao/accs/data/Message;->D:Ljava/lang/Integer;

    const-string p1, "ctrl_unbindapp"

    .line 726
    iput-object p1, v5, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    .line 729
    invoke-static {p0, v5}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_55} :catch_56

    goto :goto_65

    :catch_56
    move-exception p0

    goto :goto_5a

    :catch_58
    move-exception p0

    move-object v5, v3

    .line 731
    :goto_5a
    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    invoke-static {v1, v0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_65
    return-object v5
.end method

.method public static a(Lcom/taobao/accs/net/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZSLjava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/net/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZS",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taobao/accs/data/Message;"
        }
    .end annotation

    .line 1049
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v1, 0x1

    .line 1050
    iput v1, v0, Lcom/taobao/accs/data/Message;->P:I

    .line 1051
    invoke-direct {v0, p5, p4}, Lcom/taobao/accs/data/Message;->a(SZ)V

    .line 1052
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    .line 1053
    iput-object p2, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 1054
    iput-object p3, v0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    .line 1055
    iput-boolean v1, v0, Lcom/taobao/accs/data/Message;->c:Z

    .line 1056
    iput-object p7, v0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    const/4 p1, 0x0

    .line 1058
    :try_start_16
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 1059
    new-instance p2, Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    goto :goto_2f

    .line 1061
    :cond_28
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    .line 1063
    :goto_2f
    iget-object p2, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->X:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_33} :catch_45
    .catchall {:try_start_16 .. :try_end_33} :catchall_43

    .line 1067
    iget-object p2, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-nez p2, :cond_64

    .line 1069
    :try_start_37
    new-instance p2, Ljava/net/URL;

    .line 1070
    invoke-virtual {p0, p1}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;
    :try_end_42
    .catch Ljava/net/MalformedURLException; {:try_start_37 .. :try_end_42} :catch_60

    goto :goto_64

    :catchall_43
    move-exception p2

    goto :goto_65

    :catch_45
    move-exception p2

    :try_start_46
    const-string p3, "Msg"

    const-string p4, "buildPushAck"

    const/4 p5, 0x0

    .line 1065
    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p3, p4, p2, p5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_43

    .line 1067
    iget-object p2, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-nez p2, :cond_64

    .line 1069
    :try_start_54
    new-instance p2, Ljava/net/URL;

    .line 1070
    invoke-virtual {p0, p1}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;
    :try_end_5f
    .catch Ljava/net/MalformedURLException; {:try_start_54 .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception p0

    .line 1072
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_64
    :goto_64
    return-object v0

    .line 1067
    :goto_65
    iget-object p3, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-nez p3, :cond_79

    .line 1069
    :try_start_69
    new-instance p3, Ljava/net/URL;

    .line 1070
    invoke-virtual {p0, p1}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p3, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;
    :try_end_74
    .catch Ljava/net/MalformedURLException; {:try_start_69 .. :try_end_74} :catch_75

    goto :goto_79

    :catch_75
    move-exception p0

    .line 1072
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 1075
    :cond_79
    :goto_79
    throw p2
.end method

.method public static a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .registers 4

    .line 911
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 914
    :cond_8
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v1, 0x1

    .line 915
    iput v1, v0, Lcom/taobao/accs/data/Message;->P:I

    .line 916
    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v1, v2, v1}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 917
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    const-string p0, "3|dm|"

    .line 918
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const/4 p0, 0x4

    .line 919
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    const/16 p0, 0xdd

    .line 920
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/accs/data/Message;->D:Ljava/lang/Integer;

    const-string p0, "ctrl_unbinduser"

    .line 921
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;
    .registers 6

    .line 1080
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 1081
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->ACK:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 1082
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 1083
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .registers 5

    .line 764
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3a

    .line 767
    :cond_d
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v1, 0x1

    .line 768
    iput v1, v0, Lcom/taobao/accs/data/Message;->P:I

    .line 769
    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v1, v2, v1}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 770
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 771
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    const-string v1, "3|dm|"

    .line 772
    iput-object v1, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const/4 v1, 0x5

    .line 773
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 774
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 775
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    const/16 p0, 0xdd

    .line 776
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/accs/data/Message;->D:Ljava/lang/Integer;

    const-string p0, "ctrl_bindservice"

    .line 777
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    return-object v0

    :cond_3a
    :goto_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;
    .registers 7

    .line 872
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 874
    :try_start_5
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p2

    .line 876
    invoke-virtual {p2}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_11
    const-string p2, "4|sal|st"

    .line 878
    iput-object p2, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const/4 p2, 0x1

    .line 879
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    const/16 p2, 0x64

    .line 880
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 881
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0|"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "|"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/accs/data/Message;->N:[B

    return-object v0
.end method

.method public static a(ZI)Lcom/taobao/accs/data/Message;
    .registers 4

    .line 617
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v1, 0x2

    .line 618
    iput v1, v0, Lcom/taobao/accs/data/Message;->p:I

    const/16 v1, 0xc9

    .line 619
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 620
    iput-boolean p0, v0, Lcom/taobao/accs/data/Message;->d:Z

    int-to-long p0, p1

    .line 621
    iput-wide p0, v0, Lcom/taobao/accs/data/Message;->Q:J

    return-object v0
.end method

.method private a(ILcom/taobao/accs/data/Message$ReqType;I)V
    .registers 5

    .line 1117
    iput p1, p0, Lcom/taobao/accs/data/Message;->p:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_15

    and-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x4

    .line 1119
    invoke-virtual {p2}, Lcom/taobao/accs/data/Message$ReqType;->ordinal()I

    move-result p2

    shl-int/2addr p2, v0

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    shl-int/lit8 p1, p1, 0xb

    int-to-short p1, p1

    iput-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    :cond_15
    return-void
.end method

.method private static a(Lcom/taobao/accs/data/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 1088
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1089
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1090
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1091
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz p4, :cond_a9

    .line 1093
    :cond_1a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    const/16 v0, 0x3ff

    if-eqz p5, :cond_3a

    .line 1094
    invoke-static {p5}, Lcom/taobao/accs/utl/UtilityImpl;->a(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v0, :cond_3a

    .line 1095
    iget-object v1, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    sget-object v2, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_BUSINESS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v2}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    if-eqz p1, :cond_51

    .line 1097
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->a(Ljava/lang/String;)I

    move-result p5

    if-gt p5, v0, :cond_51

    .line 1098
    iget-object p5, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_SID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v1}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p5, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    if-eqz p2, :cond_68

    .line 1100
    invoke-static {p2}, Lcom/taobao/accs/utl/UtilityImpl;->a(Ljava/lang/String;)I

    move-result p1

    if-gt p1, v0, :cond_68

    .line 1101
    iget-object p1, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    sget-object p5, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_USERID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {p5}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p1, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    if-eqz p6, :cond_7f

    .line 1103
    invoke-static {p6}, Lcom/taobao/accs/utl/UtilityImpl;->a(Ljava/lang/String;)I

    move-result p1

    if-gt p1, v0, :cond_7f

    .line 1104
    iget-object p1, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    sget-object p2, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_TAG:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {p2}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7f
    if-eqz p4, :cond_96

    .line 1106
    invoke-static {p4}, Lcom/taobao/accs/utl/UtilityImpl;->a(Ljava/lang/String;)I

    move-result p1

    if-gt p1, v0, :cond_96

    .line 1107
    iget-object p1, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    sget-object p2, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_COOKIE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {p2}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_96
    if-eqz p3, :cond_a9

    .line 1109
    invoke-static {p3}, Lcom/taobao/accs/utl/UtilityImpl;->a(Ljava/lang/String;)I

    move-result p1

    if-gt p1, v0, :cond_a9

    .line 1110
    iget-object p0, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    const/16 p1, 0x13

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a9
    return-void
.end method

.method private static a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;)V
    .registers 4

    const/4 v0, 0x0

    .line 1041
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1042
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    goto :goto_18

    :catch_d
    move-exception p0

    const/4 p1, 0x0

    .line 1044
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Msg"

    const-string v1, "setControlHost"

    invoke-static {v0, v1, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_18
    return-void
.end method

.method private static a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;Lcom/taobao/accs/ACCSManager$AccsRequest;)V
    .registers 4

    .line 1025
    iget-object v0, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    if-nez v0, :cond_20

    .line 1027
    :try_start_4
    new-instance p2, Ljava/net/URL;

    const/4 v0, 0x0

    .line 1028
    invoke-virtual {p0, v0}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p2, p1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;
    :try_end_10
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_10} :catch_11

    goto :goto_24

    :catch_11
    move-exception p0

    const/4 p1, 0x0

    .line 1030
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Msg"

    const-string v0, "setUnit"

    invoke-static {p2, v0, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1031
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_24

    .line 1034
    :cond_20
    iget-object p0, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    iput-object p0, p1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    :goto_24
    return-void
.end method

.method private a(SZ)V
    .registers 4

    const/4 v0, 0x1

    .line 1132
    iput v0, p0, Lcom/taobao/accs/data/Message;->p:I

    .line 1134
    iput-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    .line 1136
    iget-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    and-int/lit16 p1, p1, -0x4001

    int-to-short p1, p1

    iput-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    .line 1138
    iget-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    or-int/lit16 p1, p1, 0x2000

    int-to-short p1, p1

    iput-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    .line 1140
    iget-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    and-int/lit16 p1, p1, -0x801

    int-to-short p1, p1

    iput-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    .line 1142
    iget-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    and-int/lit8 p1, p1, -0x41

    int-to-short p1, p1

    iput-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    if-eqz p2, :cond_2a

    .line 1146
    iget-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    or-int/lit8 p1, p1, 0x20

    int-to-short p1, p1

    iput-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    :cond_2a
    return-void
.end method

.method public static b(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "packageName"

    .line 741
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceId"

    .line 743
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userInfo"

    .line 745
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "appKey"

    .line 747
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "sid"

    .line 748
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "anti_brush_cookie"

    .line 749
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 750
    invoke-static {v1, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 752
    iget-object p1, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iput-object p1, v0, Lcom/taobao/accs/data/Message;->X:Ljava/lang/String;

    .line 755
    invoke-static {p0, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    goto :goto_3b

    :catch_2d
    move-exception p0

    const/4 p1, 0x0

    .line 757
    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "Msg"

    const-string v2, "buildBindService"

    invoke-static {v1, v2, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 758
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3b
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .registers 5

    .line 809
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3a

    .line 812
    :cond_d
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v1, 0x1

    .line 813
    iput v1, v0, Lcom/taobao/accs/data/Message;->P:I

    .line 814
    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v1, v2, v1}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 815
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 816
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    const-string v1, "3|dm|"

    .line 817
    iput-object v1, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const/4 v1, 0x6

    .line 818
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 819
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 820
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    const/16 p0, 0xdd

    .line 821
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/accs/data/Message;->D:Ljava/lang/Integer;

    const-string p0, "ctrl_unbindservice"

    .line 822
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    return-object v0

    :cond_3a
    :goto_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "packageName"

    .line 786
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceId"

    .line 788
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userInfo"

    .line 790
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "appKey"

    .line 792
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "sid"

    .line 793
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "anti_brush_cookie"

    .line 794
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 795
    invoke-static {v1, v2}, Lcom/taobao/accs/data/Message;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 797
    iget-object p1, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iput-object p1, v0, Lcom/taobao/accs/data/Message;->X:Ljava/lang/String;

    .line 800
    invoke-static {p0, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    goto :goto_3b

    :catch_2d
    move-exception p0

    const/4 p1, 0x0

    .line 802
    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "Msg"

    const-string v2, "buildUnbindService"

    invoke-static {v1, v2, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 803
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3b
    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .registers 5

    .line 854
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3a

    .line 857
    :cond_d
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    const/4 v1, 0x1

    .line 858
    iput v1, v0, Lcom/taobao/accs/data/Message;->P:I

    .line 859
    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v1, v2, v1}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 860
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 861
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->G:Ljava/lang/String;

    const-string v1, "3|dm|"

    .line 862
    iput-object v1, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const/4 v1, 0x3

    .line 863
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 864
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 865
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->G:Ljava/lang/String;

    const/16 p0, 0xdd

    .line 866
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/accs/data/Message;->D:Ljava/lang/Integer;

    const-string p0, "ctrl_binduser"

    .line 867
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    return-object v0

    :cond_3a
    :goto_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "packageName"

    .line 831
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userInfo"

    .line 833
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "appKey"

    .line 835
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "sid"

    .line 836
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "anti_brush_cookie"

    .line 837
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 838
    invoke-static {v1, v2}, Lcom/taobao/accs/data/Message;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 841
    iget-object p1, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iput-object p1, v0, Lcom/taobao/accs/data/Message;->X:Ljava/lang/String;

    .line 844
    invoke-static {p0, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2a

    goto :goto_38

    :catch_2a
    move-exception p0

    const/4 p1, 0x0

    .line 847
    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "Msg"

    const-string v2, "buildBindUser"

    invoke-static {v1, v2, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 848
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_38
    :goto_38
    return-object v0
.end method

.method public static e(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "packageName"

    .line 890
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userInfo"

    .line 892
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "appKey"

    .line 894
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "sid"

    .line 895
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "anti_brush_cookie"

    .line 896
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 897
    invoke-static {v1}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 899
    iget-object p1, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iput-object p1, v0, Lcom/taobao/accs/data/Message;->X:Ljava/lang/String;

    .line 902
    invoke-static {p0, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    goto :goto_35

    :catch_27
    move-exception p0

    const/4 p1, 0x0

    .line 904
    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "Msg"

    const-string v2, "buildUnbindUser"

    invoke-static {v1, v2, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 905
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_35
    return-object v0
.end method

.method private j()Ljava/lang/String;
    .registers 3

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Msg"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 344
    iget v0, p0, Lcom/taobao/accs/data/Message;->p:I

    return v0
.end method

.method a(Ljava/util/Map;)S
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)S"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3e

    .line 531
    :try_start_3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 532
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 533
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "utf-8"

    .line 534
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_32} :catch_3a

    and-int/lit16 v2, v2, 0x3ff

    int-to-short v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-short v0, v0

    goto :goto_b

    :catch_3a
    move-exception p1

    .line 540
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :cond_3e
    return v0
.end method

.method public a(J)V
    .registers 3

    .line 360
    iput-wide p1, p0, Lcom/taobao/accs/data/Message;->U:J

    return-void
.end method

.method public a(Landroid/content/Context;I)[B
    .registers 12

    const-string v0, "utf-8"

    const/4 v1, 0x0

    .line 395
    :try_start_3
    invoke-virtual {p0}, Lcom/taobao/accs/data/Message;->i()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_6} :catch_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_20

    :catch_7
    move-exception v2

    .line 399
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "build2"

    invoke-static {v3, v5, v2, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_20

    :catch_14
    move-exception v2

    .line 397
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "build1"

    invoke-static {v3, v5, v2, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 402
    :goto_20
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->N:[B

    const-string v3, ""

    if-eqz v2, :cond_2c

    .line 403
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_2d

    :cond_2c
    move-object v4, v3

    .line 407
    :goto_2d
    invoke-virtual {p0}, Lcom/taobao/accs/data/Message;->h()V

    .line 408
    iget-boolean v2, p0, Lcom/taobao/accs/data/Message;->c:Z

    if-nez v2, :cond_66

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 411
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    if-nez v5, :cond_52

    move-object v5, v3

    .line 412
    :cond_52
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/data/Message;->G:Ljava/lang/String;

    if-nez p1, :cond_5d

    move-object p1, v3

    .line 413
    :cond_5d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    .line 418
    :cond_66
    :try_start_66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 419
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/taobao/accs/data/Message;->m:B

    .line 420
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/taobao/accs/data/Message;->l:B
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_8f} :catch_90

    goto :goto_c8

    :catch_90
    move-exception p1

    .line 422
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 423
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "build3"

    invoke-static {v2, v6, p1, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 424
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 425
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/taobao/accs/data/Message;->m:B

    .line 426
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/taobao/accs/data/Message;->l:B

    .line 429
    :goto_c8
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/util/Map;)S

    move-result v2

    .line 430
    iget-byte v3, p0, Lcom/taobao/accs/data/Message;->l:B

    add-int/lit8 v3, v3, 0x3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iget-byte v6, p0, Lcom/taobao/accs/data/Message;->m:B

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    array-length v6, p1

    add-int/2addr v3, v6

    iget-object v6, p0, Lcom/taobao/accs/data/Message;->N:[B

    if-nez v6, :cond_e0

    move v6, v1

    goto :goto_e1

    :cond_e0
    array-length v6, v6

    :goto_e1
    add-int/2addr v3, v6

    add-int/2addr v3, v2

    const/4 v6, 0x2

    add-int/2addr v3, v6

    int-to-short v3, v3

    iput-short v3, p0, Lcom/taobao/accs/data/Message;->j:S

    .line 431
    iget-short v3, p0, Lcom/taobao/accs/data/Message;->j:S

    add-int/2addr v3, v6

    int-to-short v3, v3

    iput-short v3, p0, Lcom/taobao/accs/data/Message;->i:S

    .line 432
    new-instance v3, Lcom/taobao/accs/utl/g;

    iget-short v7, p0, Lcom/taobao/accs/data/Message;->i:S

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x4

    invoke-direct {v3, v7}, Lcom/taobao/accs/utl/g;-><init>(I)V

    .line 433
    sget-object v7, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v7}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v7

    if-eqz v7, :cond_116

    .line 434
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "dataId"

    aput-object v8, v6, v1

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1}, Ljava/lang/String;-><init>([B)V

    aput-object v8, v6, v5

    const-string v5, "Build Message"

    invoke-static {v7, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    :cond_116
    :try_start_116
    iget-byte v5, p0, Lcom/taobao/accs/data/Message;->g:B

    or-int/lit8 v5, v5, 0x20

    int-to-byte v5, v5

    invoke-virtual {v3, v5}, Lcom/taobao/accs/utl/g;->a(B)Lcom/taobao/accs/utl/g;

    .line 438
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_142

    .line 439
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tversion:2 compress:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v7, p0, Lcom/taobao/accs/data/Message;->g:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_142
    if-nez p2, :cond_15d

    const/16 p2, -0x80

    .line 442
    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/g;->a(B)Lcom/taobao/accs/utl/g;

    .line 443
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_175

    .line 444
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    const-string v5, "\tflag: 0x80"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p2, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_175

    :cond_15d
    const/16 p2, 0x40

    .line 447
    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/g;->a(B)Lcom/taobao/accs/utl/g;

    .line 448
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_175

    .line 449
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    const-string v5, "\tflag: 0x40"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p2, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    :cond_175
    :goto_175
    iget-short p2, p0, Lcom/taobao/accs/data/Message;->i:S

    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/g;->a(S)Lcom/taobao/accs/utl/g;

    .line 453
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_19e

    .line 454
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ttotalLength:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/taobao/accs/data/Message;->i:S

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p2, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    :cond_19e
    iget-short p2, p0, Lcom/taobao/accs/data/Message;->j:S

    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/g;->a(S)Lcom/taobao/accs/utl/g;

    .line 457
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_1c7

    .line 458
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tdataLength:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/taobao/accs/data/Message;->j:S

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p2, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    :cond_1c7
    iget-short p2, p0, Lcom/taobao/accs/data/Message;->k:S

    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/g;->a(S)Lcom/taobao/accs/utl/g;

    .line 461
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_1f4

    .line 462
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tflags:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/taobao/accs/data/Message;->k:S

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p2, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    :cond_1f4
    iget-byte p2, p0, Lcom/taobao/accs/data/Message;->l:B

    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/g;->a(B)Lcom/taobao/accs/utl/g;

    .line 465
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_21d

    .line 466
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ttargetLength:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v6, p0, Lcom/taobao/accs/data/Message;->l:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p2, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    :cond_21d
    iget-object p2, p0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/g;->write([B)V

    .line 469
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_24a

    .line 470
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ttarget:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p2, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    :cond_24a
    iget-byte p2, p0, Lcom/taobao/accs/data/Message;->m:B

    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/g;->a(B)Lcom/taobao/accs/utl/g;

    .line 473
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_273

    .line 474
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tsourceLength:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v6, p0, Lcom/taobao/accs/data/Message;->m:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p2, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    :cond_273
    iget-object p2, p0, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/g;->write([B)V

    .line 477
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_2a0

    .line 478
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tsource:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p2, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    :cond_2a0
    array-length p2, p1

    int-to-byte p2, p2

    invoke-virtual {v3, p2}, Lcom/taobao/accs/utl/g;->a(B)Lcom/taobao/accs/utl/g;

    .line 481
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_2c8

    .line 482
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tdataIdLength:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p2, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    :cond_2c8
    invoke-virtual {v3, p1}, Lcom/taobao/accs/utl/g;->write([B)V

    .line 485
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_2f2

    .line 486
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tdataId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    :cond_2f2
    invoke-virtual {v3, v2}, Lcom/taobao/accs/utl/g;->a(S)Lcom/taobao/accs/utl/g;

    .line 489
    sget-object p1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p1

    if-eqz p1, :cond_317

    .line 490
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\textHeader len:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    :cond_317
    iget-object p1, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    if-eqz p1, :cond_389

    .line 493
    iget-object p1, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_325
    :goto_325
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_389

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 494
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 495
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_325

    int-to-short v5, p2

    .line 497
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    and-int/lit16 v6, v6, 0x3ff

    int-to-short v6, v6

    shl-int/lit8 v5, v5, 0xa

    or-int/2addr v5, v6

    int-to-short v5, v5

    .line 498
    invoke-virtual {v3, v5}, Lcom/taobao/accs/utl/g;->a(S)Lcom/taobao/accs/utl/g;

    .line 499
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/taobao/accs/utl/g;->write([B)V

    .line 500
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_325

    .line 501
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\textHeader key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " value:"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, p2, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_325

    .line 507
    :cond_389
    iget-object p1, p0, Lcom/taobao/accs/data/Message;->N:[B

    if-eqz p1, :cond_392

    .line 508
    iget-object p1, p0, Lcom/taobao/accs/data/Message;->N:[B

    invoke-virtual {v3, p1}, Lcom/taobao/accs/utl/g;->write([B)V

    .line 510
    :cond_392
    sget-object p1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p1

    if-eqz p1, :cond_3b4

    .line 511
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\toriData:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    :cond_3b4
    invoke-virtual {v3}, Lcom/taobao/accs/utl/g;->flush()V
    :try_end_3b7
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_3b7} :catch_3b8

    goto :goto_3c4

    :catch_3b8
    move-exception p1

    .line 515
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "build4"

    invoke-static {p2, v2, p1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 517
    :goto_3c4
    invoke-virtual {v3}, Lcom/taobao/accs/utl/g;->toByteArray()[B

    move-result-object p1

    .line 520
    :try_start_3c8
    invoke-virtual {v3}, Lcom/taobao/accs/utl/g;->close()V
    :try_end_3cb
    .catch Ljava/io/IOException; {:try_start_3c8 .. :try_end_3cb} :catch_3cc

    goto :goto_3d8

    :catch_3cc
    move-exception p2

    .line 522
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "build5"

    invoke-static {v0, v2, p2, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_3d8
    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const-string v1, "3|dm|"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Lcom/taobao/accs/data/Message$a;
    .registers 2

    .line 356
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->Y:Lcom/taobao/accs/data/Message$a;

    return-object v0
.end method

.method public e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
    .registers 2

    .line 364
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->W:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public g()Z
    .registers 9

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/taobao/accs/data/Message;->T:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/taobao/accs/data/Message;->Q:J

    add-long/2addr v0, v2

    iget v2, p0, Lcom/taobao/accs/data/Message;->S:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    if-eqz v0, :cond_4c

    .line 386
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delay time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/taobao/accs/data/Message;->Q:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " beforeSendTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/taobao/accs/data/Message;->T:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " timeout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/taobao/accs/data/Message;->S:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    .line 386
    invoke-static {v2, v3, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4c
    return v0
.end method

.method h()V
    .registers 8

    const/4 v0, 0x0

    .line 550
    :try_start_1
    iget-object v1, p0, Lcom/taobao/accs/data/Message;->N:[B

    if-nez v1, :cond_6

    return-void

    .line 553
    :cond_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_41
    .catchall {:try_start_1 .. :try_end_b} :catchall_3c

    .line 554
    :try_start_b
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_37
    .catchall {:try_start_b .. :try_end_10} :catchall_32

    .line 555
    :try_start_10
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->N:[B

    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 556
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 558
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_29

    .line 559
    array-length v3, v0

    iget-object v4, p0, Lcom/taobao/accs/data/Message;->N:[B

    array-length v4, v4

    if-ge v3, v4, :cond_29

    .line 560
    iput-object v0, p0, Lcom/taobao/accs/data/Message;->N:[B

    const/4 v0, 0x1

    .line 561
    iput-byte v0, p0, Lcom/taobao/accs/data/Message;->g:B
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_29} :catch_30
    .catchall {:try_start_10 .. :try_end_29} :catchall_5a

    .line 568
    :cond_29
    :try_start_29
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 571
    :goto_2c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2f} :catch_59

    goto :goto_59

    :catch_30
    move-exception v0

    goto :goto_45

    :catchall_32
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_5b

    :catch_37
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_45

    :catchall_3c
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_5b

    :catch_41
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 564
    :goto_45
    :try_start_45
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v3

    const-string v4, "compressData fail"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_5a

    if-eqz v2, :cond_56

    .line 568
    :try_start_53
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_59

    :cond_56
    if-eqz v1, :cond_59

    goto :goto_2c

    :catch_59
    :cond_59
    :goto_59
    return-void

    :catchall_5a
    move-exception v0

    :goto_5b
    if-eqz v2, :cond_60

    :try_start_5d
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_60
    if-eqz v1, :cond_65

    .line 571
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_65} :catch_65

    .line 576
    :catch_65
    :cond_65
    throw v0
.end method

.method i()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v0, :cond_9f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_9f

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x66

    if-ne v0, v2, :cond_18

    goto/16 :goto_9f

    .line 584
    :cond_18
    new-instance v0, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    invoke-direct {v0}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 585
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_27

    const/4 v1, 0x0

    goto :goto_29

    :cond_27
    iget-object v1, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    :goto_29
    const-string v2, "command"

    invoke-virtual {v0, v2, v1}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->v:Ljava/lang/String;

    const-string v2, "appKey"

    .line 586
    invoke-virtual {v0, v2, v1}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->x:Ljava/lang/Integer;

    const-string v2, "osType"

    .line 587
    invoke-virtual {v0, v2, v1}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->w:Ljava/lang/String;

    const-string v2, "sign"

    .line 588
    invoke-virtual {v0, v2, v1}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->D:Ljava/lang/Integer;

    const-string v2, "sdkVersion"

    .line 589
    invoke-virtual {v0, v2, v1}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->C:Ljava/lang/String;

    const-string v2, "appVersion"

    .line 590
    invoke-virtual {v0, v2, v1}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    const-string v2, "ttid"

    .line 591
    invoke-virtual {v0, v2, v1}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->I:Ljava/lang/String;

    const-string v2, "model"

    .line 592
    invoke-virtual {v0, v2, v1}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->J:Ljava/lang/String;

    const-string v2, "brand"

    .line 593
    invoke-virtual {v0, v2, v1}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->K:Ljava/lang/String;

    const-string v2, "imei"

    .line 594
    invoke-virtual {v0, v2, v1}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->L:Ljava/lang/String;

    const-string v2, "imsi"

    .line 595
    invoke-virtual {v0, v2, v1}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->y:Ljava/lang/String;

    const-string v2, "os"

    .line 596
    invoke-virtual {v0, v2, v1}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->B:Ljava/lang/String;

    const-string v2, "exts"

    .line 597
    invoke-virtual {v0, v2, v1}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    .line 598
    invoke-virtual {v0}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/data/Message;->N:[B

    :cond_9f
    :goto_9f
    return-void
.end method
