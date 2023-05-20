.class public final Lcom/google/android/gms/measurement/internal/zzkk;
.super Lcom/google/android/gms/measurement/internal/zzgf;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.2"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[Ljava/lang/String;

.field private static final zzc:[Ljava/lang/String;


# instance fields
.field private zzd:Ljava/security/SecureRandom;

.field private final zze:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzf:I

.field private zzg:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "firebase_"

    const-string v1, "google_"

    const-string v2, "ga_"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzkk;->zzb:[Ljava/lang/String;

    const-string v0, "_err"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzkk;->zzc:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfl;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgf;-><init>(Lcom/google/android/gms/measurement/internal/zzfl;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzg:Ljava/lang/Integer;

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method static zzN()Ljava/security/MessageDigest;
    .registers 2

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_11

    :try_start_4
    const-string v1, "MD5"

    .line 1
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_a} :catch_e

    if-nez v1, :cond_d

    goto :goto_e

    :cond_d
    return-object v1

    :catch_e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method static zzO([B)J
    .registers 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v2, 0x0

    :goto_11
    if-ltz v0, :cond_25

    .line 3
    array-length v4, p0

    add-int/lit8 v4, v4, -0x8

    if-lt v0, v4, :cond_25

    .line 4
    aget-byte v4, p0, v0

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_25
    return-wide v2
.end method

.method static zzP(Landroid/content/Context;Z)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_10

    const-string p1, "com.google.android.gms.measurement.AppMeasurementJobService"

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzaq(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_10
    const-string p1, "com.google.android.gms.measurement.AppMeasurementService"

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzaq(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static zzR(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method static zzS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_7

    if-eqz p1, :cond_5

    goto :goto_7

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_7
    if-nez p0, :cond_b

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static zzY(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzkk;->zzc:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v1

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method public static zzak(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzaa;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_9

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzaa;

    new-instance v2, Landroid/os/Bundle;

    .line 4
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    const-string v4, "app_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    const-string v4, "origin"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    const-string v5, "creation_timestamp"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkg;->zza()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 10
    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    const-string v4, "active"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/String;

    if-eqz v3, :cond_5e

    const-string v4, "trigger_event_name"

    .line 12
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_5e
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzg:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v3, :cond_78

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v4, "timed_out_event_name"

    .line 14
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzg:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v3, :cond_78

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "timed_out_event_params"

    .line 17
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    :cond_78
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzh:J

    const-string v5, "trigger_timeout"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 19
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v3, :cond_99

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v4, "triggered_event_name"

    .line 20
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v3, :cond_99

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "triggered_event_params"

    .line 23
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    :cond_99
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    iget-wide v3, v3, Lcom/google/android/gms/measurement/internal/zzkg;->zzc:J

    const-string v5, "triggered_timestamp"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 25
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzj:J

    const-string v5, "time_to_live"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 26
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v3, :cond_c3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v4, "expired_event_name"

    .line 27
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v1, :cond_c3

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "expired_event_params"

    .line 30
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 31
    :cond_c3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_c8
    return-object v0
.end method

.method static final zzam(Landroid/os/Bundle;I)Z
    .registers 7

    const-string v0, "_err"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_12

    int-to-long v1, p1

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method static final zzan(Ljava/lang/String;)Z
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final zzao(ILjava/lang/Object;ZZ)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    .line 1
    :cond_4
    instance-of v1, p2, Ljava/lang/Long;

    if-nez v1, :cond_b3

    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_e

    goto/16 :goto_b3

    .line 2
    :cond_e
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    .line 3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1e
    instance-of v1, p2, Ljava/lang/Byte;

    if-eqz v1, :cond_2e

    .line 5
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2e
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_3e

    .line 7
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3e
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_55

    .line 9
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eq p2, p1, :cond_4e

    const-wide/16 p1, 0x0

    goto :goto_50

    :cond_4e
    const-wide/16 p1, 0x1

    :goto_50
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 10
    :cond_55
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_64

    .line 11
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 12
    :cond_64
    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_aa

    instance-of v1, p2, Ljava/lang/Character;

    if-nez v1, :cond_aa

    instance-of v1, p2, Ljava/lang/CharSequence;

    if-eqz v1, :cond_71

    goto :goto_aa

    :cond_71
    if-eqz p4, :cond_a9

    .line 15
    instance-of p1, p2, [Landroid/os/Bundle;

    if-nez p1, :cond_7b

    instance-of p1, p2, [Landroid/os/Parcelable;

    if-eqz p1, :cond_a9

    :cond_7b
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    check-cast p2, [Landroid/os/Parcelable;

    array-length p3, p2

    const/4 p4, 0x0

    :goto_84
    if-ge p4, p3, :cond_9e

    aget-object v0, p2, p4

    .line 18
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_9b

    .line 19
    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zzU(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9b

    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9b
    add-int/lit8 p4, p4, 0x1

    goto :goto_84

    .line 22
    :cond_9e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Landroid/os/Bundle;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a9
    return-object v0

    .line 13
    :cond_aa
    :goto_aa
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-virtual {p0, p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzkk;->zzC(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b3
    :goto_b3
    return-object p2
.end method

.method private final zzap(Ljava/lang/String;)I
    .registers 5

    const-string v0, "_ldl"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const/16 p1, 0x800

    return p1

    :cond_10
    const-string v0, "_id"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdw;->zzaf:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "_lgclid"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const/16 p1, 0x64

    return p1

    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const/16 p1, 0x24

    return p1

    :cond_3f
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const/16 p1, 0x100

    return p1
.end method

.method private static zzaq(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    new-instance v2, Landroid/content/ComponentName;

    .line 2
    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 3
    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_15} :catch_19

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :catch_19
    :cond_19
    return v0
.end method

.method private static zzar(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_15

    .line 2
    aget-object v3, p1, v2

    .line 3
    invoke-static {p0, v3}, Lcom/google/android/gms/measurement/internal/zzkk;->zzS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    return v1
.end method

.method static zzh(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_16

    const-string v1, "_ep"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    return v0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method final zzA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzan(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_61

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzq()Z

    move-result p2

    if-eqz p2, :cond_28

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id"

    .line 6
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_28
    return v1

    .line 7
    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb()Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object p1

    const/4 v0, 0x0

    .line 9
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdw;->zzah:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 10
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 11
    :cond_41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_63

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkk;->zzan(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_61

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Invalid admob_app_id. Analytics disabled."

    .line 15
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_61
    const/4 p1, 0x1

    return p1

    :cond_63
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzq()Z

    move-result p1

    if-eqz p1, :cond_7a

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p1

    const-string p2, "Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI"

    .line 19
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    :cond_7a
    return v1
.end method

.method final zzB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_19

    if-nez v1, :cond_19

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    return v2

    :cond_18
    return v3

    :cond_19
    if-eqz v0, :cond_39

    if-eqz v1, :cond_39

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 8
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    return v2

    :cond_30
    return v3

    .line 7
    :cond_31
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_38

    return v2

    :cond_38
    return v3

    :cond_39
    if-nez v0, :cond_51

    .line 4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_42

    return v3

    .line 5
    :cond_42
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_50

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_50

    :cond_4f
    return v3

    :cond_50
    :goto_50
    return v2

    .line 3
    :cond_51
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5f

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    goto :goto_5f

    :cond_5e
    return v3

    :cond_5f
    :goto_5f
    return v2
.end method

.method public final zzC(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p2, :cond_25

    if-eqz p3, :cond_24

    .line 2
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "..."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_24
    return-object v0

    :cond_25
    return-object p1
.end method

.method final zzD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I
    .registers 23
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)I"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zzs(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "param"

    const/16 v4, 0x11

    const/4 v5, 0x0

    if-eqz v2, :cond_ac

    if-eqz p8, :cond_a9

    .line 3
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgj;->zzc:[Ljava/lang/String;

    invoke-static {v8, v2}, Lcom/google/android/gms/measurement/internal/zzkk;->zzar(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    const/16 v0, 0x14

    return v0

    :cond_22
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzkk;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzy()Lcom/google/android/gms/measurement/internal/zzjb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjb;->zzD()Z

    move-result v6

    if-nez v6, :cond_35

    goto :goto_47

    .line 11
    :cond_35
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkk;->zzZ()I

    move-result v2

    const v6, 0x310c4

    if-ge v2, v6, :cond_47

    const/16 v0, 0x19

    return v0

    .line 4
    :cond_47
    :goto_47
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    .line 8
    instance-of v2, v0, [Landroid/os/Parcelable;

    if-eqz v2, :cond_55

    .line 9
    move-object v6, v0

    check-cast v6, [Landroid/os/Parcelable;

    array-length v6, v6

    goto :goto_60

    .line 10
    :cond_55
    instance-of v6, v0, Ljava/util/ArrayList;

    if-eqz v6, :cond_ac

    .line 11
    move-object v6, v0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_60
    const/16 v9, 0xc8

    if-le v6, v9, :cond_ac

    .line 9
    iget-object v10, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 12
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v10

    .line 13
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzei;->zzh()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v10

    .line 14
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v11, "Parameter array is too long; discarded. Value kind, name, array length"

    .line 15
    invoke-virtual {v10, v11, v3, v8, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    if-eqz v2, :cond_8e

    .line 17
    move-object v2, v0

    check-cast v2, [Landroid/os/Parcelable;

    array-length v6, v2

    if-le v6, v9, :cond_a7

    .line 18
    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    .line 19
    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_a7

    .line 20
    :cond_8e
    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_a7

    .line 21
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_a7

    new-instance v6, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2, v5, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_a7
    :goto_a7
    move v9, v4

    goto :goto_ad

    :cond_a9
    const/16 v0, 0x15

    return v0

    :cond_ac
    move v9, v5

    .line 19
    :goto_ad
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    .line 25
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdw;->zzR:Lcom/google/android/gms/measurement/internal/zzdv;

    move-object v10, p1

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 26
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzkk;->zzR(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c8

    .line 27
    :cond_c2
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/zzkk;->zzR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d0

    :cond_c8
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const/16 v1, 0x100

    goto :goto_d7

    .line 45
    :cond_d0
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const/16 v1, 0x64

    .line 30
    :goto_d7
    invoke-virtual {p0, v3, v8, v1, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zzt(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    return v9

    :cond_de
    if-eqz p8, :cond_171

    .line 31
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_f6

    .line 32
    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzkk;->zzz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    goto/16 :goto_170

    .line 33
    :cond_f6
    instance-of v1, v0, [Landroid/os/Parcelable;

    if-eqz v1, :cond_12e

    .line 34
    move-object v11, v0

    check-cast v11, [Landroid/os/Parcelable;

    .line 35
    array-length v12, v11

    move v13, v5

    :goto_ff
    if-ge v13, v12, :cond_170

    aget-object v0, v11, v13

    .line 36
    instance-of v1, v0, Landroid/os/Bundle;

    if-nez v1, :cond_11b

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzh()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "All Parcelable[] elements must be of type Bundle. Value type, name"

    .line 41
    invoke-virtual {v1, v2, v0, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_171

    .line 37
    :cond_11b
    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzkk;->zzz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_ff

    .line 42
    :cond_12e
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_171

    .line 43
    move-object v11, v0

    check-cast v11, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    move v13, v5

    :goto_13a
    if-ge v13, v12, :cond_170

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 44
    instance-of v1, v0, Landroid/os/Bundle;

    if-nez v1, :cond_15d

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzh()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    if-eqz v0, :cond_155

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_157

    :cond_155
    const-string v0, "null"

    :goto_157
    const-string v2, "All ArrayList elements must be of type Bundle. Value type, name"

    .line 48
    invoke-virtual {v1, v2, v0, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_171

    .line 45
    :cond_15d
    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzkk;->zzz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_13a

    :cond_170
    :goto_170
    return v9

    :cond_171
    :goto_171
    const/4 v0, 0x4

    return v0
.end method

.method final zzE(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const-string v0, "_ev"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x100

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    .line 3
    invoke-direct {p0, v1, p2, v2, v2}, Lcom/google/android/gms/measurement/internal/zzkk;->zzao(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_15
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzR(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    goto :goto_28

    .line 7
    :cond_21
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const/16 v1, 0x64

    :goto_28
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, v1, p2, p1, v2}, Lcom/google/android/gms/measurement/internal/zzkk;->zzao(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final zzF(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgi;->zzd:[Ljava/lang/String;

    .line 2
    invoke-static {v10, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zzar(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    new-instance v14, Landroid/os/Bundle;

    .line 3
    invoke-direct {v14, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzae;->zzc()I

    move-result v15

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdw;->zzX:Lcom/google/android/gms/measurement/internal/zzdv;

    move-object/from16 v8, p1

    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v0

    if-eqz v0, :cond_37

    new-instance v0, Ljava/util/TreeSet;

    .line 8
    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    goto :goto_3b

    .line 9
    :cond_37
    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 10
    :goto_3b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v18, v17

    :goto_43
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_126

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    if-eqz v12, :cond_5c

    .line 11
    invoke-interface {v12, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_5c

    :cond_59
    move/from16 v2, v17

    goto :goto_6c

    :cond_5c
    :goto_5c
    if-eqz p5, :cond_63

    .line 12
    invoke-virtual {v9, v7}, Lcom/google/android/gms/measurement/internal/zzkk;->zzq(Ljava/lang/String;)I

    move-result v0

    goto :goto_65

    :cond_63
    move/from16 v0, v17

    :goto_65
    if-nez v0, :cond_6b

    .line 13
    invoke-virtual {v9, v7}, Lcom/google/android/gms/measurement/internal/zzkk;->zzr(Ljava/lang/String;)I

    move-result v0

    :cond_6b
    move v2, v0

    :goto_6c
    if-eqz v2, :cond_82

    const/4 v0, 0x3

    if-ne v2, v0, :cond_73

    move-object v5, v7

    goto :goto_75

    :cond_73
    const/4 v0, 0x0

    move-object v5, v0

    :goto_75
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v3, v7

    move-object v4, v7

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkk;->zzI(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v14, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_122

    .line 16
    :cond_82
    invoke-virtual {v11, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    move-object v5, v14

    move-object/from16 v6, p4

    move-object/from16 v19, v7

    move/from16 v7, p5

    move v8, v13

    .line 17
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/zzkk;->zzD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    move-result v2

    const/16 v0, 0x11

    if-ne v2, v0, :cond_ae

    const/16 v2, 0x11

    .line 18
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkk;->zzI(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d0

    :cond_ae
    if-eqz v2, :cond_d0

    const-string v0, "_ev"

    move-object/from16 v6, v19

    .line 19
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    const/16 v0, 0x15

    if-ne v2, v0, :cond_c0

    move-object v3, v10

    goto :goto_c1

    :cond_c0
    move-object v3, v6

    .line 31
    :goto_c1
    invoke-virtual {v11, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v4, v6

    .line 32
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkk;->zzI(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v14, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_122

    :cond_d0
    :goto_d0
    move-object/from16 v6, v19

    .line 20
    :cond_d2
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkk;->zzh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_122

    add-int/lit8 v0, v18, 0x1

    if-le v0, v15, :cond_11c

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Event can\'t contain more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " params"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v3

    .line 25
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v4

    .line 27
    invoke-virtual {v4, v11}, Lcom/google/android/gms/measurement/internal/zzed;->zzf(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 29
    invoke-static {v14, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzam(Landroid/os/Bundle;I)Z

    .line 30
    invoke-virtual {v14, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_11c
    move-object/from16 v8, p1

    move/from16 v18, v0

    goto/16 :goto_43

    :cond_122
    :goto_122
    move-object/from16 v8, p1

    goto/16 :goto_43

    :cond_126
    return-object v14
.end method

.method final zzG(Lcom/google/android/gms/measurement/internal/zzej;I)V
    .registers 11

    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzej;->zzd:Landroid/os/Bundle;

    .line 1
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkk;->zzh(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    add-int/lit8 v1, v1, 0x1

    if-le v1, p2, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x30

    .line 4
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Event can\'t contain more than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzej;->zza:Ljava/lang/String;

    .line 8
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v6

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzej;->zzd:Landroid/os/Bundle;

    .line 10
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzed;->zzf(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v4, v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzej;->zzd:Landroid/os/Bundle;

    const/4 v4, 0x5

    .line 12
    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zzam(Landroid/os/Bundle;I)Z

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzej;->zzd:Landroid/os/Bundle;

    .line 13
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_10

    :cond_6f
    return-void
.end method

.method final zzH(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v2

    .line 4
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v1, v3}, Lcom/google/android/gms/measurement/internal/zzkk;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b

    :cond_2b
    return-void
.end method

.method final zzI(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkk;->zzam(Landroid/os/Bundle;I)Z

    move-result p2

    if-eqz p2, :cond_32

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const/16 p2, 0x28

    const/4 p4, 0x1

    .line 3
    invoke-virtual {p0, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzkk;->zzC(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_ev"

    .line 4
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_32

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    instance-of p2, p5, Ljava/lang/String;

    if-nez p2, :cond_24

    instance-of p2, p5, Ljava/lang/CharSequence;

    if-eqz p2, :cond_32

    .line 7
    :cond_24
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long p2, p2

    const-string p4, "_el"

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_32
    return-void
.end method

.method final zzJ(Ljava/lang/String;Ljava/lang/Object;)I
    .registers 5

    const-string v0, "_ldl"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzap(Ljava/lang/String;)I

    move-result v0

    const-string v1, "user property referrer"

    .line 3
    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzkk;->zzt(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    goto :goto_1d

    .line 4
    :cond_13
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzap(Ljava/lang/String;)I

    move-result v0

    const-string v1, "user property"

    .line 5
    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzkk;->zzt(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    :goto_1d
    if-eqz p1, :cond_21

    const/4 p1, 0x0

    return p1

    :cond_21
    const/4 p1, 0x7

    return p1
.end method

.method final zzK(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const-string v0, "_ldl"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzap(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzao(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_13
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzap(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p2, v1, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzao(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_11

    .line 2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    .line 3
    :cond_11
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 4
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1d
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_2b

    .line 7
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void

    .line 8
    :cond_2b
    instance-of v0, p3, [Landroid/os/Bundle;

    if-eqz v0, :cond_35

    .line 9
    check-cast p3, [Landroid/os/Bundle;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void

    :cond_35
    if-eqz p2, :cond_5c

    if-eqz p3, :cond_42

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_43

    :cond_42
    const/4 p1, 0x0

    :goto_43
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 11
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p3

    .line 12
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzei;->zzh()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/zzed;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Not putting event parameter. Invalid value type. name, type"

    .line 15
    invoke-virtual {p3, v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5c
    return-void
.end method

.method final zzM(Lcom/google/android/gms/measurement/internal/zzkj;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {v0, p3}, Lcom/google/android/gms/measurement/internal/zzkk;->zzam(Landroid/os/Bundle;I)Z

    .line 3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 4
    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const/4 p4, 0x6

    if-eq p3, p4, :cond_20

    const/4 p4, 0x7

    if-eq p3, p4, :cond_20

    const/4 p4, 0x2

    if-ne p3, p4, :cond_26

    :cond_20
    int-to-long p3, p6

    const-string p5, "_el"

    .line 5
    invoke-virtual {v0, p5, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6
    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkw;->zzb()Z

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object p3

    const/4 p4, 0x0

    .line 6
    sget-object p5, Lcom/google/android/gms/measurement/internal/zzdw;->zzaA:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result p3

    if-eqz p3, :cond_3c

    .line 11
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzkj;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_3c
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzas()Lcom/google/android/gms/measurement/internal/zzz;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzk()Lcom/google/android/gms/measurement/internal/zzhn;

    move-result-object p1

    const-string p2, "auto"

    const-string p3, "_err"

    .line 10
    invoke-virtual {p1, p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzhn;->zzs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method final zzQ(Ljava/lang/String;)Z
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v1, "Permission not granted"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method final zzT(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzae;->zzu()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzas()Lcom/google/android/gms/measurement/internal/zzz;

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zzU(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_43

    .line 2
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkk;->zzE(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3f

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzh()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzed;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Param value can\'t be null"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    .line 8
    :cond_3f
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkk;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    :cond_43
    return-object v0
.end method

.method final zzV(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzas;
    .registers 15

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p8

    if-eqz p8, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkk;->zzn(Ljava/lang/String;)I

    move-result p8

    if-nez p8, :cond_45

    if-eqz p3, :cond_16

    .line 8
    new-instance p8, Landroid/os/Bundle;

    .line 9
    invoke-direct {p8, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1b

    .line 15
    :cond_16
    new-instance p8, Landroid/os/Bundle;

    .line 9
    invoke-direct {p8}, Landroid/os/Bundle;-><init>()V

    :goto_1b
    move-object v3, p8

    const-string p3, "_o"

    .line 10
    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p3}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkk;->zzF(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p7, :cond_33

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzU(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 14
    :cond_33
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance p3, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v2, p1}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    move-object v0, p3

    move-object v1, p2

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    return-object p3

    .line 2
    :cond_45
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object p3

    .line 6
    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Invalid conditional property event name"

    .line 7
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method final zzW(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    .line 1
    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_7
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    const/16 v1, 0x40

    .line 3
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_60

    .line 4
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_60

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-lez p2, :cond_60

    .line 5
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    const-string p2, "X.509"

    .line 6
    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 7
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 8
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3e
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_3e} :catch_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_3e} :catch_3f

    return p1

    :catch_3f
    move-exception p1

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string v0, "Package name not found"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_60

    :catch_50
    move-exception p1

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string v0, "Error obtaining certificate"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_60
    :goto_60
    const/4 p1, 0x1

    return p1
.end method

.method final zzX(Landroid/os/Parcelable;)[B
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_9
    invoke-interface {p1, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_14
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5
    throw p1
.end method

.method public final zzZ()I
    .registers 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "this.apkVersion"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzg:Ljava/lang/Integer;

    if-nez v0, :cond_1a

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v1

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzg:Ljava/lang/Integer;

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzg:Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected final zza()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zzaa(I)I
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v0

    const v1, 0xbdfcb8

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public final zzab(JJ)J
    .registers 7

    const-wide/32 v0, 0xea60

    mul-long/2addr p3, v0

    add-long/2addr p1, p3

    const-wide/32 p3, 0x5265c00

    div-long/2addr p1, p3

    return-wide p1
.end method

.method final zzac(Landroid/os/Bundle;J)V
    .registers 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "_et"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Params already contained engagement"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    add-long/2addr p2, v1

    .line 4
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final zzad(Lcom/google/android/gms/internal/measurement/zzs;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_a
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzs;->zzb(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string v0, "Error returning string value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzae(Lcom/google/android/gms/internal/measurement/zzs;J)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 2
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3
    :try_start_a
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzs;->zzb(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string p3, "Error returning long value to wrapper"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzaf(Lcom/google/android/gms/internal/measurement/zzs;I)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    :try_start_a
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzs;->zzb(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string v0, "Error returning int value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzag(Lcom/google/android/gms/internal/measurement/zzs;[B)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3
    :try_start_a
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzs;->zzb(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string v0, "Error returning byte array to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzah(Lcom/google/android/gms/internal/measurement/zzs;Z)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    :try_start_a
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzs;->zzb(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string v0, "Error returning boolean value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzai(Lcom/google/android/gms/internal/measurement/zzs;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/measurement/zzs;->zzb(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string v0, "Error returning bundle value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzaj(Lcom/google/android/gms/internal/measurement/zzs;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzs;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3
    :try_start_a
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzs;->zzb(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string v0, "Error returning bundle list to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzal(JLjava/lang/String;Ljava/lang/String;J)Ljava/net/URL;
    .registers 11

    .line 1
    :try_start_0
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x2

    new-array v0, p2, [Ljava/lang/Object;

    const-wide/32 v1, 0x9858

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkk;->zzZ()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "v%s.%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    aput-object p4, p1, v3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 4
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p1, p2

    const-string p2, "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s"

    .line 5
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzae;->zzv()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_50

    const-string p2, "&ddl_test=1"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_50
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_55} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_55} :catch_56

    return-object p2

    :catch_56
    move-exception p1

    goto :goto_59

    :catch_58
    move-exception p1

    :goto_59
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Failed to create BOW URL for Deferred Deep Link. exception"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final zzay()V
    .registers 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    new-instance v0, Ljava/security/SecureRandom;

    .line 2
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_29

    .line 4
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v3, "Utils falling back to Random for random id"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final zzd()J
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    :try_start_f
    new-instance v1, Ljava/util/Random;

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    .line 2
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iget v3, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzf:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzf:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_31
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_31

    throw v1

    .line 2
    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    :try_start_37
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    .line 5
    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    .line 7
    monitor-exit v0

    return-wide v1

    :catchall_48
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_37 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method final zzf()Ljava/security/SecureRandom;
    .registers 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "this.secureRandom"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzd:Ljava/security/SecureRandom;

    if-nez v0, :cond_e

    new-instance v0, Ljava/security/SecureRandom;

    .line 2
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzd:Ljava/security/SecureRandom;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzd:Ljava/security/SecureRandom;

    return-object v0
.end method

.method final zzi(Landroid/net/Uri;)Landroid/os/Bundle;
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_cf

    .line 1
    :try_start_3
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_7} :catch_bf

    const-string v2, "gclid"

    if-eqz v1, :cond_22

    :try_start_b
    const-string v1, "utm_campaign"

    .line 2
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "utm_source"

    .line 3
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "utm_medium"

    .line 4
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_21
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_21} :catch_bf

    goto :goto_26

    :cond_22
    move-object v1, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    .line 8
    :goto_26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 10
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3f

    goto :goto_40

    :cond_3f
    return-object v0

    :cond_40
    :goto_40
    new-instance v0, Landroid/os/Bundle;

    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_50

    const-string v6, "campaign"

    .line 14
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_50
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string v1, "source"

    .line 16
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_5b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "medium"

    .line 18
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_66
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 20
    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    const-string v1, "utm_term"

    .line 21
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_80

    const-string v2, "term"

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    const-string v1, "utm_content"

    .line 24
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_91

    const-string v2, "content"

    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_91
    const-string v1, "aclid"

    .line 27
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a0

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    const-string v1, "cp1"

    .line 30
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_af

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_af
    const-string v1, "anid"

    .line 33
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_be

    .line 35
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    return-object v0

    :catch_bf
    move-exception p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "Install referrer url isn\'t a hierarchical URI"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_cf
    return-object v0
.end method

.method final zzj(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_13

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 3
    :cond_13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_29

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 6
    :cond_29
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_43

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "Name must start with a letter. Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 10
    :cond_43
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 11
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_4b
    if-ge v1, v2, :cond_72

    .line 12
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_6c

    .line 13
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-eqz v4, :cond_5c

    goto :goto_6c

    .line 14
    :cond_5c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    .line 17
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 14
    :cond_6c
    :goto_6c
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_4b

    :cond_72
    const/4 p1, 0x1

    return p1
.end method

.method final zzk(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p2, :cond_13

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 3
    :cond_13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_29

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 6
    :cond_29
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    const/16 v3, 0x5f

    if-nez v2, :cond_49

    if-ne v1, v3, :cond_39

    move v1, v3

    goto :goto_49

    .line 15
    :cond_39
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "Name must start with a letter or _ (underscore). Type, name"

    .line 18
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 8
    :cond_49
    :goto_49
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 9
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_51
    if-ge v1, v2, :cond_76

    .line 10
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    if-eq v4, v3, :cond_70

    .line 11
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v5

    if-eqz v5, :cond_60

    goto :goto_70

    .line 12
    :cond_60
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    .line 15
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 12
    :cond_70
    :goto_70
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_51

    :cond_76
    const/4 p1, 0x1

    return p1
.end method

.method final zzl(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p4, :cond_13

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 3
    :cond_13
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzkk;->zzb:[Ljava/lang/String;

    move v2, v0

    :goto_19
    const/4 v3, 0x3

    if-ge v2, v3, :cond_37

    aget-object v3, v1, v2

    .line 4
    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string p3, "Name starts with reserved prefix. Type, name"

    .line 7
    invoke-virtual {p2, p3, p1, p4}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_37
    if-eqz p2, :cond_57

    .line 8
    invoke-static {p4, p2}, Lcom/google/android/gms/measurement/internal/zzkk;->zzar(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_57

    if-eqz p3, :cond_47

    .line 9
    invoke-static {p4, p3}, Lcom/google/android/gms/measurement/internal/zzkk;->zzar(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_57

    :cond_47
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string p3, "Name is reserved. Type, name"

    invoke-virtual {p2, p3, p1, p4}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_57
    const/4 p1, 0x1

    return p1
.end method

.method final zzm(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p3, :cond_13

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 3
    :cond_13
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p2, :cond_31

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "Name is too long. Type, maximum supported length, name"

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_31
    const/4 p1, 0x1

    return p1
.end method

.method final zzn(Ljava/lang/String;)I
    .registers 6

    const-string v0, "event"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzgi;->zza:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzb:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzl(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const/16 p1, 0xd

    return p1

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const/16 v1, 0x28

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzm(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_25

    return v2

    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method final zzo(Ljava/lang/String;)I
    .registers 6

    const-string v0, "user property"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x6

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzgk;->zza:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzl(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const/16 p1, 0xf

    return p1

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const/16 v1, 0x18

    .line 5
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzm(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_24

    return v2

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method final zzq(Ljava/lang/String;)I
    .registers 5

    const-string v0, "event param"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzj(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_a

    return v2

    :cond_a
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzl(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const/16 p1, 0xe

    return p1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const/16 v1, 0x28

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzm(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method final zzr(Ljava/lang/String;)I
    .registers 5

    const-string v0, "event param"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_a

    return v2

    :cond_a
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzl(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const/16 p1, 0xe

    return p1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const/16 v1, 0x28

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzm(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method final zzs(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, [Landroid/os/Parcelable;

    if-nez v0, :cond_f

    instance-of v0, p1, Ljava/util/ArrayList;

    if-nez v0, :cond_f

    instance-of p1, p1, Landroid/os/Bundle;

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method

.method final zzt(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-nez p4, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p4, Ljava/lang/Long;

    if-nez v1, :cond_56

    instance-of v1, p4, Ljava/lang/Float;

    if-nez v1, :cond_56

    instance-of v1, p4, Ljava/lang/Integer;

    if-nez v1, :cond_56

    instance-of v1, p4, Ljava/lang/Byte;

    if-nez v1, :cond_56

    instance-of v1, p4, Ljava/lang/Short;

    if-nez v1, :cond_56

    instance-of v1, p4, Ljava/lang/Boolean;

    if-nez v1, :cond_56

    instance-of v1, p4, Ljava/lang/Double;

    if-eqz v1, :cond_21

    goto :goto_56

    .line 2
    :cond_21
    instance-of v1, p4, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_30

    instance-of v1, p4, Ljava/lang/Character;

    if-nez v1, :cond_30

    instance-of v1, p4, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2f

    goto :goto_30

    :cond_2f
    return v2

    .line 3
    :cond_30
    :goto_30
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 4
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p4, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p3, :cond_56

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p3

    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzei;->zzh()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p3

    .line 7
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "Value is too long; discarded. Value kind, name, value length"

    .line 8
    invoke-virtual {p3, v0, p1, p2, p4}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_56
    :goto_56
    return v0
.end method

.method final zzz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    if-nez v11, :cond_b

    return-void

    :cond_b
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    new-instance v0, Ljava/util/TreeSet;

    .line 2
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v15, 0x0

    :cond_1e
    :goto_1e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    if-eqz v12, :cond_36

    .line 4
    invoke-interface {v12, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_36

    :cond_34
    const/4 v2, 0x0

    goto :goto_45

    :cond_36
    :goto_36
    if-eqz p6, :cond_3d

    .line 5
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzkk;->zzq(Ljava/lang/String;)I

    move-result v0

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    if-nez v0, :cond_44

    .line 6
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzkk;->zzr(Ljava/lang/String;)I

    move-result v0

    :cond_44
    move v2, v0

    :goto_45
    if-eqz v2, :cond_5b

    const/4 v0, 0x3

    if-ne v2, v0, :cond_4c

    move-object v5, v8

    goto :goto_4e

    :cond_4c
    const/4 v0, 0x0

    move-object v5, v0

    :goto_4e
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v8

    move-object v4, v8

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkk;->zzI(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1e

    .line 9
    :cond_5b
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zzs(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzh()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v1, "Nested Bundle parameters are not allowed; discarded. event name, param name, child param name"

    move-object/from16 v7, p3

    .line 12
    invoke-virtual {v0, v1, v10, v7, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x16

    move v2, v0

    move-object v14, v8

    goto :goto_98

    :cond_7b
    move-object/from16 v7, p3

    .line 13
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v8

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object v14, v8

    move/from16 v8, v16

    .line 14
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/zzkk;->zzD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    move-result v0

    move v2, v0

    :goto_98
    if-eqz v2, :cond_b4

    const-string v0, "_ev"

    .line 15
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 26
    invoke-virtual {v11, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v14

    move-object v4, v14

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkk;->zzI(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v11, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 16
    :cond_b4
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzkk;->zzh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgj;->zzd:[Ljava/lang/String;

    invoke-static {v14, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zzar(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    add-int/lit8 v15, v15, 0x1

    if-lez v15, :cond_1e

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzd()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    iget-object v1, v9, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v1

    .line 20
    invoke-virtual {v1, v10}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v2

    .line 22
    invoke-virtual {v2, v11}, Lcom/google/android/gms/measurement/internal/zzed;->zzf(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Item cannot contain custom parameters"

    .line 23
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x17

    .line 24
    invoke-static {v11, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zzam(Landroid/os/Bundle;I)Z

    .line 25
    invoke-virtual {v11, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_f3
    return-void
.end method
