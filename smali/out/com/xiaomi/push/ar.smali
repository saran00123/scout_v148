.class Lcom/xiaomi/push/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/at;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/ar$a;,
        Lcom/xiaomi/push/ar$b;
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private volatile a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/content/ServiceConnection;

.field private final a:Ljava/lang/Object;

.field private volatile a:Ljava/lang/String;

.field private volatile b:Ljava/lang/String;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/ar;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/push/ar;->a:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/xiaomi/push/ar;->b:Z

    iput-object v1, p0, Lcom/xiaomi/push/ar;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ar;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/xiaomi/push/ar;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/push/ar;->a()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/ar;I)I
    .registers 2

    iput p1, p0, Lcom/xiaomi/push/ar;->a:I

    return p1
.end method

.method static synthetic a(Lcom/xiaomi/push/ar;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/ar;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/ar;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/ar;->a:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .registers 5

    new-instance v0, Lcom/xiaomi/push/ar$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/ar$a;-><init>(Lcom/xiaomi/push/ar;Lcom/xiaomi/push/as;)V

    iput-object v0, p0, Lcom/xiaomi/push/ar;->a:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.huawei.hwid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    :try_start_15
    iget-object v2, p0, Lcom/xiaomi/push/ar;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/push/ar;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_1e

    goto :goto_1f

    :catch_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x2

    :goto_23
    iput v1, p0, Lcom/xiaomi/push/ar;->a:I

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/ar;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/push/ar;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Lcom/xiaomi/push/ar;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_39

    iget-object v0, p0, Lcom/xiaomi/push/ar;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "huawei\'s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " wait..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/push/ar;->a:Ljava/lang/Object;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_32} :catch_35
    .catchall {:try_start_12 .. :try_end_32} :catchall_33

    goto :goto_35

    :catchall_33
    move-exception p1

    goto :goto_37

    :catch_35
    :goto_35
    :try_start_35
    monitor-exit v0

    goto :goto_39

    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_33

    throw p1

    :cond_39
    :goto_39
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.huawei.hwid"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_18

    :cond_17
    move v1, v0

    :goto_18
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v3, 0x13a5c90

    if-lt p0, v3, :cond_21

    move p0, v2

    goto :goto_22

    :cond_21
    move p0, v0

    :goto_22
    sput-boolean p0, Lcom/xiaomi/push/ar;->a:Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_27

    if-eqz v1, :cond_27

    return v2

    :catch_27
    :cond_27
    return v0
.end method

.method static synthetic a(Lcom/xiaomi/push/ar;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/xiaomi/push/ar;->b:Z

    return p1
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ar;->a:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/xiaomi/push/ar;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "getOAID"

    invoke-direct {p0, v0}, Lcom/xiaomi/push/ar;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/ar;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Z
    .registers 2

    sget-boolean v0, Lcom/xiaomi/push/ar;->a:Z

    return v0
.end method
