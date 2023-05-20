.class public abstract Lcom/google/android/gms/internal/measurement/zzgz;
.super Lcom/google/android/gms/internal/measurement/zzgh;
.source "com.google.android.gms:play-services-measurement-base@@18.0.2"


# static fields
.field private static final zzb:Ljava/util/logging/Logger;

.field private static final zzc:Z


# instance fields
.field zza:Lcom/google/android/gms/internal/measurement/zzha;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/measurement/zzgz;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgz;->zzb:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkh;->zza()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzgz;->zzc:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgh;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzgw;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgh;-><init>()V

    return-void
.end method

.method public static zzA(Lcom/google/android/gms/internal/measurement/zzgs;)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgs;->zzc()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static zzB(Lcom/google/android/gms/internal/measurement/zzix;Lcom/google/android/gms/internal/measurement/zzji;)I
    .registers 4

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzgb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgb;->zzbq()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzji;->zze(Ljava/lang/Object;)I

    move-result v0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzgb;->zzbr(I)V

    :cond_10
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method static zzE(ILcom/google/android/gms/internal/measurement/zzix;Lcom/google/android/gms/internal/measurement/zzji;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result p0

    add-int/2addr p0, p0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgb;->zzbq()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/measurement/zzji;->zze(Ljava/lang/Object;)I

    move-result v0

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzgb;->zzbr(I)V

    :cond_17
    add-int/2addr p0, v0

    return p0
.end method

.method static synthetic zzF()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzgz;->zzc:Z

    return v0
.end method

.method public static zzt([B)Lcom/google/android/gms/internal/measurement/zzgz;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgx;

    array-length v1, p0

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzgx;-><init>([BII)V

    return-object v0
.end method

.method public static zzu(I)I
    .registers 1

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result p0

    return p0
.end method

.method public static zzv(I)I
    .registers 1

    if-ltz p0, :cond_7

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static zzw(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static zzx(J)I
    .registers 8

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_b

    return v1

    :cond_b
    cmp-long v0, p0, v2

    if-gez v0, :cond_12

    const/16 p0, 0xa

    return p0

    :cond_12
    const-wide v4, -0x800000000L

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_21

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_22

    :cond_21
    const/4 v0, 0x2

    :goto_22
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2f

    add-int/lit8 v0, v0, 0x2

    const/16 v4, 0xe

    ushr-long/2addr p0, v4

    :cond_2f
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_37

    add-int/2addr v0, v1

    :cond_37
    return v0
.end method

.method public static zzy(Ljava/lang/String;)I
    .registers 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzkn;->zzc(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_4
    .catch Lcom/google/android/gms/internal/measurement/zzkl; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_c

    .line 2
    :catch_5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzia;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3
    array-length p0, p0

    .line 1
    :goto_c
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzz(Lcom/google/android/gms/internal/measurement/zzif;)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzif;->zza()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final zzC()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgz;->zzs()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzD(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzkl;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgz;->zzb:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzia;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 3
    :try_start_14
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzgz;->zzl(I)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/measurement/zzgz;->zzq([BII)V
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_1c} :catch_1f
    .catch Lcom/google/android/gms/internal/measurement/zzgy; {:try_start_14 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p1

    .line 5
    throw p1

    :catch_1f
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzgy;

    .line 6
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzgy;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract zza(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzd(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zze(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzf(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzg(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzh(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzi(ILcom/google/android/gms/internal/measurement/zzgs;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzj(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzk(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzl(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzm(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzn(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzo(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzq([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzs()I
.end method
