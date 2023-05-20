.class public final Lcom/vivo/push/b;
.super Ljava/lang/Object;
.source "IPCManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final d:Ljava/lang/Object;

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vivo/push/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Landroid/content/Context;

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile g:Lcom/vivo/vms/IPCInvoke;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/String;

.field private j:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/push/b;->d:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/push/b;->e:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/vivo/push/b;->b:Ljava/lang/String;

    .line 57
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/vivo/push/b;->h:Ljava/lang/Object;

    .line 62
    iput-object v0, p0, Lcom/vivo/push/b;->j:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcom/vivo/push/b;->c:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/vivo/push/b;->i:Ljava/lang/String;

    .line 1094
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/vivo/push/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1095
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/vivo/push/b$1;

    invoke-direct {v2, p0}, Lcom/vivo/push/b$1;-><init>(Lcom/vivo/push/b;)V

    invoke-direct {p2, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/vivo/push/b;->j:Landroid/os/Handler;

    .line 68
    invoke-static {p1}, Lcom/vivo/push/util/r;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/vivo/push/b;->b:Ljava/lang/String;

    .line 69
    iget-object p2, p0, Lcom/vivo/push/b;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_57

    iget-object p2, p0, Lcom/vivo/push/b;->i:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_43

    goto :goto_57

    .line 74
    :cond_43
    iget-object p2, p0, Lcom/vivo/push/b;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/vivo/push/util/y;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v2, 0x4ec

    cmp-long p1, p1, v2

    if-ltz p1, :cond_50

    goto :goto_51

    :cond_50
    move v0, v1

    :goto_51
    iput-boolean v0, p0, Lcom/vivo/push/b;->a:Z

    .line 75
    invoke-direct {p0}, Lcom/vivo/push/b;->a()V

    return-void

    .line 70
    :cond_57
    :goto_57
    iget-object p1, p0, Lcom/vivo/push/b;->c:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "init error : push pkgname is "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/push/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ; action is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/push/b;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/vivo/push/util/n;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    iput-boolean v1, p0, Lcom/vivo/push/b;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/vivo/push/b;
    .registers 4

    .line 79
    sget-object v0, Lcom/vivo/push/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/push/b;

    if-nez v0, :cond_26

    .line 81
    sget-object v1, Lcom/vivo/push/b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_d
    sget-object v0, Lcom/vivo/push/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/push/b;

    if-nez v0, :cond_21

    .line 84
    new-instance v0, Lcom/vivo/push/b;

    invoke-direct {v0, p0, p1}, Lcom/vivo/push/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    sget-object p0, Lcom/vivo/push/b;->e:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_21
    monitor-exit v1

    goto :goto_26

    :catchall_23
    move-exception p0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_23

    throw p0

    :cond_26
    :goto_26
    return-object v0
.end method

.method static synthetic a(Lcom/vivo/push/b;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/vivo/push/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private a()V
    .registers 5

    .line 137
    iget-object v0, p0, Lcom/vivo/push/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Enter connect, Connection Status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AidlManager"

    invoke-static {v2, v1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_49

    const/4 v1, 0x2

    if-eq v0, v1, :cond_49

    const/4 v3, 0x3

    if-eq v0, v3, :cond_49

    const/4 v3, 0x5

    if-ne v0, v3, :cond_26

    goto :goto_49

    .line 142
    :cond_26
    iget-boolean v0, p0, Lcom/vivo/push/b;->a:Z

    if-eqz v0, :cond_49

    .line 143
    invoke-direct {p0, v1}, Lcom/vivo/push/b;->a(I)V

    .line 144
    invoke-direct {p0}, Lcom/vivo/push/b;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3d

    .line 145
    invoke-direct {p0, v1}, Lcom/vivo/push/b;->a(I)V

    const-string v0, "bind core service fail"

    .line 146
    invoke-static {v2, v0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1172
    :cond_3d
    iget-object v0, p0, Lcom/vivo/push/b;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1173
    iget-object v0, p0, Lcom/vivo/push/b;->j:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_49
    :goto_49
    return-void
.end method

.method private a(I)V
    .registers 3

    .line 223
    iget-object v0, p0, Lcom/vivo/push/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/push/b;)V
    .registers 2

    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, v0}, Lcom/vivo/push/b;->a(I)V

    return-void
.end method

.method private b()Z
    .registers 4

    .line 158
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/push/b;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/vivo/push/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    :try_start_c
    iget-object v1, p0, Lcom/vivo/push/b;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    const-string v1, "AidlManager"

    const-string v2, "bind core error"

    .line 163
    invoke-static {v1, v2, v0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method private c()V
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/vivo/push/b;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method static synthetic c(Lcom/vivo/push/b;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/vivo/push/b;->d()V

    return-void
.end method

.method private d()V
    .registers 4

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/vivo/push/b;->c:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "On unBindServiceException:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlManager"

    invoke-static {v1, v0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Z
    .registers 8

    .line 274
    invoke-direct {p0}, Lcom/vivo/push/b;->a()V

    .line 275
    iget-object v0, p0, Lcom/vivo/push/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 276
    iget-object v0, p0, Lcom/vivo/push/b;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_f
    iget-object v2, p0, Lcom/vivo/push/b;->h:Ljava/lang/Object;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_16} :catch_19
    .catchall {:try_start_f .. :try_end_16} :catchall_17

    goto :goto_1d

    :catchall_17
    move-exception p1

    goto :goto_1f

    :catch_19
    move-exception v2

    .line 280
    :try_start_1a
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 282
    :goto_1d
    monitor-exit v0

    goto :goto_21

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_17

    throw p1

    :cond_21
    :goto_21
    const/4 v0, 0x4

    const/4 v2, 0x1

    .line 285
    :try_start_23
    iget-object v3, p0, Lcom/vivo/push/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v3, v0, :cond_3e

    .line 1177
    iget-object v3, p0, Lcom/vivo/push/b;->j:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1178
    iget-object v3, p0, Lcom/vivo/push/b;->j:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 288
    iget-object v3, p0, Lcom/vivo/push/b;->g:Lcom/vivo/vms/IPCInvoke;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Lcom/vivo/vms/IPCInvoke;->asyncCall(Landroid/os/Bundle;Lcom/vivo/vms/IPCCallback;)Landroid/os/Bundle;

    return v2

    :cond_3e
    const-string p1, "AidlManager"

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invoke error : connect status = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_51} :catch_52

    goto :goto_8e

    :catch_52
    move-exception p1

    const-string v3, "AidlManager"

    const-string v4, "invoke error "

    .line 294
    invoke-static {v3, v4, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1182
    iget-object p1, p0, Lcom/vivo/push/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    .line 1184
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Enter disconnect, Connection Status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AidlManager"

    invoke-static {v4, v3}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v2, :cond_8e

    if-eq p1, v1, :cond_88

    const/4 v1, 0x3

    if-eq p1, v1, :cond_84

    if-eq p1, v0, :cond_7d

    goto :goto_8e

    .line 1202
    :cond_7d
    invoke-direct {p0, v2}, Lcom/vivo/push/b;->a(I)V

    .line 1203
    invoke-direct {p0}, Lcom/vivo/push/b;->d()V

    goto :goto_8e

    .line 1197
    :cond_84
    invoke-direct {p0, v2}, Lcom/vivo/push/b;->a(I)V

    goto :goto_8e

    .line 1193
    :cond_88
    invoke-direct {p0}, Lcom/vivo/push/b;->c()V

    .line 1194
    invoke-direct {p0, v2}, Lcom/vivo/push/b;->a(I)V

    :cond_8e
    :goto_8e
    const/4 p1, 0x0

    return p1
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .registers 4

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBindingDied : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AidlManager"

    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 229
    invoke-direct {p0}, Lcom/vivo/push/b;->c()V

    .line 230
    invoke-static {p2}, Lcom/vivo/vms/IPCInvoke$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/vms/IPCInvoke;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/b;->g:Lcom/vivo/vms/IPCInvoke;

    .line 231
    iget-object p1, p0, Lcom/vivo/push/b;->g:Lcom/vivo/vms/IPCInvoke;

    if-nez p1, :cond_1e

    const-string p1, "AidlManager"

    const-string p2, "onServiceConnected error : aidl must not be null."

    .line 232
    invoke-static {p1, p2}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-direct {p0}, Lcom/vivo/push/b;->d()V

    .line 234
    iget-object p1, p0, Lcom/vivo/push/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 237
    :cond_1e
    iget-object p1, p0, Lcom/vivo/push/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x4

    if-ne p1, p2, :cond_2c

    .line 238
    invoke-direct {p0, v0}, Lcom/vivo/push/b;->a(I)V

    goto :goto_37

    .line 241
    :cond_2c
    iget-object p1, p0, Lcom/vivo/push/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eq p1, v0, :cond_37

    .line 242
    invoke-direct {p0}, Lcom/vivo/push/b;->d()V

    .line 244
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/vivo/push/b;->h:Ljava/lang/Object;

    monitor-enter p1

    .line 245
    :try_start_3a
    iget-object p2, p0, Lcom/vivo/push/b;->h:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 246
    monitor-exit p1

    return-void

    :catchall_41
    move-exception p2

    monitor-exit p1
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_41

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const/4 p1, 0x0

    .line 263
    iput-object p1, p0, Lcom/vivo/push/b;->g:Lcom/vivo/vms/IPCInvoke;

    const/4 p1, 0x1

    .line 265
    invoke-direct {p0, p1}, Lcom/vivo/push/b;->a(I)V

    return-void
.end method
