.class final Lcom/google/android/gms/internal/measurement/zzaz;
.super Lcom/google/android/gms/internal/measurement/zzbg;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.2"


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzbr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzbr;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzaz;->zzb:Lcom/google/android/gms/internal/measurement/zzbr;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzaz;->zza:Z

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbg;-><init>(Lcom/google/android/gms/internal/measurement/zzbr;Z)V

    return-void
.end method


# virtual methods
.method final zza()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaz;->zzb:Lcom/google/android/gms/internal/measurement/zzbr;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzbr;->zzR(Lcom/google/android/gms/internal/measurement/zzbr;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzaz;->zza:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzp;->setDataCollectionEnabled(Z)V

    return-void
.end method
