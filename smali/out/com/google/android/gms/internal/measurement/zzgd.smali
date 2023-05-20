.class final Lcom/google/android/gms/internal/measurement/zzgd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@18.0.2"


# static fields
.field private static final zza:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzb:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "libcore.io.Memory"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_8

    goto :goto_9

    :catchall_8
    move-object v0, v1

    :goto_9
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgd;->zza:Ljava/lang/Class;

    const-string v0, "org.robolectric.Robolectric"

    .line 2
    :try_start_d
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_11

    :catchall_11
    if-eqz v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzgd;->zzb:Z

    return-void
.end method

.method static zza()Z
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgd;->zza:Ljava/lang/Class;

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzgd;->zzb:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method static zzb()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgd;->zza:Ljava/lang/Class;

    return-object v0
.end method
