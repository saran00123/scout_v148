.class public final Lcom/google/android/gms/internal/measurement/zzby;
.super Lcom/google/android/gms/internal/measurement/zzhs;
.source "com.google.android.gms:play-services-measurement@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zziy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhs<",
        "Lcom/google/android/gms/internal/measurement/zzby;",
        "Lcom/google/android/gms/internal/measurement/zzbx;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zziy;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/zzby;


# instance fields
.field private zza:I

.field private zze:Lcom/google/android/gms/internal/measurement/zzck;

.field private zzf:Lcom/google/android/gms/internal/measurement/zzcd;

.field private zzg:Z

.field private zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzby;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzby;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzby;->zzi:Lcom/google/android/gms/internal/measurement/zzby;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzby;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhs;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhs;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static zzi()Lcom/google/android/gms/internal/measurement/zzby;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzby;->zzi:Lcom/google/android/gms/internal/measurement/zzby;

    return-object v0
.end method

.method static synthetic zzj()Lcom/google/android/gms/internal/measurement/zzby;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzby;->zzi:Lcom/google/android/gms/internal/measurement/zzby;

    return-object v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/measurement/zzby;Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zza:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzby;->zzh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zza:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzck;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zze:Lcom/google/android/gms/internal/measurement/zzck;

    if-nez v0, :cond_8

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzck;->zzi()Lcom/google/android/gms/internal/measurement/zzck;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzc()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zza:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzcd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zzf:Lcom/google/android/gms/internal/measurement/zzcd;

    if-nez v0, :cond_8

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd;->zzk()Lcom/google/android/gms/internal/measurement/zzcd;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zze()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zza:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zzg:Z

    return v0
.end method

.method public final zzg()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zza:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_47

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_22

    if-eq p1, v1, :cond_1c

    const/4 p2, 0x0

    if-eq p1, v0, :cond_16

    if-eq p1, p3, :cond_13

    return-object p2

    .line 1
    :cond_13
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzby;->zzi:Lcom/google/android/gms/internal/measurement/zzby;

    return-object p1

    .line 4
    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbx;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbx;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;)V

    return-object p1

    .line 1
    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzby;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzby;-><init>()V

    return-object p1

    .line 0
    :cond_22
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string/jumbo v3, "zza"

    aput-object v3, p1, p3

    const-string/jumbo p3, "zze"

    aput-object p3, p1, p2

    const-string/jumbo p2, "zzf"

    aput-object p2, p1, v2

    const-string/jumbo p2, "zzg"

    aput-object p2, p1, v1

    const-string/jumbo p2, "zzh"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzby;->zzi:Lcom/google/android/gms/internal/measurement/zzby;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1007\u0002\u0004\u1008\u0003"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzby;->zzbz(Lcom/google/android/gms/internal/measurement/zzix;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_47
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
