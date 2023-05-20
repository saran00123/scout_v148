.class public Lcom/xiaomi/push/service/bd$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/bd$b$b;,
        Lcom/xiaomi/push/service/bd$b$a;,
        Lcom/xiaomi/push/service/bd$b$c;
    }
.end annotation


# instance fields
.field private a:I

.field public a:Landroid/content/Context;

.field a:Landroid/os/IBinder$DeathRecipient;

.field a:Landroid/os/Messenger;

.field private a:Lcom/xiaomi/push/service/XMPushService$c;

.field private a:Lcom/xiaomi/push/service/XMPushService;

.field final a:Lcom/xiaomi/push/service/bd$b$b;

.field a:Lcom/xiaomi/push/service/bd$c;

.field public a:Lcom/xiaomi/push/service/j;

.field public a:Ljava/lang/String;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/push/service/bd$b$a;",
            ">;"
        }
    .end annotation
.end field

.field public a:Z

.field b:Lcom/xiaomi/push/service/bd$c;

.field public b:Ljava/lang/String;

.field private b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/push/service/bd$c;->a:Lcom/xiaomi/push/service/bd$c;

    iput-object v0, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/bd$c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/bd$b;->a:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/push/service/bd$b;->a:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/push/service/bd$b;->b:Lcom/xiaomi/push/service/bd$c;

    iput-boolean v0, p0, Lcom/xiaomi/push/service/bd$b;->b:Z

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$c;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$c;-><init>(Lcom/xiaomi/push/service/bd$b;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/XMPushService$c;

    iput-object v1, p0, Lcom/xiaomi/push/service/bd$b;->a:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/xiaomi/push/service/bd$b$b;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/bd$b$b;-><init>(Lcom/xiaomi/push/service/bd$b;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/bd$b$b;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/push/service/bd$c;->a:Lcom/xiaomi/push/service/bd$c;

    iput-object v0, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/bd$c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/bd$b;->a:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/push/service/bd$b;->a:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/push/service/bd$b;->b:Lcom/xiaomi/push/service/bd$c;

    iput-boolean v0, p0, Lcom/xiaomi/push/service/bd$b;->b:Z

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$c;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$c;-><init>(Lcom/xiaomi/push/service/bd$b;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/XMPushService$c;

    iput-object v1, p0, Lcom/xiaomi/push/service/bd$b;->a:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/xiaomi/push/service/bd$b$b;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/bd$b$b;-><init>(Lcom/xiaomi/push/service/bd$b;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/bd$b$b;

    iput-object p1, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance p1, Lcom/xiaomi/push/service/be;

    invoke-direct {p1, p0}, Lcom/xiaomi/push/service/be;-><init>(Lcom/xiaomi/push/service/bd$b;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/bd$b;->a(Lcom/xiaomi/push/service/bd$b$a;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/bd$b;)Lcom/xiaomi/push/service/XMPushService$c;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/XMPushService$c;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/bd$b;)Lcom/xiaomi/push/service/XMPushService;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/XMPushService;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_18
    return-object v1
.end method

.method private a(IILjava/lang/String;Ljava/lang/String;)V
    .registers 14

    iget-object v0, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/bd$c;

    iput-object v0, p0, Lcom/xiaomi/push/service/bd$b;->b:Lcom/xiaomi/push/service/bd$c;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_f

    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/j;

    iget-object p3, p0, Lcom/xiaomi/push/service/bd$b;->a:Landroid/content/Context;

    invoke-virtual {p1, p3, p0, p2}, Lcom/xiaomi/push/service/j;->a(Landroid/content/Context;Lcom/xiaomi/push/service/bd$b;I)V

    goto :goto_57

    :cond_f
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1a

    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/j;

    iget-object p2, p0, Lcom/xiaomi/push/service/bd$b;->a:Landroid/content/Context;

    invoke-virtual {p1, p2, p0, p4, p3}, Lcom/xiaomi/push/service/j;->a(Landroid/content/Context;Lcom/xiaomi/push/service/bd$b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_1a
    const/4 v1, 0x1

    if-ne p1, v1, :cond_57

    sget-object p1, Lcom/xiaomi/push/service/bd$c;->c:Lcom/xiaomi/push/service/bd$c;

    const/4 v2, 0x0

    if-ne v0, p1, :cond_24

    move v6, v1

    goto :goto_25

    :cond_24
    move v6, v2

    :goto_25
    if-nez v6, :cond_35

    const-string p1, "wait"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    iget p1, p0, Lcom/xiaomi/push/service/bd$b;->a:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaomi/push/service/bd$b;->a:I

    goto :goto_4d

    :cond_35
    if-eqz v6, :cond_4d

    iput v2, p0, Lcom/xiaomi/push/service/bd$b;->a:I

    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->a:Landroid/os/Messenger;

    if-eqz p1, :cond_4d

    const/4 p1, 0x0

    const/16 p4, 0x10

    iget-object v0, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v0, v0, Lcom/xiaomi/push/service/XMPushService;->a:Landroid/os/Messenger;

    invoke-static {p1, p4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    :try_start_48
    iget-object p4, p0, Lcom/xiaomi/push/service/bd$b;->a:Landroid/os/Messenger;

    invoke-virtual {p4, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4d} :catch_4d

    :catch_4d
    :cond_4d
    :goto_4d
    iget-object v3, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/j;

    iget-object v4, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/XMPushService;

    move-object v5, p0

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/xiaomi/push/service/j;->a(Landroid/content/Context;Lcom/xiaomi/push/service/bd$b;ZILjava/lang/String;)V

    :cond_57
    :goto_57
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/bd$b;IILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/push/service/bd$b;->a(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(IILjava/lang/String;)Z
    .registers 6

    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->b:Lcom/xiaomi/push/service/bd$c;

    const/4 p2, 0x1

    if-eqz p1, :cond_4b

    iget-boolean p3, p0, Lcom/xiaomi/push/service/bd$b;->b:Z

    if-nez p3, :cond_a

    goto :goto_4b

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/bd$c;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_26

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " status recovered, don\'t notify client:"

    :goto_16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/push/service/bd$b;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    return v1

    :cond_26
    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->a:Landroid/os/Messenger;

    if-eqz p1, :cond_43

    if-eqz p3, :cond_43

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Peer alive notify status to client:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/xiaomi/push/service/bd$b;->g:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    return p2

    :cond_43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "peer died, ignore notify "

    goto :goto_16

    :cond_4b
    :goto_4b
    return p2
.end method

.method static synthetic a(Lcom/xiaomi/push/service/bd$b;IILjava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/bd$b;->a(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(IILjava/lang/String;)Z
    .registers 8

    const-string v0, "wait"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_13

    const/4 p2, 0x3

    if-eq p1, p2, :cond_d

    return v2

    :cond_d
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_13
    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result p1

    return p1

    :cond_1a
    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/bd$c;

    sget-object v3, Lcom/xiaomi/push/service/bd$c;->c:Lcom/xiaomi/push/service/bd$c;

    if-ne p1, v3, :cond_21

    return v2

    :cond_21
    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result p1

    if-nez p1, :cond_2a

    return v2

    :cond_2a
    const/16 p1, 0x15

    if-eq p2, p1, :cond_39

    const/4 p1, 0x7

    if-ne p2, p1, :cond_38

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    goto :goto_39

    :cond_38
    return v1

    :cond_39
    :goto_39
    return v2
.end method


# virtual methods
.method public a()J
    .registers 5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    sub-double/2addr v0, v2

    double-to-long v0, v0

    iget v2, p0, Lcom/xiaomi/push/service/bd$b;->a:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0xf

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    const-string p1, "unknown"

    return-object p1

    :cond_c
    const-string p1, "KICK"

    return-object p1

    :cond_f
    const-string p1, "CLOSE"

    return-object p1

    :cond_12
    const-string p1, "OPEN"

    return-object p1
.end method

.method a()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/bd$b;->a:Landroid/os/Messenger;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/xiaomi/push/service/bd$b;->a:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/bd$b;->a:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/bd$b;->b:Lcom/xiaomi/push/service/bd$c;

    return-void
.end method

.method a(Landroid/os/Messenger;)V
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/push/service/bd$b;->a()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    :try_start_6
    iput-object p1, p0, Lcom/xiaomi/push/service/bd$b;->a:Landroid/os/Messenger;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/push/service/bd$b;->b:Z

    new-instance v1, Lcom/xiaomi/push/service/bd$b$c;

    invoke-direct {v1, p0, p0, p1}, Lcom/xiaomi/push/service/bd$b$c;-><init>(Lcom/xiaomi/push/service/bd$b;Lcom/xiaomi/push/service/bd$b;Landroid/os/Messenger;)V

    iput-object v1, p0, Lcom/xiaomi/push/service/bd$b;->a:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/push/service/bd$b;->a:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_51

    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "peer linked with old sdk chid = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/service/bd$b;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_32} :catch_33

    goto :goto_51

    :catch_33
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "peer linkToDeath err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/push/service/bd$b;->a:Landroid/os/Messenger;

    iput-boolean v0, p0, Lcom/xiaomi/push/service/bd$b;->b:Z

    :goto_51
    return-void
.end method

.method public a(Lcom/xiaomi/push/service/bd$b$a;)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/service/bd$b;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/push/service/bd$b;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public a(Lcom/xiaomi/push/service/bd$c;IILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/xiaomi/push/service/bd$b;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/push/service/bd$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/service/bd$b$a;

    iget-object v3, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/bd$c;

    invoke-interface {v2, v3, p1, p3}, Lcom/xiaomi/push/service/bd$b$a;->a(Lcom/xiaomi/push/service/bd$c;Lcom/xiaomi/push/service/bd$c;I)V

    goto :goto_9

    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_8f

    iget-object v0, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/bd$c;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_4d

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/bd$b;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-static {p3}, Lcom/xiaomi/push/service/bh;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    aput-object p4, v2, v0

    const/4 v0, 0x5

    aput-object p5, v2, v0

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/xiaomi/push/service/bd$b;->g:Ljava/lang/String;

    aput-object v3, v2, v0

    const-string v0, "update the client %7$s status. %1$s->%2$s %3$s %4$s %5$s %6$s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/bd$c;

    :cond_4d
    iget-object v0, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/j;

    if-nez v0, :cond_57

    const-string p1, "status changed while the client dispatcher is missing"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    return-void

    :cond_57
    sget-object v0, Lcom/xiaomi/push/service/bd$c;->b:Lcom/xiaomi/push/service/bd$c;

    if-ne p1, v0, :cond_5c

    return-void

    :cond_5c
    const/16 p1, 0x2774

    iget-object v0, p0, Lcom/xiaomi/push/service/bd$b;->b:Lcom/xiaomi/push/service/bd$c;

    if-eqz v0, :cond_71

    iget-boolean v0, p0, Lcom/xiaomi/push/service/bd$b;->b:Z

    if-nez v0, :cond_67

    goto :goto_71

    :cond_67
    iget-object v1, p0, Lcom/xiaomi/push/service/bd$b;->a:Landroid/os/Messenger;

    if-eqz v1, :cond_70

    if-eqz v0, :cond_70

    const/16 v1, 0x3e8

    goto :goto_71

    :cond_70
    move v1, p1

    :cond_71
    :goto_71
    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v0, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/bd$b$b;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService$j;)V

    invoke-direct {p0, p2, p3, p5}, Lcom/xiaomi/push/service/bd$b;->b(IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_82

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/xiaomi/push/service/bd$b;->a(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    :cond_82
    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v0, p0, Lcom/xiaomi/push/service/bd$b;->a:Lcom/xiaomi/push/service/bd$b$b;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/xiaomi/push/service/bd$b$b;->a(IILjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/XMPushService$j;

    move-result-object p2

    int-to-long p3, v1

    invoke-virtual {p1, p2, p3, p4}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;J)V

    :goto_8e
    return-void

    :catchall_8f
    move-exception p1

    :try_start_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw p1
.end method

.method public b(Lcom/xiaomi/push/service/bd$b$a;)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/service/bd$b;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/push/service/bd$b;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
