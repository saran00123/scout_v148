.class Lcom/xiaomi/push/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/at;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/ba$a;,
        Lcom/xiaomi/push/ba$b;,
        Lcom/xiaomi/push/ba$c;
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private volatile a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/content/ServiceConnection;

.field private volatile a:Lcom/xiaomi/push/ba$a;

.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/ba;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/ba;->a:Lcom/xiaomi/push/ba$a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ba;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/xiaomi/push/ba;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/push/ba;->a()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/ba;I)I
    .registers 2

    iput p1, p0, Lcom/xiaomi/push/ba;->a:I

    return p1
.end method

.method static synthetic a(Lcom/xiaomi/push/ba;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/ba;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/ba;)Lcom/xiaomi/push/ba$a;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/ba;->a:Lcom/xiaomi/push/ba$a;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/ba;Lcom/xiaomi/push/ba$a;)Lcom/xiaomi/push/ba$a;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/ba;->a:Lcom/xiaomi/push/ba$a;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/push/ba;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/ba;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/ba;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/push/ba;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .registers 5

    new-instance v0, Lcom/xiaomi/push/ba$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/ba$b;-><init>(Lcom/xiaomi/push/ba;Lcom/xiaomi/push/bb;)V

    iput-object v0, p0, Lcom/xiaomi/push/ba;->a:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.heytap.openid"

    const-string v2, "com.heytap.openid.IdentifyService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    :try_start_1a
    iget-object v2, p0, Lcom/xiaomi/push/ba;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/push/ba;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_23

    goto :goto_24

    :catch_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v1, 0x2

    :goto_28
    iput v1, p0, Lcom/xiaomi/push/ba;->a:I

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/ba;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/push/ba;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Lcom/xiaomi/push/ba;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_39

    iget-object v0, p0, Lcom/xiaomi/push/ba;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oppo\'s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " wait..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/push/ba;->a:Ljava/lang/Object;

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
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.heytap.openid"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_36

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1a

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    goto :goto_1d

    :cond_1a
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v1, v1

    :goto_1d
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr p0, v3

    if-eqz p0, :cond_27

    move p0, v3

    goto :goto_28

    :cond_27
    move p0, v0

    :goto_28
    const-wide/16 v4, 0x1

    cmp-long v1, v1, v4

    if-ltz v1, :cond_30

    move v1, v3

    goto :goto_31

    :cond_30
    move v1, v0

    :goto_31
    sput-boolean v1, Lcom/xiaomi/push/ba;->a:Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_36

    if-eqz p0, :cond_36

    return v3

    :catch_36
    :cond_36
    return v0
.end method

.method private b()Ljava/lang/String;
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/ba;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/ba;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    :goto_2a
    array-length v1, v0

    if-ge v3, v1, :cond_43

    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    return-object v0

    :catch_48
    const-string v0, ""

    return-object v0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ba;->a:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/xiaomi/push/ba;->a:Landroid/content/Context;

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

    invoke-direct {p0, v0}, Lcom/xiaomi/push/ba;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/ba;->a:Lcom/xiaomi/push/ba$a;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_f

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/push/ba;->a:Lcom/xiaomi/push/ba$a;

    iget-object v0, v0, Lcom/xiaomi/push/ba$a;->b:Ljava/lang/String;

    :goto_f
    return-object v0
.end method

.method public a()Z
    .registers 2

    sget-boolean v0, Lcom/xiaomi/push/ba;->a:Z

    return v0
.end method