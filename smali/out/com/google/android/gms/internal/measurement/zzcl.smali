.class final synthetic Lcom/google/android/gms/internal/measurement/zzcl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.2"


# static fields
.field static final synthetic zza:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhr;->zza()[I

    const/4 v0, 0x7

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzcl;->zza:[I

    const/4 v1, 0x1

    const/4 v2, 0x3

    :try_start_a
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzcl;->zza:[I

    aput v1, v3, v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_e} :catch_e

    :catch_e
    const/4 v3, 0x2

    const/4 v4, 0x4

    :try_start_10
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzcl;->zza:[I

    aput v3, v5, v4
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzcl;->zza:[I

    aput v2, v5, v3
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_18} :catch_18

    :catch_18
    const/4 v2, 0x5

    :try_start_19
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzcl;->zza:[I

    aput v4, v3, v2
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v3, 0x6

    :try_start_1e
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzcl;->zza:[I

    aput v2, v4, v3
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzcl;->zza:[I

    const/4 v4, 0x0

    aput v3, v2, v4
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_27} :catch_27

    :catch_27
    :try_start_27
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzcl;->zza:[I

    aput v0, v2, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_2b} :catch_2b

    :catch_2b
    return-void
.end method
