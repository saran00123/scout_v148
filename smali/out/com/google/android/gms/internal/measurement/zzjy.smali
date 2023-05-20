.class final Lcom/google/android/gms/internal/measurement/zzjy;
.super Lcom/google/android/gms/internal/measurement/zzjw;
.source "com.google.android.gms:play-services-measurement-base@@18.0.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjw<",
        "Lcom/google/android/gms/internal/measurement/zzjx;",
        "Lcom/google/android/gms/internal/measurement/zzjx;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjw;-><init>()V

    return-void
.end method


# virtual methods
.method final bridge synthetic zza(Ljava/lang/Object;IJ)V
    .registers 5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjx;

    shl-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic zzb()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic zzc(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjx;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhs;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzhs;->zzc:Lcom/google/android/gms/internal/measurement/zzjx;

    return-void
.end method

.method final bridge synthetic zzd(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhs;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzhs;->zzc:Lcom/google/android/gms/internal/measurement/zzjx;

    return-object p1
.end method

.method final zze(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhs;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzhs;->zzc:Lcom/google/android/gms/internal/measurement/zzjx;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd()V

    return-void
.end method

.method final bridge synthetic zzf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjx;->zza()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzjx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p1

    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjx;->zzc(Lcom/google/android/gms/internal/measurement/zzjx;Lcom/google/android/gms/internal/measurement/zzjx;)Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object p1

    return-object p1
.end method

.method final bridge synthetic zzg(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjx;->zze()I

    move-result p1

    return p1
.end method

.method final bridge synthetic zzh(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjx;->zzf()I

    move-result p1

    return p1
.end method

.method final bridge synthetic zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzha;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(Lcom/google/android/gms/internal/measurement/zzha;)V

    return-void
.end method
