.class public final Lcom/google/android/gms/internal/wallet/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# static fields
.field private static final zze:Lcom/google/android/gms/internal/wallet/zzf;

.field private static volatile zzf:Lcom/google/android/gms/internal/wallet/zzf;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/wallet/zzg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/wallet/zzg;-><init>(Lcom/google/android/gms/internal/wallet/zzh;)V

    .line 3
    sput-object v0, Lcom/google/android/gms/internal/wallet/zze;->zze:Lcom/google/android/gms/internal/wallet/zzf;

    sput-object v0, Lcom/google/android/gms/internal/wallet/zze;->zzf:Lcom/google/android/gms/internal/wallet/zzf;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/wallet/zzf;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/wallet/zze;->zzf:Lcom/google/android/gms/internal/wallet/zzf;

    return-object v0
.end method
