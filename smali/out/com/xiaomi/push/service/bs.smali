.class public Lcom/xiaomi/push/service/bs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/bs$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/push/service/bs;

.field private static a:Ljava/lang/String;


# instance fields
.field private a:Lcom/xiaomi/push/an$b;

.field private a:Lcom/xiaomi/push/dv$a;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/push/service/bs$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/push/service/bs;

    invoke-direct {v0}, Lcom/xiaomi/push/service/bs;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/bs;->a:Lcom/xiaomi/push/service/bs;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/bs;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/bs;Lcom/xiaomi/push/an$b;)Lcom/xiaomi/push/an$b;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/service/bs;->a:Lcom/xiaomi/push/an$b;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/push/service/bs;)Lcom/xiaomi/push/dv$a;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/service/bs;->a:Lcom/xiaomi/push/dv$a;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/bs;Lcom/xiaomi/push/dv$a;)Lcom/xiaomi/push/dv$a;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/service/bs;->a:Lcom/xiaomi/push/dv$a;

    return-object p1
.end method

.method public static a()Lcom/xiaomi/push/service/bs;
    .registers 1

    sget-object v0, Lcom/xiaomi/push/service/bs;->a:Lcom/xiaomi/push/service/bs;

    return-object v0
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/xiaomi/push/service/bs;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/xiaomi/push/service/bs;->a:Ljava/lang/String;

    if-nez v1, :cond_3c

    invoke-static {}, Lcom/xiaomi/push/u;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "XMPushServiceConfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "DeviceUUID"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/push/service/bs;->a:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/push/service/bs;->a:Ljava/lang/String;

    if-nez v2, :cond_3c

    invoke-static {}, Lcom/xiaomi/push/u;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/xiaomi/push/i;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/push/service/bs;->a:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/push/service/bs;->a:Ljava/lang/String;

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "DeviceUUID"

    sget-object v3, Lcom/xiaomi/push/service/bs;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3c
    sget-object v1, Lcom/xiaomi/push/service/bs;->a:Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_40

    monitor-exit v0

    return-object v1

    :catchall_40
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/xiaomi/push/service/bs;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/service/bs;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/bs;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/push/service/bs;->e()V

    return-void
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/service/bs;->a:Lcom/xiaomi/push/dv$a;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/xiaomi/push/service/bs;->d()V

    :cond_7
    return-void
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/service/bs;->a:Lcom/xiaomi/push/an$b;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/xiaomi/push/service/bt;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/bt;-><init>(Lcom/xiaomi/push/service/bs;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/bs;->a:Lcom/xiaomi/push/an$b;

    iget-object v0, p0, Lcom/xiaomi/push/service/bs;->a:Lcom/xiaomi/push/an$b;

    invoke-static {v0}, Lcom/xiaomi/push/hm;->a(Lcom/xiaomi/push/an$b;)V

    return-void
.end method

.method private d()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/xiaomi/push/u;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "XMCloudCfg"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_2b
    .catchall {:try_start_1 .. :try_end_10} :catchall_29

    :try_start_10
    invoke-static {v2}, Lcom/xiaomi/push/b;->a(Ljava/io/InputStream;)Lcom/xiaomi/push/b;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/dv$a;->b(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/dv$a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/bs;->a:Lcom/xiaomi/push/dv$a;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_25
    .catchall {:try_start_10 .. :try_end_1d} :catchall_21

    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    goto :goto_47

    :catchall_21
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_53

    :catch_25
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2c

    :catchall_29
    move-exception v1

    goto :goto_53

    :catch_2b
    move-exception v1

    :goto_2c
    :try_start_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load config failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_29

    invoke-static {v0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    :goto_47
    iget-object v0, p0, Lcom/xiaomi/push/service/bs;->a:Lcom/xiaomi/push/dv$a;

    if-nez v0, :cond_52

    new-instance v0, Lcom/xiaomi/push/dv$a;

    invoke-direct {v0}, Lcom/xiaomi/push/dv$a;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/bs;->a:Lcom/xiaomi/push/dv$a;

    :cond_52
    return-void

    :goto_53
    invoke-static {v0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private e()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/bs;->a:Lcom/xiaomi/push/dv$a;

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/xiaomi/push/u;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "XMCloudCfg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1}, Lcom/xiaomi/push/c;->a(Ljava/io/OutputStream;)Lcom/xiaomi/push/c;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/service/bs;->a:Lcom/xiaomi/push/dv$a;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/dv$a;->a(Lcom/xiaomi/push/c;)V

    invoke-virtual {v0}, Lcom/xiaomi/push/c;->a()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_3d

    :catch_24
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save config failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/push/service/bs;->b()V

    iget-object v0, p0, Lcom/xiaomi/push/service/bs;->a:Lcom/xiaomi/push/dv$a;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/xiaomi/push/dv$a;->c()I

    move-result v0

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public a()Lcom/xiaomi/push/dv$a;
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/push/service/bs;->b()V

    iget-object v0, p0, Lcom/xiaomi/push/service/bs;->a:Lcom/xiaomi/push/dv$a;

    return-object v0
.end method

.method declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/service/bs;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/xiaomi/push/dw$b;)V
    .registers 6

    invoke-virtual {p1}, Lcom/xiaomi/push/dw$b;->d()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/xiaomi/push/dw$b;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/bs;->a()I

    move-result v1

    if-le v0, v1, :cond_13

    invoke-direct {p0}, Lcom/xiaomi/push/service/bs;->c()V

    :cond_13
    monitor-enter p0

    :try_start_14
    iget-object v0, p0, Lcom/xiaomi/push/service/bs;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaomi/push/service/bs;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/xiaomi/push/service/bs$a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/service/bs$a;

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_32

    array-length v1, v0

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v1, :cond_31

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/xiaomi/push/service/bs$a;->a(Lcom/xiaomi/push/dw$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_31
    return-void

    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public declared-synchronized a(Lcom/xiaomi/push/service/bs$a;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/service/bs;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
