.class public final Lcom/google/android/gms/common/api/internal/zabq;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final zaji:Lcom/google/android/gms/common/api/internal/zabr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabr;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaji:Lcom/google/android/gms/common/api/internal/zabr;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 13
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    const-string p2, "com.google.android.gms"

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaji:Lcom/google/android/gms/common/api/internal/zabr;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabr;->zas()V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabq;->unregister()V

    :cond_1c
    return-void
.end method

.method public final declared-synchronized unregister()V
    .registers 2

    monitor-enter p0

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_a

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_a
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->mContext:Landroid/content/Context;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 9
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zac(Landroid/content/Context;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->mContext:Landroid/content/Context;

    return-void
.end method
