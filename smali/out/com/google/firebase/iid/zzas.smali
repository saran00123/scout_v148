.class final Lcom/google/firebase/iid/zzas;
.super Ljava/lang/Object;


# static fields
.field private static zzcm:I

.field private static zzcy:Landroid/app/PendingIntent;


# instance fields
.field private final zzag:Landroid/content/Context;

.field private final zzav:Lcom/google/firebase/iid/zzam;

.field private final zzcz:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "responseCallbacks"
    .end annotation
.end field

.field private zzda:Landroid/os/Messenger;

.field private zzdb:Landroid/os/Messenger;

.field private zzdc:Lcom/google/firebase/iid/zzm;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/iid/zzam;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzas;->zzcz:Landroidx/collection/SimpleArrayMap;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/iid/zzas;->zzag:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/iid/zzas;->zzav:Lcom/google/firebase/iid/zzam;

    .line 5
    new-instance p1, Landroid/os/Messenger;

    new-instance p2, Lcom/google/firebase/iid/zzav;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/google/firebase/iid/zzav;-><init>(Lcom/google/firebase/iid/zzas;Landroid/os/Looper;)V

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/firebase/iid/zzas;->zzda:Landroid/os/Messenger;

    return-void
.end method

.method private static declared-synchronized zza(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-class v0, Lcom/google/firebase/iid/zzas;

    monitor-enter v0

    .line 65
    :try_start_3
    sget-object v1, Lcom/google/firebase/iid/zzas;->zzcy:Landroid/app/PendingIntent;

    if-nez v1, :cond_18

    .line 66
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.example.invalidpackage"

    .line 67
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 68
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    sput-object p0, Lcom/google/firebase/iid/zzas;->zzcy:Landroid/app/PendingIntent;

    :cond_18
    const-string p0, "app"

    .line 69
    sget-object v1, Lcom/google/firebase/iid/zzas;->zzcy:Landroid/app/PendingIntent;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    .line 70
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic zza(Lcom/google/firebase/iid/zzas;Landroid/os/Message;)V
    .registers 2

    .line 145
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzas;->zzb(Landroid/os/Message;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 71
    iget-object v0, p0, Lcom/google/firebase/iid/zzas;->zzcz:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 72
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/iid/zzas;->zzcz:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-nez v1, :cond_2a

    const-string p2, "FirebaseInstanceId"

    const-string v1, "Missing callback for "

    .line 74
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    :cond_20
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_25
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    monitor-exit v0

    return-void

    .line 76
    :cond_2a
    invoke-virtual {v1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 77
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method private static declared-synchronized zzah()Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/google/firebase/iid/zzas;

    monitor-enter v0

    .line 98
    :try_start_3
    sget v1, Lcom/google/firebase/iid/zzas;->zzcm:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/google/firebase/iid/zzas;->zzcm:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final zzb(Landroid/os/Message;)V
    .registers 9

    if-eqz p1, :cond_197

    .line 8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_197

    .line 9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 10
    new-instance v1, Lcom/google/firebase/iid/zzm$zza;

    invoke-direct {v1}, Lcom/google/firebase/iid/zzm$zza;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "google.messenger"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "google.messenger"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 13
    instance-of v1, v0, Lcom/google/firebase/iid/zzm;

    if-eqz v1, :cond_2b

    .line 14
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/iid/zzm;

    iput-object v1, p0, Lcom/google/firebase/iid/zzas;->zzdc:Lcom/google/firebase/iid/zzm;

    .line 15
    :cond_2b
    instance-of v1, v0, Landroid/os/Messenger;

    if-eqz v1, :cond_33

    .line 16
    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/google/firebase/iid/zzas;->zzdb:Landroid/os/Messenger;

    .line 17
    :cond_33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 18
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_69

    const-string p1, "FirebaseInstanceId"

    .line 20
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_68

    const-string p1, "Unexpected response action: "

    .line 21
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_63

    :cond_5d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_63
    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    return-void

    :cond_69
    const-string v0, "registration_id"

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_77

    const-string v0, "unregistered"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_77
    const/4 v1, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_14d

    const-string v0, "error"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ad

    .line 30
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected response, no error or registration id "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19e

    :cond_ad
    const-string v4, "FirebaseInstanceId"

    .line 32
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d1

    const-string v4, "Received InstanceID error "

    .line 33
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_c6

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_cc

    :cond_c6
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_cc
    const-string v5, "FirebaseInstanceId"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d1
    const-string v4, "|"

    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12a

    const-string v4, "\\|"

    .line 36
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 37
    array-length v5, v4

    if-le v5, v1, :cond_10c

    aget-object v5, v4, v3

    const-string v6, "ID"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ed

    goto :goto_10c

    .line 40
    :cond_ed
    aget-object v0, v4, v1

    .line 41
    aget-object v1, v4, v2

    const-string v2, ":"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_fd
    const-string v2, "error"

    .line 44
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/iid/zzas;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_19e

    :cond_10c
    :goto_10c
    const-string p1, "Unexpected structured response "

    .line 38
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11d

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_123

    :cond_11d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_123
    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19e

    .line 46
    :cond_12a
    iget-object v4, p0, Lcom/google/firebase/iid/zzas;->zzcz:Landroidx/collection/SimpleArrayMap;

    monitor-enter v4

    const/4 v0, 0x0

    .line 47
    :goto_12e
    :try_start_12e
    iget-object v1, p0, Lcom/google/firebase/iid/zzas;->zzcz:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_148

    .line 48
    iget-object v1, p0, Lcom/google/firebase/iid/zzas;->zzcz:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/iid/zzas;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12e

    .line 50
    :cond_148
    monitor-exit v4

    goto :goto_19e

    :catchall_14a
    move-exception p1

    monitor-exit v4
    :try_end_14c
    .catchall {:try_start_12e .. :try_end_14c} :catchall_14a

    throw p1

    :cond_14d
    const-string v4, "\\|ID\\|([^|]+)\\|:?+(.*)"

    .line 51
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 52
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 53
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_182

    const-string p1, "FirebaseInstanceId"

    .line 54
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_181

    const-string p1, "Unexpected response string: "

    .line 55
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_176

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_17c

    :cond_176
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_17c
    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_181
    return-void

    .line 57
    :cond_182
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "registration_id"

    .line 60
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/iid/zzas;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_197
    const-string p1, "FirebaseInstanceId"

    const-string v0, "Dropping invalid message"

    .line 63
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19e
    return-void
.end method

.method private final zzd(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzas;->zze(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v1, "google.messenger"

    .line 93
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 94
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzas;->zze(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 95
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 v0, 0x0

    :cond_1b
    return-object v0
.end method

.method private final zze(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/google/firebase/iid/zzas;->zzah()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 101
    iget-object v2, p0, Lcom/google/firebase/iid/zzas;->zzcz:Landroidx/collection/SimpleArrayMap;

    monitor-enter v2

    .line 102
    :try_start_c
    iget-object v3, p0, Lcom/google/firebase/iid/zzas;->zzcz:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v3, v0, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_125

    .line 105
    iget-object v2, p0, Lcom/google/firebase/iid/zzas;->zzav:Lcom/google/firebase/iid/zzam;

    invoke-virtual {v2}, Lcom/google/firebase/iid/zzam;->zzac()I

    move-result v2

    if-eqz v2, :cond_11d

    .line 107
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.google.android.gms"

    .line 108
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v3, p0, Lcom/google/firebase/iid/zzas;->zzav:Lcom/google/firebase/iid/zzam;

    invoke-virtual {v3}, Lcom/google/firebase/iid/zzam;->zzac()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_33

    const-string v3, "com.google.iid.TOKEN_REQUEST"

    .line 110
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_38

    :cond_33
    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    .line 111
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    :goto_38
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 113
    iget-object p1, p0, Lcom/google/firebase/iid/zzas;->zzag:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/google/firebase/iid/zzas;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    .line 115
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "|ID|"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "kid"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x3

    const-string v3, "FirebaseInstanceId"

    .line 116
    invoke-static {v3, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 117
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Sending "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "FirebaseInstanceId"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_96
    iget-object v3, p0, Lcom/google/firebase/iid/zzas;->zzda:Landroid/os/Messenger;

    const-string v5, "google.messenger"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 119
    iget-object v3, p0, Lcom/google/firebase/iid/zzas;->zzdb:Landroid/os/Messenger;

    if-nez v3, :cond_a5

    iget-object v3, p0, Lcom/google/firebase/iid/zzas;->zzdc:Lcom/google/firebase/iid/zzm;

    if-eqz v3, :cond_ca

    .line 120
    :cond_a5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 121
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    :try_start_ab
    iget-object v5, p0, Lcom/google/firebase/iid/zzas;->zzdb:Landroid/os/Messenger;

    if-eqz v5, :cond_b5

    .line 123
    iget-object v5, p0, Lcom/google/firebase/iid/zzas;->zzdb:Landroid/os/Messenger;

    invoke-virtual {v5, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_dd

    .line 124
    :cond_b5
    iget-object v5, p0, Lcom/google/firebase/iid/zzas;->zzdc:Lcom/google/firebase/iid/zzm;

    invoke-virtual {v5, v3}, Lcom/google/firebase/iid/zzm;->send(Landroid/os/Message;)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_ba} :catch_bb

    goto :goto_dd

    :catch_bb
    const-string v3, "FirebaseInstanceId"

    .line 127
    invoke-static {v3, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_ca

    const-string p1, "FirebaseInstanceId"

    const-string v3, "Messenger failed, fallback to startService"

    .line 128
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_ca
    iget-object p1, p0, Lcom/google/firebase/iid/zzas;->zzav:Lcom/google/firebase/iid/zzam;

    invoke-virtual {p1}, Lcom/google/firebase/iid/zzam;->zzac()I

    move-result p1

    if-ne p1, v4, :cond_d8

    .line 130
    iget-object p1, p0, Lcom/google/firebase/iid/zzas;->zzag:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_dd

    .line 131
    :cond_d8
    iget-object p1, p0, Lcom/google/firebase/iid/zzas;->zzag:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 132
    :goto_dd
    :try_start_dd
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-wide/16 v1, 0x7530

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_eb
    .catch Ljava/lang/InterruptedException; {:try_start_dd .. :try_end_eb} :catch_101
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_dd .. :try_end_eb} :catch_101
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_dd .. :try_end_eb} :catch_fa
    .catchall {:try_start_dd .. :try_end_eb} :catchall_f8

    .line 133
    iget-object v1, p0, Lcom/google/firebase/iid/zzas;->zzcz:Landroidx/collection/SimpleArrayMap;

    monitor-enter v1

    .line 134
    :try_start_ee
    iget-object v2, p0, Lcom/google/firebase/iid/zzas;->zzcz:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    monitor-exit v1

    return-object p1

    :catchall_f5
    move-exception p1

    monitor-exit v1
    :try_end_f7
    .catchall {:try_start_ee .. :try_end_f7} :catchall_f5

    throw p1

    :catchall_f8
    move-exception p1

    goto :goto_110

    :catch_fa
    move-exception p1

    .line 141
    :try_start_fb
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_101
    const-string p1, "FirebaseInstanceId"

    const-string v1, "No response"

    .line 138
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance p1, Ljava/io/IOException;

    const-string v1, "TIMEOUT"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_110
    .catchall {:try_start_fb .. :try_end_110} :catchall_f8

    .line 142
    :goto_110
    iget-object v1, p0, Lcom/google/firebase/iid/zzas;->zzcz:Landroidx/collection/SimpleArrayMap;

    monitor-enter v1

    .line 143
    :try_start_113
    iget-object v2, p0, Lcom/google/firebase/iid/zzas;->zzcz:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    monitor-exit v1
    :try_end_119
    .catchall {:try_start_113 .. :try_end_119} :catchall_11a

    throw p1

    :catchall_11a
    move-exception p1

    :try_start_11b
    monitor-exit v1
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    throw p1

    .line 106
    :cond_11d
    new-instance p1, Ljava/io/IOException;

    const-string v0, "MISSING_INSTANCEID_SERVICE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_125
    move-exception p1

    .line 103
    :try_start_126
    monitor-exit v2
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    throw p1
.end method


# virtual methods
.method final zzc(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/firebase/iid/zzas;->zzav:Lcom/google/firebase/iid/zzam;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzam;->zzaf()I

    move-result v0

    const v1, 0xb71b00

    if-lt v0, v1, :cond_67

    .line 79
    iget-object v0, p0, Lcom/google/firebase/iid/zzas;->zzag:Landroid/content/Context;

    .line 80
    invoke-static {v0}, Lcom/google/firebase/iid/zzab;->zzc(Landroid/content/Context;)Lcom/google/firebase/iid/zzab;

    move-result-object v0

    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/iid/zzab;->zzb(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 82
    :try_start_16
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1c} :catch_1f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_1c} :catch_1d

    return-object v0

    :catch_1d
    move-exception v0

    goto :goto_20

    :catch_1f
    move-exception v0

    :goto_20
    const/4 v1, 0x3

    const-string v2, "FirebaseInstanceId"

    .line 84
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 85
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error making request: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/firebase/iid/zzak;

    if-eqz v1, :cond_65

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzak;

    .line 88
    invoke-virtual {v0}, Lcom/google/firebase/iid/zzak;->getErrorCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_65

    .line 89
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzas;->zzd(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_65
    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_67
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzas;->zzd(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
