.class final Lcom/google/android/gms/internal/measurement/zzja;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzji;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzji<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/measurement/zzix;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:[I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Lcom/google/android/gms/internal/measurement/zzil;

.field private final zzn:Lcom/google/android/gms/internal/measurement/zzjw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjw<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzo:Lcom/google/android/gms/internal/measurement/zzhf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhf<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzp:Lcom/google/android/gms/internal/measurement/zzjc;

.field private final zzq:Lcom/google/android/gms/internal/measurement/zzis;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzja;->zza:[I

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkh;->zzr()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/zzix;ZZ[IIILcom/google/android/gms/internal/measurement/zzjc;Lcom/google/android/gms/internal/measurement/zzil;Lcom/google/android/gms/internal/measurement/zzjw;Lcom/google/android/gms/internal/measurement/zzhf;Lcom/google/android/gms/internal/measurement/zzis;[B)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/measurement/zzix;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/measurement/zzjc;",
            "Lcom/google/android/gms/internal/measurement/zzil;",
            "Lcom/google/android/gms/internal/measurement/zzjw<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzhf<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzis;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p5

    move-object/from16 v2, p14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    move-object v3, p2

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzd:[Ljava/lang/Object;

    move v3, p3

    iput v3, v0, Lcom/google/android/gms/internal/measurement/zzja;->zze:I

    move v3, p4

    iput v3, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzf:I

    move v3, p6

    iput-boolean v3, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzi:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    .line 1
    invoke-virtual {v2, p5}, Lcom/google/android/gms/internal/measurement/zzhf;->zza(Lcom/google/android/gms/internal/measurement/zzix;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v3, 0x1

    :cond_20
    iput-boolean v3, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzh:Z

    move-object v3, p8

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzj:[I

    move v3, p9

    iput v3, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzk:I

    move v3, p10

    iput v3, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzl:I

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzp:Lcom/google/android/gms/internal/measurement/zzjc;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzm:Lcom/google/android/gms/internal/measurement/zzil;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzn:Lcom/google/android/gms/internal/measurement/zzjw;

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzo:Lcom/google/android/gms/internal/measurement/zzhf;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzg:Lcom/google/android/gms/internal/measurement/zzix;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzq:Lcom/google/android/gms/internal/measurement/zzis;

    return-void
.end method

.method private final zzA(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    .line 1
    aget p1, v0, p1

    return p1
.end method

.method private final zzB(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    .line 1
    aget p1, v0, p1

    return p1
.end method

.method private static zzC(I)I
    .registers 1

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static zzD(Ljava/lang/Object;J)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzE(Ljava/lang/Object;J)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzF(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zzG(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzH(Ljava/lang/Object;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private final zzJ(Ljava/lang/Object;IIII)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_a

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_a
    and-int p1, p4, p5

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private final zzK(Ljava/lang/Object;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzja;->zzB(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_eb

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzja;->zzA(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzja;->zzC(I)I

    move-result p2

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_f8

    .line 17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :pswitch_29
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_30

    return v6

    :cond_30
    return v5

    .line 4
    :pswitch_31
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3a

    return v6

    :cond_3a
    return v5

    .line 5
    :pswitch_3b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_42

    return v6

    :cond_42
    return v5

    .line 6
    :pswitch_43
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_4c

    return v6

    :cond_4c
    return v5

    .line 7
    :pswitch_4d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_54

    return v6

    :cond_54
    return v5

    .line 8
    :pswitch_55
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5c

    return v6

    :cond_5c
    return v5

    .line 9
    :pswitch_5d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_64

    return v6

    :cond_64
    return v5

    .line 10
    :pswitch_65
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgs;->zzb:Lcom/google/android/gms/internal/measurement/zzgs;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzgs;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    return v6

    :cond_72
    return v5

    .line 11
    :pswitch_73
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7a

    return v6

    :cond_7a
    return v5

    .line 12
    :pswitch_7b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_8d

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8c

    return v6

    :cond_8c
    return v5

    .line 15
    :cond_8d
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/zzgs;

    if-eqz p2, :cond_9b

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgs;->zzb:Lcom/google/android/gms/internal/measurement/zzgs;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzgs;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9a

    return v6

    :cond_9a
    return v5

    .line 27
    :cond_9b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 18
    :pswitch_a1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzh(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 19
    :pswitch_a6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_ad

    return v6

    :cond_ad
    return v5

    .line 20
    :pswitch_ae
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_b7

    return v6

    :cond_b7
    return v5

    .line 21
    :pswitch_b8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_bf

    return v6

    :cond_bf
    return v5

    .line 22
    :pswitch_c0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_c9

    return v6

    :cond_c9
    return v5

    .line 23
    :pswitch_ca
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_d3

    return v6

    :cond_d3
    return v5

    .line 24
    :pswitch_d4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzj(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_de

    return v6

    :cond_de
    return v5

    .line 25
    :pswitch_df
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzl(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double p1, p1, v0

    if-eqz p1, :cond_ea

    return v6

    :cond_ea
    return v5

    .line 27
    :cond_eb
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result p1

    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_f7

    return v6

    :cond_f7
    return v5

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_df
        :pswitch_d4
        :pswitch_ca
        :pswitch_c0
        :pswitch_b8
        :pswitch_ae
        :pswitch_a6
        :pswitch_a1
        :pswitch_7b
        :pswitch_73
        :pswitch_65
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_43
        :pswitch_3b
        :pswitch_31
        :pswitch_29
    .end packed-switch
.end method

.method private final zzL(Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzja;->zzB(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    return-void

    .line 2
    :cond_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zze(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzM(Ljava/lang/Object;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzja;->zzB(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private final zzN(Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzja;->zzB(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zze(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzO(I)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zze:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzf:I

    if-gt p1, v0, :cond_e

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzQ(II)I

    move-result p1

    return p1

    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method private final zzP(II)I
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zze:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzf:I

    if-gt p1, v0, :cond_d

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzja;->zzQ(II)I

    move-result p1

    return p1

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method private final zzQ(II)I
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_7
    if-gt p2, v0, :cond_20

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 1
    aget v4, v4, v3

    if-ne p1, v4, :cond_16

    return v3

    :cond_16
    if-ge p1, v4, :cond_1c

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_7

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    move p2, v2

    goto :goto_7

    :cond_20
    return v1
.end method

.method private final zzR(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzha;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzha;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzh:Z

    if-nez v3, :cond_453

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    array-length v3, v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzja;->zzb:Lsun/misc/Unsafe;

    const v5, 0xfffff

    move v9, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_15
    if-ge v7, v3, :cond_449

    .line 1
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzA(I)I

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 2
    aget v11, v11, v7

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzja;->zzC(I)I

    move-result v12

    const/16 v13, 0x11

    const/4 v14, 0x1

    if-gt v12, v13, :cond_3e

    iget-object v13, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    add-int/lit8 v15, v7, 0x2

    .line 3
    aget v13, v13, v15

    and-int v15, v13, v5

    if-eq v15, v9, :cond_38

    int-to-long v8, v15

    .line 4
    invoke-virtual {v4, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    goto :goto_39

    :cond_38
    move v15, v9

    :goto_39
    ushr-int/lit8 v9, v13, 0x14

    shl-int v9, v14, v9

    goto :goto_40

    :cond_3e
    move v15, v9

    const/4 v9, 0x0

    :goto_40
    and-int/2addr v10, v5

    int-to-long v5, v10

    packed-switch v12, :pswitch_data_45a

    :cond_45
    :goto_45
    const/4 v10, 0x0

    goto/16 :goto_441

    .line 103
    :pswitch_48
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 104
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v6

    .line 105
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzji;)V

    goto :goto_45

    .line 106
    :pswitch_5a
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 107
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzq(IJ)V

    goto :goto_45

    .line 108
    :pswitch_68
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 109
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzp(II)V

    goto :goto_45

    .line 110
    :pswitch_76
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 111
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzd(IJ)V

    goto :goto_45

    .line 112
    :pswitch_84
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 113
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzb(II)V

    goto :goto_45

    .line 114
    :pswitch_92
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 115
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzg(II)V

    goto :goto_45

    .line 116
    :pswitch_a0
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 117
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzo(II)V

    goto :goto_45

    .line 118
    :pswitch_ae
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 119
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgs;

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzn(ILcom/google/android/gms/internal/measurement/zzgs;)V

    goto :goto_45

    .line 120
    :pswitch_be
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 121
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 122
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v6

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzji;)V

    goto/16 :goto_45

    .line 123
    :pswitch_d1
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 124
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v5, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzha;)V

    goto/16 :goto_45

    .line 125
    :pswitch_e0
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 126
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzH(Ljava/lang/Object;J)Z

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzl(IZ)V

    goto/16 :goto_45

    .line 127
    :pswitch_ef
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 128
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzk(II)V

    goto/16 :goto_45

    .line 129
    :pswitch_fe
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 130
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzj(IJ)V

    goto/16 :goto_45

    .line 131
    :pswitch_10d
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 132
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzi(II)V

    goto/16 :goto_45

    .line 133
    :pswitch_11c
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 134
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzh(IJ)V

    goto/16 :goto_45

    .line 135
    :pswitch_12b
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 136
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzc(IJ)V

    goto/16 :goto_45

    .line 137
    :pswitch_13a
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 138
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzE(Ljava/lang/Object;J)F

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zze(IF)V

    goto/16 :goto_45

    .line 139
    :pswitch_149
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 140
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzD(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzf(ID)V

    goto/16 :goto_45

    .line 141
    :pswitch_158
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2, v11, v5, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzS(Lcom/google/android/gms/internal/measurement/zzha;ILjava/lang/Object;I)V

    goto/16 :goto_45

    .line 98
    :pswitch_161
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 99
    aget v9, v9, v7

    .line 100
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 101
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v6

    .line 102
    invoke-static {v9, v5, v2, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzaa(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Lcom/google/android/gms/internal/measurement/zzji;)V

    goto/16 :goto_45

    .line 95
    :pswitch_174
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 96
    aget v9, v9, v7

    .line 97
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 98
    invoke-static {v9, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_45

    .line 92
    :pswitch_183
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 93
    aget v9, v9, v7

    .line 94
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 95
    invoke-static {v9, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_45

    .line 89
    :pswitch_192
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 90
    aget v9, v9, v7

    .line 91
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 92
    invoke-static {v9, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_45

    .line 86
    :pswitch_1a1
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 87
    aget v9, v9, v7

    .line 88
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 89
    invoke-static {v9, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_45

    .line 83
    :pswitch_1b0
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 84
    aget v9, v9, v7

    .line 85
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 86
    invoke-static {v9, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_45

    .line 80
    :pswitch_1bf
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 81
    aget v9, v9, v7

    .line 82
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 83
    invoke-static {v9, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_45

    .line 77
    :pswitch_1ce
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 78
    aget v9, v9, v7

    .line 79
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 80
    invoke-static {v9, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_45

    .line 74
    :pswitch_1dd
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 75
    aget v9, v9, v7

    .line 76
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 77
    invoke-static {v9, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_45

    .line 71
    :pswitch_1ec
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 72
    aget v9, v9, v7

    .line 73
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 74
    invoke-static {v9, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_45

    .line 68
    :pswitch_1fb
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 69
    aget v9, v9, v7

    .line 70
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 71
    invoke-static {v9, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_45

    .line 65
    :pswitch_20a
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 66
    aget v9, v9, v7

    .line 67
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 68
    invoke-static {v9, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_45

    .line 62
    :pswitch_219
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 63
    aget v9, v9, v7

    .line 64
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 65
    invoke-static {v9, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_45

    .line 59
    :pswitch_228
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 60
    aget v9, v9, v7

    .line 61
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 62
    invoke-static {v9, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_45

    .line 56
    :pswitch_237
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 57
    aget v9, v9, v7

    .line 58
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 59
    invoke-static {v9, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_45

    .line 53
    :pswitch_246
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 54
    aget v9, v9, v7

    .line 55
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v10, 0x0

    .line 56
    invoke-static {v9, v5, v2, v10}, Lcom/google/android/gms/internal/measurement/zzjk;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_441

    :pswitch_256
    const/4 v10, 0x0

    .line 50
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 51
    aget v9, v9, v7

    .line 52
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 53
    invoke-static {v9, v5, v2, v10}, Lcom/google/android/gms/internal/measurement/zzjk;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_441

    :pswitch_266
    const/4 v10, 0x0

    .line 47
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 48
    aget v9, v9, v7

    .line 49
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 50
    invoke-static {v9, v5, v2, v10}, Lcom/google/android/gms/internal/measurement/zzjk;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_441

    :pswitch_276
    const/4 v10, 0x0

    .line 44
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 45
    aget v9, v9, v7

    .line 46
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 47
    invoke-static {v9, v5, v2, v10}, Lcom/google/android/gms/internal/measurement/zzjk;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_441

    :pswitch_286
    const/4 v10, 0x0

    .line 41
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 42
    aget v9, v9, v7

    .line 43
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 44
    invoke-static {v9, v5, v2, v10}, Lcom/google/android/gms/internal/measurement/zzjk;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_441

    :pswitch_296
    const/4 v10, 0x0

    .line 38
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 39
    aget v9, v9, v7

    .line 40
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 41
    invoke-static {v9, v5, v2, v10}, Lcom/google/android/gms/internal/measurement/zzjk;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_441

    .line 35
    :pswitch_2a6
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 36
    aget v9, v9, v7

    .line 37
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 38
    invoke-static {v9, v5, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzY(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;)V

    goto/16 :goto_45

    .line 31
    :pswitch_2b5
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 32
    aget v9, v9, v7

    .line 33
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 34
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v6

    .line 35
    invoke-static {v9, v5, v2, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzZ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Lcom/google/android/gms/internal/measurement/zzji;)V

    goto/16 :goto_45

    .line 28
    :pswitch_2c8
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 29
    aget v9, v9, v7

    .line 30
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 31
    invoke-static {v9, v5, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzX(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;)V

    goto/16 :goto_45

    .line 25
    :pswitch_2d7
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 26
    aget v9, v9, v7

    .line 27
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v10, 0x0

    .line 28
    invoke-static {v9, v5, v2, v10}, Lcom/google/android/gms/internal/measurement/zzjk;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_441

    :pswitch_2e7
    const/4 v10, 0x0

    .line 22
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 23
    aget v9, v9, v7

    .line 24
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 25
    invoke-static {v9, v5, v2, v10}, Lcom/google/android/gms/internal/measurement/zzjk;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_441

    :pswitch_2f7
    const/4 v10, 0x0

    .line 19
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 20
    aget v9, v9, v7

    .line 21
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 22
    invoke-static {v9, v5, v2, v10}, Lcom/google/android/gms/internal/measurement/zzjk;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_441

    :pswitch_307
    const/4 v10, 0x0

    .line 16
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 17
    aget v9, v9, v7

    .line 18
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 19
    invoke-static {v9, v5, v2, v10}, Lcom/google/android/gms/internal/measurement/zzjk;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_441

    :pswitch_317
    const/4 v10, 0x0

    .line 13
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 14
    aget v9, v9, v7

    .line 15
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 16
    invoke-static {v9, v5, v2, v10}, Lcom/google/android/gms/internal/measurement/zzjk;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_441

    :pswitch_327
    const/4 v10, 0x0

    .line 10
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 11
    aget v9, v9, v7

    .line 12
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 13
    invoke-static {v9, v5, v2, v10}, Lcom/google/android/gms/internal/measurement/zzjk;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_441

    :pswitch_337
    const/4 v10, 0x0

    .line 7
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 8
    aget v9, v9, v7

    .line 9
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 10
    invoke-static {v9, v5, v2, v10}, Lcom/google/android/gms/internal/measurement/zzjk;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_441

    :pswitch_347
    const/4 v10, 0x0

    .line 4
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 5
    aget v9, v9, v7

    .line 6
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 7
    invoke-static {v9, v5, v2, v10}, Lcom/google/android/gms/internal/measurement/zzjk;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_441

    :pswitch_357
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 142
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v6

    .line 143
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzji;)V

    goto/16 :goto_441

    :pswitch_368
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 144
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzq(IJ)V

    goto/16 :goto_441

    :pswitch_375
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 145
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzp(II)V

    goto/16 :goto_441

    :pswitch_382
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 146
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzd(IJ)V

    goto/16 :goto_441

    :pswitch_38f
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 147
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzb(II)V

    goto/16 :goto_441

    :pswitch_39c
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 148
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzg(II)V

    goto/16 :goto_441

    :pswitch_3a9
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 149
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzo(II)V

    goto/16 :goto_441

    :pswitch_3b6
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 150
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgs;

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzn(ILcom/google/android/gms/internal/measurement/zzgs;)V

    goto/16 :goto_441

    :pswitch_3c5
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 151
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 152
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v6

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzji;)V

    goto/16 :goto_441

    :pswitch_3d6
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 153
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v5, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzha;)V

    goto :goto_441

    :pswitch_3e2
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 154
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzh(Ljava/lang/Object;J)Z

    move-result v5

    .line 155
    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzl(IZ)V

    goto :goto_441

    :pswitch_3ee
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 156
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzk(II)V

    goto :goto_441

    :pswitch_3fa
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 157
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzj(IJ)V

    goto :goto_441

    :pswitch_406
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 158
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzi(II)V

    goto :goto_441

    :pswitch_412
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 159
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzh(IJ)V

    goto :goto_441

    :pswitch_41e
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 160
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzc(IJ)V

    goto :goto_441

    :pswitch_42a
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 161
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzj(Ljava/lang/Object;J)F

    move-result v5

    .line 162
    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zze(IF)V

    goto :goto_441

    :pswitch_436
    const/4 v10, 0x0

    and-int/2addr v9, v8

    if-eqz v9, :cond_441

    .line 163
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzl(Ljava/lang/Object;J)D

    move-result-wide v5

    .line 164
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzf(ID)V

    :cond_441
    :goto_441
    add-int/lit8 v7, v7, 0x3

    move v9, v15

    const v5, 0xfffff

    goto/16 :goto_15

    .line 167
    :cond_449
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzn:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 165
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzha;)V

    return-void

    .line 164
    :cond_453
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzo:Lcom/google/android/gms/internal/measurement/zzhf;

    .line 166
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhj;

    const/4 v1, 0x0

    .line 167
    throw v1

    :pswitch_data_45a
    .packed-switch 0x0
        :pswitch_436
        :pswitch_42a
        :pswitch_41e
        :pswitch_412
        :pswitch_406
        :pswitch_3fa
        :pswitch_3ee
        :pswitch_3e2
        :pswitch_3d6
        :pswitch_3c5
        :pswitch_3b6
        :pswitch_3a9
        :pswitch_39c
        :pswitch_38f
        :pswitch_382
        :pswitch_375
        :pswitch_368
        :pswitch_357
        :pswitch_347
        :pswitch_337
        :pswitch_327
        :pswitch_317
        :pswitch_307
        :pswitch_2f7
        :pswitch_2e7
        :pswitch_2d7
        :pswitch_2c8
        :pswitch_2b5
        :pswitch_2a6
        :pswitch_296
        :pswitch_286
        :pswitch_276
        :pswitch_266
        :pswitch_256
        :pswitch_246
        :pswitch_237
        :pswitch_228
        :pswitch_219
        :pswitch_20a
        :pswitch_1fb
        :pswitch_1ec
        :pswitch_1dd
        :pswitch_1ce
        :pswitch_1bf
        :pswitch_1b0
        :pswitch_1a1
        :pswitch_192
        :pswitch_183
        :pswitch_174
        :pswitch_161
        :pswitch_158
        :pswitch_149
        :pswitch_13a
        :pswitch_12b
        :pswitch_11c
        :pswitch_10d
        :pswitch_fe
        :pswitch_ef
        :pswitch_e0
        :pswitch_d1
        :pswitch_be
        :pswitch_ae
        :pswitch_a0
        :pswitch_92
        :pswitch_84
        :pswitch_76
        :pswitch_68
        :pswitch_5a
        :pswitch_48
    .end packed-switch
.end method

.method private final zzS(Lcom/google/android/gms/internal/measurement/zzha;ILjava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzha;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/measurement/zzja;->zzw(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/measurement/zziq;

    const/4 p1, 0x0

    throw p1
.end method

.method private static final zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzha;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzha;->zzm(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgs;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzha;->zzn(ILcom/google/android/gms/internal/measurement/zzgs;)V

    return-void
.end method

.method static zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjx;
    .registers 3

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzhs;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhs;->zzc:Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjx;->zza()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v1

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhs;->zzc:Lcom/google/android/gms/internal/measurement/zzjx;

    :cond_10
    return-object v0
.end method

.method static zzk(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zziu;Lcom/google/android/gms/internal/measurement/zzjc;Lcom/google/android/gms/internal/measurement/zzil;Lcom/google/android/gms/internal/measurement/zzjw;Lcom/google/android/gms/internal/measurement/zzhf;Lcom/google/android/gms/internal/measurement/zzis;)Lcom/google/android/gms/internal/measurement/zzja;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zziu;",
            "Lcom/google/android/gms/internal/measurement/zzjc;",
            "Lcom/google/android/gms/internal/measurement/zzil;",
            "Lcom/google/android/gms/internal/measurement/zzjw<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzhf<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzis;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzja<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of p0, p1, Lcom/google/android/gms/internal/measurement/zzjh;

    if-eqz p0, :cond_11

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjh;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzja;->zzl(Lcom/google/android/gms/internal/measurement/zzjh;Lcom/google/android/gms/internal/measurement/zzjc;Lcom/google/android/gms/internal/measurement/zzil;Lcom/google/android/gms/internal/measurement/zzjw;Lcom/google/android/gms/internal/measurement/zzhf;Lcom/google/android/gms/internal/measurement/zzis;)Lcom/google/android/gms/internal/measurement/zzja;

    move-result-object p0

    return-object p0

    .line 3
    :cond_11
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjt;

    const/4 p0, 0x0

    throw p0
.end method

.method static zzl(Lcom/google/android/gms/internal/measurement/zzjh;Lcom/google/android/gms/internal/measurement/zzjc;Lcom/google/android/gms/internal/measurement/zzil;Lcom/google/android/gms/internal/measurement/zzjw;Lcom/google/android/gms/internal/measurement/zzhf;Lcom/google/android/gms/internal/measurement/zzis;)Lcom/google/android/gms/internal/measurement/zzja;
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzjh;",
            "Lcom/google/android/gms/internal/measurement/zzjc;",
            "Lcom/google/android/gms/internal/measurement/zzil;",
            "Lcom/google/android/gms/internal/measurement/zzjw<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzhf<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzis;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzja<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjh;->zzc()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a

    const/4 v10, 0x1

    goto :goto_b

    :cond_a
    move v10, v1

    .line 2
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjh;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_27

    const/4 v4, 0x1

    :goto_1d
    add-int/lit8 v6, v4, 0x1

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_28

    move v4, v6

    goto :goto_1d

    :cond_27
    const/4 v6, 0x1

    :cond_28
    add-int/lit8 v4, v6, 0x1

    .line 6
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_47

    and-int/lit16 v6, v6, 0x1fff

    const/16 v8, 0xd

    :goto_34
    add-int/lit8 v9, v4, 0x1

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_44

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_34

    :cond_44
    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    move v4, v9

    :cond_47
    if-nez v6, :cond_59

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzja;->zza:[I

    move v8, v1

    move v12, v8

    move v13, v12

    move/from16 v16, v13

    move/from16 v17, v16

    move v15, v4

    move-object v14, v6

    move/from16 v4, v17

    move v6, v4

    goto/16 :goto_171

    :cond_59
    add-int/lit8 v6, v4, 0x1

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_78

    and-int/lit16 v4, v4, 0x1fff

    const/16 v8, 0xd

    :goto_65
    add-int/lit8 v9, v6, 0x1

    .line 9
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_75

    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    add-int/lit8 v8, v8, 0xd

    move v6, v9

    goto :goto_65

    :cond_75
    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    move v6, v9

    :cond_78
    add-int/lit8 v8, v6, 0x1

    .line 10
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_97

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_84
    add-int/lit8 v11, v8, 0x1

    .line 11
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_94

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_84

    :cond_94
    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    goto :goto_98

    :cond_97
    move v11, v8

    :goto_98
    add-int/lit8 v8, v11, 0x1

    .line 12
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_b7

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_a4
    add-int/lit8 v12, v8, 0x1

    .line 13
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_b4

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v11

    or-int/2addr v9, v8

    add-int/lit8 v11, v11, 0xd

    move v8, v12

    goto :goto_a4

    :cond_b4
    shl-int/2addr v8, v11

    or-int/2addr v8, v9

    goto :goto_b9

    :cond_b7
    move v12, v8

    move v8, v9

    :goto_b9
    add-int/lit8 v9, v12, 0x1

    .line 14
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_d9

    and-int/lit16 v11, v11, 0x1fff

    const/16 v12, 0xd

    :goto_c5
    add-int/lit8 v13, v9, 0x1

    .line 15
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_d5

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v12

    or-int/2addr v11, v9

    add-int/lit8 v12, v12, 0xd

    move v9, v13

    goto :goto_c5

    :cond_d5
    shl-int/2addr v9, v12

    or-int/2addr v9, v11

    move v11, v9

    goto :goto_da

    :cond_d9
    move v13, v9

    :goto_da
    add-int/lit8 v9, v13, 0x1

    .line 16
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_fa

    and-int/lit16 v12, v12, 0x1fff

    const/16 v13, 0xd

    :goto_e6
    add-int/lit8 v14, v9, 0x1

    .line 17
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_f6

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v13

    or-int/2addr v12, v9

    add-int/lit8 v13, v13, 0xd

    move v9, v14

    goto :goto_e6

    :cond_f6
    shl-int/2addr v9, v13

    or-int/2addr v9, v12

    move v12, v9

    goto :goto_fb

    :cond_fa
    move v14, v9

    :goto_fb
    add-int/lit8 v9, v14, 0x1

    .line 18
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_11b

    and-int/lit16 v13, v13, 0x1fff

    const/16 v14, 0xd

    :goto_107
    add-int/lit8 v15, v9, 0x1

    .line 19
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_117

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v14

    or-int/2addr v13, v9

    add-int/lit8 v14, v14, 0xd

    move v9, v15

    goto :goto_107

    :cond_117
    shl-int/2addr v9, v14

    or-int/2addr v9, v13

    move v13, v9

    goto :goto_11c

    :cond_11b
    move v15, v9

    :goto_11c
    add-int/lit8 v9, v15, 0x1

    .line 20
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_13d

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_128
    add-int/lit8 v16, v9, 0x1

    .line 21
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_139

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v15

    or-int/2addr v14, v9

    add-int/lit8 v15, v15, 0xd

    move/from16 v9, v16

    goto :goto_128

    :cond_139
    shl-int/2addr v9, v15

    or-int/2addr v14, v9

    move/from16 v9, v16

    :cond_13d
    add-int/lit8 v15, v9, 0x1

    .line 22
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_160

    and-int/lit16 v9, v9, 0x1fff

    const/16 v16, 0xd

    :goto_149
    add-int/lit8 v17, v15, 0x1

    .line 23
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_15b

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v9, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_149

    :cond_15b
    shl-int v15, v15, v16

    or-int/2addr v9, v15

    move/from16 v15, v17

    :cond_160
    add-int v16, v9, v13

    add-int v14, v16, v14

    .line 24
    new-array v14, v14, [I

    add-int v16, v4, v4

    add-int v6, v16, v6

    move/from16 v16, v8

    move/from16 v17, v11

    move v8, v4

    move v4, v13

    move v13, v9

    .line 7
    :goto_171
    sget-object v9, Lcom/google/android/gms/internal/measurement/zzja;->zzb:Lsun/misc/Unsafe;

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjh;->zze()[Ljava/lang/Object;

    move-result-object v11

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjh;->zzb()Lcom/google/android/gms/internal/measurement/zzix;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    mul-int/lit8 v7, v12, 0x3

    .line 27
    new-array v7, v7, [I

    add-int/2addr v12, v12

    .line 28
    new-array v12, v12, [Ljava/lang/Object;

    add-int v21, v13, v4

    move/from16 v20, v6

    move/from16 v22, v13

    move/from16 v23, v21

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_190
    if-ge v15, v3, :cond_3d1

    add-int/lit8 v24, v15, 0x1

    .line 29
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_1c0

    and-int/lit16 v15, v15, 0x1fff

    const/16 v25, 0xd

    move/from16 v33, v24

    move/from16 v24, v15

    move/from16 v15, v33

    :goto_1a4
    add-int/lit8 v26, v15, 0x1

    .line 30
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_1b7

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v25

    or-int v24, v24, v15

    add-int/lit8 v25, v25, 0xd

    move/from16 v15, v26

    goto :goto_1a4

    :cond_1b7
    shl-int v15, v15, v25

    or-int v15, v24, v15

    move/from16 v24, v15

    move/from16 v15, v26

    goto :goto_1c6

    :cond_1c0
    move/from16 v33, v24

    move/from16 v24, v15

    move/from16 v15, v33

    :goto_1c6
    add-int/lit8 v25, v15, 0x1

    .line 31
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_1f2

    and-int/lit16 v15, v15, 0x1fff

    const/16 v26, 0xd

    move/from16 v33, v25

    move/from16 v25, v15

    move/from16 v15, v33

    :goto_1d8
    add-int/lit8 v27, v15, 0x1

    .line 32
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_1eb

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v26

    or-int v25, v25, v15

    add-int/lit8 v26, v26, 0xd

    move/from16 v15, v27

    goto :goto_1d8

    :cond_1eb
    shl-int v15, v15, v26

    or-int v15, v25, v15

    move/from16 v2, v27

    goto :goto_1f4

    :cond_1f2
    move/from16 v2, v25

    :goto_1f4
    and-int/lit16 v5, v15, 0xff

    move/from16 v27, v3

    and-int/lit16 v3, v15, 0x400

    if-eqz v3, :cond_201

    add-int/lit8 v3, v6, 0x1

    .line 33
    aput v4, v14, v6

    move v6, v3

    :cond_201
    const/16 v3, 0x33

    if-lt v5, v3, :cond_2a7

    add-int/lit8 v3, v2, 0x1

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v28, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_238

    and-int/lit16 v2, v2, 0x1fff

    const/16 v31, 0xd

    move/from16 v33, v28

    move/from16 v28, v2

    move/from16 v2, v33

    :goto_21c
    add-int/lit8 v32, v2, 0x1

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v3, :cond_232

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v31

    or-int v28, v28, v2

    add-int/lit8 v31, v31, 0xd

    move/from16 v2, v32

    const v3, 0xd800

    goto :goto_21c

    :cond_232
    shl-int v2, v2, v31

    or-int v2, v28, v2

    move/from16 v28, v32

    :cond_238
    add-int/lit8 v3, v5, -0x33

    move/from16 v31, v6

    const/16 v6, 0x9

    if-eq v3, v6, :cond_25c

    const/16 v6, 0x11

    if-ne v3, v6, :cond_245

    goto :goto_25c

    :cond_245
    const/16 v6, 0xc

    if-ne v3, v6, :cond_259

    if-nez v10, :cond_259

    .line 42
    div-int/lit8 v3, v4, 0x3

    add-int/lit8 v6, v20, 0x1

    add-int/2addr v3, v3

    const/16 v25, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 37
    aget-object v20, v11, v20

    aput-object v20, v12, v3

    goto :goto_269

    :cond_259
    move/from16 v6, v20

    goto :goto_269

    .line 35
    :cond_25c
    :goto_25c
    div-int/lit8 v3, v4, 0x3

    add-int/lit8 v6, v20, 0x1

    add-int/2addr v3, v3

    const/16 v25, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 36
    aget-object v20, v11, v20

    aput-object v20, v12, v3

    :goto_269
    add-int/2addr v2, v2

    .line 38
    aget-object v3, v11, v2

    move/from16 v20, v6

    .line 39
    instance-of v6, v3, Ljava/lang/reflect/Field;

    if-eqz v6, :cond_275

    .line 40
    check-cast v3, Ljava/lang/reflect/Field;

    goto :goto_27d

    .line 41
    :cond_275
    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 42
    aput-object v3, v11, v2

    :goto_27d
    move-object/from16 v32, v7

    .line 43
    invoke-virtual {v9, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v3, v6

    add-int/lit8 v2, v2, 0x1

    .line 44
    aget-object v6, v11, v2

    .line 45
    instance-of v7, v6, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_28f

    .line 46
    check-cast v6, Ljava/lang/reflect/Field;

    goto :goto_297

    .line 47
    :cond_28f
    check-cast v6, Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 48
    aput-object v6, v11, v2

    .line 49
    :goto_297
    invoke-virtual {v9, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v2, v6

    move-object/from16 v30, v0

    move/from16 v29, v2

    move/from16 v0, v28

    const/4 v2, 0x0

    const/16 v25, 0x1

    goto/16 :goto_39d

    :cond_2a7
    move/from16 v31, v6

    move-object/from16 v32, v7

    add-int/lit8 v3, v20, 0x1

    .line 50
    aget-object v6, v11, v20

    check-cast v6, Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/16 v7, 0x9

    if-eq v5, v7, :cond_31a

    const/16 v7, 0x11

    if-ne v5, v7, :cond_2be

    goto :goto_31a

    :cond_2be
    const/16 v7, 0x1b

    if-eq v5, v7, :cond_30c

    const/16 v7, 0x31

    if-ne v5, v7, :cond_2c7

    goto :goto_30c

    :cond_2c7
    const/16 v7, 0xc

    if-eq v5, v7, :cond_2f9

    const/16 v7, 0x1e

    if-eq v5, v7, :cond_2f9

    const/16 v7, 0x2c

    if-ne v5, v7, :cond_2d4

    goto :goto_2f9

    :cond_2d4
    const/16 v7, 0x32

    if-ne v5, v7, :cond_309

    add-int/lit8 v7, v22, 0x1

    .line 54
    aput v4, v14, v22

    div-int/lit8 v22, v4, 0x3

    add-int v22, v22, v22

    add-int/lit8 v28, v3, 0x1

    .line 55
    aget-object v3, v11, v3

    aput-object v3, v12, v22

    and-int/lit16 v3, v15, 0x800

    if-eqz v3, :cond_2f4

    add-int/lit8 v3, v28, 0x1

    add-int/lit8 v22, v22, 0x1

    .line 56
    aget-object v28, v11, v28

    aput-object v28, v12, v22

    move/from16 v28, v3

    :cond_2f4
    move/from16 v22, v7

    const/16 v25, 0x1

    goto :goto_329

    :cond_2f9
    :goto_2f9
    if-nez v10, :cond_309

    .line 52
    div-int/lit8 v7, v4, 0x3

    add-int/lit8 v28, v3, 0x1

    add-int/2addr v7, v7

    const/16 v25, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 53
    aget-object v3, v11, v3

    aput-object v3, v12, v7

    goto :goto_329

    :cond_309
    const/16 v25, 0x1

    goto :goto_327

    :cond_30c
    :goto_30c
    const/16 v25, 0x1

    .line 64
    div-int/lit8 v7, v4, 0x3

    add-int/lit8 v28, v3, 0x1

    add-int/2addr v7, v7

    add-int/lit8 v7, v7, 0x1

    .line 52
    aget-object v3, v11, v3

    aput-object v3, v12, v7

    goto :goto_329

    :cond_31a
    :goto_31a
    const/16 v25, 0x1

    .line 50
    div-int/lit8 v7, v4, 0x3

    add-int/2addr v7, v7

    add-int/lit8 v7, v7, 0x1

    .line 51
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v28

    aput-object v28, v12, v7

    :goto_327
    move/from16 v28, v3

    .line 57
    :goto_329
    invoke-virtual {v9, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v3, v6

    and-int/lit16 v6, v15, 0x1000

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_386

    const/16 v6, 0x11

    if-gt v5, v6, :cond_386

    add-int/lit8 v6, v2, 0x1

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v7, 0xd800

    if-lt v2, v7, :cond_35d

    and-int/lit16 v2, v2, 0x1fff

    const/16 v26, 0xd

    :goto_347
    add-int/lit8 v29, v6, 0x1

    .line 59
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_359

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v26

    or-int/2addr v2, v6

    add-int/lit8 v26, v26, 0xd

    move/from16 v6, v29

    goto :goto_347

    :cond_359
    shl-int v6, v6, v26

    or-int/2addr v2, v6

    goto :goto_35f

    :cond_35d
    move/from16 v29, v6

    :goto_35f
    add-int v6, v8, v8

    div-int/lit8 v26, v2, 0x20

    add-int v6, v6, v26

    .line 60
    aget-object v7, v11, v6

    move-object/from16 v30, v0

    .line 61
    instance-of v0, v7, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_370

    .line 62
    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_378

    .line 63
    :cond_370
    check-cast v7, Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 64
    aput-object v7, v11, v6

    .line 65
    :goto_378
    invoke-virtual {v9, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v0, v6

    rem-int/lit8 v2, v2, 0x20

    move/from16 v33, v29

    move/from16 v29, v0

    move/from16 v0, v33

    goto :goto_38d

    :cond_386
    move-object/from16 v30, v0

    move v0, v2

    const/4 v2, 0x0

    const v29, 0xfffff

    :goto_38d
    const/16 v6, 0x12

    if-lt v5, v6, :cond_39b

    const/16 v6, 0x31

    if-gt v5, v6, :cond_39b

    add-int/lit8 v6, v23, 0x1

    .line 66
    aput v3, v14, v23

    move/from16 v23, v6

    :cond_39b
    move/from16 v20, v28

    :goto_39d
    add-int/lit8 v6, v4, 0x1

    .line 67
    aput v24, v32, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit16 v7, v15, 0x200

    if-eqz v7, :cond_3aa

    const/high16 v7, 0x20000000

    goto :goto_3ab

    :cond_3aa
    const/4 v7, 0x0

    :goto_3ab
    and-int/lit16 v15, v15, 0x100

    if-eqz v15, :cond_3b2

    const/high16 v15, 0x10000000

    goto :goto_3b3

    :cond_3b2
    const/4 v15, 0x0

    :goto_3b3
    or-int/2addr v7, v15

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v5, v7

    or-int/2addr v3, v5

    .line 68
    aput v3, v32, v6

    add-int/lit8 v3, v4, 0x1

    shl-int/lit8 v2, v2, 0x14

    or-int v2, v2, v29

    .line 69
    aput v2, v32, v4

    move v15, v0

    move v4, v3

    move/from16 v3, v27

    move-object/from16 v0, v30

    move/from16 v6, v31

    move-object/from16 v7, v32

    const v5, 0xd800

    goto/16 :goto_190

    :cond_3d1
    move-object/from16 v32, v7

    .line 56
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzja;

    move-object v4, v0

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjh;->zzb()Lcom/google/android/gms/internal/measurement/zzix;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v20, 0x0

    move-object/from16 v5, v32

    move-object v6, v12

    move/from16 v7, v16

    move/from16 v8, v17

    move-object v12, v14

    move/from16 v14, v21

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v20}, Lcom/google/android/gms/internal/measurement/zzja;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/zzix;ZZ[IIILcom/google/android/gms/internal/measurement/zzjc;Lcom/google/android/gms/internal/measurement/zzil;Lcom/google/android/gms/internal/measurement/zzjw;Lcom/google/android/gms/internal/measurement/zzhf;Lcom/google/android/gms/internal/measurement/zzis;[B)V

    return-object v0
.end method

.method private static zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 2
    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x28

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final zzo(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzja;->zzA(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 3
    :cond_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_28

    if-nez p2, :cond_1d

    goto :goto_28

    .line 7
    :cond_1d
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/measurement/zzia;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    return-void

    :cond_28
    :goto_28
    if-eqz p2, :cond_30

    .line 5
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    :cond_30
    return-void
.end method

.method private final zzp(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzja;->zzA(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 2
    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 3
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 4
    :cond_14
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 6
    :goto_20
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_34

    if-nez p2, :cond_29

    goto :goto_34

    .line 9
    :cond_29
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/zzia;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 10
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/zzja;->zzN(Ljava/lang/Object;II)V

    return-void

    :cond_34
    :goto_34
    if-eqz p2, :cond_3c

    .line 7
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/zzja;->zzN(Ljava/lang/Object;II)V

    :cond_3c
    return-void
.end method

.method private final zzq(Ljava/lang/Object;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:Lsun/misc/Unsafe;

    const v1, 0xfffff

    const/4 v2, 0x0

    move v6, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_a
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    array-length v7, v7

    if-ge v3, v7, :cond_529

    .line 1
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzA(I)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 2
    aget v8, v8, v3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzC(I)I

    move-result v9

    const/16 v10, 0x11

    const/4 v11, 0x1

    if-gt v9, v10, :cond_35

    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    add-int/lit8 v12, v3, 0x2

    .line 3
    aget v10, v10, v12

    and-int v12, v10, v1

    ushr-int/lit8 v10, v10, 0x14

    shl-int v10, v11, v10

    if-eq v12, v6, :cond_36

    int-to-long v5, v12

    .line 4
    invoke-virtual {v0, p1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v6, v12

    goto :goto_36

    :cond_35
    move v10, v2

    :cond_36
    :goto_36
    and-int/2addr v7, v1

    int-to-long v12, v7

    const/16 v7, 0x3f

    packed-switch v9, :pswitch_data_540

    goto/16 :goto_525

    .line 5
    :pswitch_3f
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_525

    .line 6
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzix;

    .line 7
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v9

    .line 8
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/measurement/zzgz;->zzE(ILcom/google/android/gms/internal/measurement/zzix;Lcom/google/android/gms/internal/measurement/zzji;)I

    move-result v7

    goto/16 :goto_3ca

    .line 9
    :pswitch_55
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_525

    .line 10
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v8

    add-long v11, v9, v9

    shr-long/2addr v9, v7

    xor-long/2addr v9, v11

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/zzgz;->zzx(J)I

    move-result v7

    goto/16 :goto_4de

    .line 11
    :pswitch_6f
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_525

    .line 12
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v8

    add-int v9, v7, v7

    shr-int/lit8 v7, v7, 0x1f

    xor-int/2addr v7, v9

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    goto/16 :goto_4de

    .line 13
    :pswitch_8a
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_525

    shl-int/lit8 v7, v8, 0x3

    .line 14
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    goto/16 :goto_521

    .line 15
    :pswitch_98
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_525

    shl-int/lit8 v7, v8, 0x3

    .line 16
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    goto/16 :goto_513

    .line 17
    :pswitch_a6
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_525

    .line 18
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzv(I)I

    move-result v7

    goto/16 :goto_4de

    .line 19
    :pswitch_bc
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_525

    .line 20
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    goto/16 :goto_4de

    .line 21
    :pswitch_d2
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_525

    .line 22
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgs;

    shl-int/lit8 v8, v8, 0x3

    .line 23
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v8

    .line 24
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgs;->zzc()I

    move-result v7

    .line 23
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    goto/16 :goto_469

    .line 25
    :pswitch_ee
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_525

    .line 26
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 27
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/measurement/zzjk;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzji;)I

    move-result v7

    goto/16 :goto_3ca

    .line 28
    :pswitch_102
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_525

    .line 29
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 30
    instance-of v9, v7, Lcom/google/android/gms/internal/measurement/zzgs;

    if-eqz v9, :cond_122

    .line 31
    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgs;

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v8

    .line 32
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgs;->zzc()I

    move-result v7

    .line 31
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    goto/16 :goto_469

    .line 33
    :cond_122
    check-cast v7, Ljava/lang/String;

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v8

    .line 34
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzy(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_4de

    .line 35
    :pswitch_130
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_525

    shl-int/lit8 v7, v8, 0x3

    .line 36
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    goto/16 :goto_4b3

    .line 37
    :pswitch_13e
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_525

    shl-int/lit8 v7, v8, 0x3

    .line 38
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    goto/16 :goto_513

    .line 39
    :pswitch_14c
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_525

    shl-int/lit8 v7, v8, 0x3

    .line 40
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    goto/16 :goto_521

    .line 41
    :pswitch_15a
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_525

    .line 42
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzv(I)I

    move-result v7

    goto/16 :goto_4de

    .line 43
    :pswitch_170
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_525

    .line 44
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v7, v8, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/zzgz;->zzx(J)I

    move-result v8

    goto/16 :goto_506

    .line 45
    :pswitch_186
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_525

    .line 46
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v7, v8, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/zzgz;->zzx(J)I

    move-result v8

    goto/16 :goto_506

    .line 47
    :pswitch_19c
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_525

    shl-int/lit8 v7, v8, 0x3

    .line 48
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    goto/16 :goto_513

    .line 49
    :pswitch_1aa
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_525

    shl-int/lit8 v7, v8, 0x3

    .line 50
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    goto/16 :goto_521

    .line 51
    :pswitch_1b8
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzw(I)Ljava/lang/Object;

    move-result-object v9

    .line 52
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/measurement/zzis;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_525

    .line 53
    :pswitch_1c5
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 54
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v9

    .line 55
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/measurement/zzjk;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzji;)I

    move-result v7

    goto/16 :goto_3ca

    .line 56
    :pswitch_1d5
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 57
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzf(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_525

    .line 58
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    goto/16 :goto_302

    .line 59
    :pswitch_1eb
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 60
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzn(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_525

    .line 61
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    goto/16 :goto_302

    .line 62
    :pswitch_201
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 63
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzr(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_525

    .line 64
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    goto/16 :goto_302

    .line 65
    :pswitch_217
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 66
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzp(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_525

    .line 67
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    goto/16 :goto_302

    .line 68
    :pswitch_22d
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 69
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzh(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_525

    .line 70
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    goto/16 :goto_302

    .line 71
    :pswitch_243
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 72
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzl(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_525

    .line 73
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    goto/16 :goto_302

    .line 74
    :pswitch_259
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 75
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzt(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_525

    .line 76
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    goto/16 :goto_302

    .line 77
    :pswitch_26f
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 78
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzp(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_525

    .line 79
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    goto/16 :goto_302

    .line 80
    :pswitch_285
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 81
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzr(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_525

    .line 82
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    goto :goto_302

    .line 83
    :pswitch_29a
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 84
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzj(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_525

    .line 85
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    goto :goto_302

    .line 86
    :pswitch_2af
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 87
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_525

    .line 88
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    goto :goto_302

    .line 89
    :pswitch_2c4
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 90
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_525

    .line 91
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    goto :goto_302

    .line 92
    :pswitch_2d9
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 93
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzp(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_525

    .line 94
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    goto :goto_302

    .line 95
    :pswitch_2ee
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 96
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzr(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_525

    .line 97
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    :goto_302
    add-int/2addr v8, v9

    goto/16 :goto_4de

    .line 98
    :pswitch_305
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 99
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzg(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3ca

    .line 100
    :pswitch_311
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 101
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzo(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3ca

    .line 102
    :pswitch_31d
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 103
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzs(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3ca

    .line 104
    :pswitch_329
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 105
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzq(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3ca

    .line 106
    :pswitch_335
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 107
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzi(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3ca

    .line 108
    :pswitch_341
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 109
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzm(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3ca

    .line 110
    :pswitch_34d
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 111
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzy(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3ca

    .line 112
    :pswitch_359
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v9

    .line 113
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/measurement/zzjk;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzji;)I

    move-result v7

    goto :goto_3ca

    .line 114
    :pswitch_368
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzv(ILjava/util/List;)I

    move-result v7

    goto :goto_3ca

    .line 115
    :pswitch_373
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 116
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzu(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3ca

    .line 117
    :pswitch_37e
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 118
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzq(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3ca

    .line 119
    :pswitch_389
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 120
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzs(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3ca

    .line 121
    :pswitch_394
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 122
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzk(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3ca

    .line 123
    :pswitch_39f
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 124
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3ca

    .line 125
    :pswitch_3aa
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 126
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3ca

    .line 127
    :pswitch_3b5
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 128
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzq(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3ca

    .line 129
    :pswitch_3c0
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 130
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzs(ILjava/util/List;Z)I

    move-result v7

    :goto_3ca
    add-int/2addr v4, v7

    goto/16 :goto_525

    :pswitch_3cd
    and-int v7, v5, v10

    if-eqz v7, :cond_525

    .line 131
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzix;

    .line 132
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v9

    .line 133
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/measurement/zzgz;->zzE(ILcom/google/android/gms/internal/measurement/zzix;Lcom/google/android/gms/internal/measurement/zzji;)I

    move-result v7

    goto :goto_3ca

    :pswitch_3e0
    and-int v9, v5, v10

    if-eqz v9, :cond_525

    .line 134
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v8

    add-long v11, v9, v9

    shr-long/2addr v9, v7

    xor-long/2addr v9, v11

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/zzgz;->zzx(J)I

    move-result v7

    goto/16 :goto_4de

    :pswitch_3f8
    and-int v7, v5, v10

    if-eqz v7, :cond_525

    .line 135
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v8

    add-int v9, v7, v7

    shr-int/lit8 v7, v7, 0x1f

    xor-int/2addr v7, v9

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    goto/16 :goto_4de

    :pswitch_411
    and-int v7, v5, v10

    if-eqz v7, :cond_525

    shl-int/lit8 v7, v8, 0x3

    .line 136
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    goto/16 :goto_521

    :pswitch_41d
    and-int v7, v5, v10

    if-eqz v7, :cond_525

    shl-int/lit8 v7, v8, 0x3

    .line 137
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    goto/16 :goto_513

    :pswitch_429
    and-int v7, v5, v10

    if-eqz v7, :cond_525

    .line 138
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzv(I)I

    move-result v7

    goto/16 :goto_4de

    :pswitch_43d
    and-int v7, v5, v10

    if-eqz v7, :cond_525

    .line 139
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    goto/16 :goto_4de

    :pswitch_451
    and-int v7, v5, v10

    if-eqz v7, :cond_525

    .line 140
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgs;

    shl-int/lit8 v8, v8, 0x3

    .line 141
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v8

    .line 142
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgs;->zzc()I

    move-result v7

    .line 141
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    :goto_469
    add-int/2addr v9, v7

    add-int/2addr v8, v9

    goto/16 :goto_4df

    :pswitch_46d
    and-int v7, v5, v10

    if-eqz v7, :cond_525

    .line 143
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 144
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/measurement/zzjk;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzji;)I

    move-result v7

    goto/16 :goto_3ca

    :pswitch_47f
    and-int v7, v5, v10

    if-eqz v7, :cond_525

    .line 145
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 146
    instance-of v9, v7, Lcom/google/android/gms/internal/measurement/zzgs;

    if-eqz v9, :cond_49c

    .line 147
    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgs;

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v8

    .line 148
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgs;->zzc()I

    move-result v7

    .line 147
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v9

    goto :goto_469

    .line 149
    :cond_49c
    check-cast v7, Ljava/lang/String;

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v8

    .line 150
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzy(Ljava/lang/String;)I

    move-result v7

    goto :goto_4de

    :pswitch_4a9
    and-int v7, v5, v10

    if-eqz v7, :cond_525

    shl-int/lit8 v7, v8, 0x3

    .line 151
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    :goto_4b3
    add-int/2addr v7, v11

    goto/16 :goto_3ca

    :pswitch_4b6
    and-int v7, v5, v10

    if-eqz v7, :cond_525

    shl-int/lit8 v7, v8, 0x3

    .line 152
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    goto :goto_513

    :pswitch_4c1
    and-int v7, v5, v10

    if-eqz v7, :cond_525

    shl-int/lit8 v7, v8, 0x3

    .line 153
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    goto :goto_521

    :pswitch_4cc
    and-int v7, v5, v10

    if-eqz v7, :cond_525

    .line 154
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzv(I)I

    move-result v7

    :goto_4de
    add-int/2addr v8, v7

    :goto_4df
    add-int/2addr v4, v8

    goto :goto_525

    :pswitch_4e1
    and-int v7, v5, v10

    if-eqz v7, :cond_525

    .line 155
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v7, v8, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/zzgz;->zzx(J)I

    move-result v8

    goto :goto_506

    :pswitch_4f4
    and-int v7, v5, v10

    if-eqz v7, :cond_525

    .line 156
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v7, v8, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/zzgz;->zzx(J)I

    move-result v8

    :goto_506
    add-int/2addr v7, v8

    goto/16 :goto_3ca

    :pswitch_509
    and-int v7, v5, v10

    if-eqz v7, :cond_525

    shl-int/lit8 v7, v8, 0x3

    .line 157
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    :goto_513
    add-int/lit8 v7, v7, 0x4

    goto/16 :goto_3ca

    :pswitch_517
    and-int v7, v5, v10

    if-eqz v7, :cond_525

    shl-int/lit8 v7, v8, 0x3

    .line 158
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v7

    :goto_521
    add-int/lit8 v7, v7, 0x8

    goto/16 :goto_3ca

    :cond_525
    :goto_525
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_a

    .line 157
    :cond_529
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzn:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 159
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzh(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v4, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzh:Z

    if-nez v0, :cond_539

    return v4

    :cond_539
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzo:Lcom/google/android/gms/internal/measurement/zzhf;

    .line 161
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhj;

    const/4 p1, 0x0

    throw p1

    :pswitch_data_540
    .packed-switch 0x0
        :pswitch_517
        :pswitch_509
        :pswitch_4f4
        :pswitch_4e1
        :pswitch_4cc
        :pswitch_4c1
        :pswitch_4b6
        :pswitch_4a9
        :pswitch_47f
        :pswitch_46d
        :pswitch_451
        :pswitch_43d
        :pswitch_429
        :pswitch_41d
        :pswitch_411
        :pswitch_3f8
        :pswitch_3e0
        :pswitch_3cd
        :pswitch_3c0
        :pswitch_3b5
        :pswitch_3aa
        :pswitch_39f
        :pswitch_394
        :pswitch_389
        :pswitch_37e
        :pswitch_373
        :pswitch_368
        :pswitch_359
        :pswitch_34d
        :pswitch_341
        :pswitch_335
        :pswitch_329
        :pswitch_31d
        :pswitch_311
        :pswitch_305
        :pswitch_2ee
        :pswitch_2d9
        :pswitch_2c4
        :pswitch_2af
        :pswitch_29a
        :pswitch_285
        :pswitch_26f
        :pswitch_259
        :pswitch_243
        :pswitch_22d
        :pswitch_217
        :pswitch_201
        :pswitch_1eb
        :pswitch_1d5
        :pswitch_1c5
        :pswitch_1b8
        :pswitch_1aa
        :pswitch_19c
        :pswitch_186
        :pswitch_170
        :pswitch_15a
        :pswitch_14c
        :pswitch_13e
        :pswitch_130
        :pswitch_102
        :pswitch_ee
        :pswitch_d2
        :pswitch_bc
        :pswitch_a6
        :pswitch_98
        :pswitch_8a
        :pswitch_6f
        :pswitch_55
        :pswitch_3f
    .end packed-switch
.end method

.method private final zzr(Ljava/lang/Object;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_5
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    array-length v4, v4

    if-ge v2, v4, :cond_549

    .line 1
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzA(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzja;->zzC(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 2
    aget v6, v6, v2

    const v7, 0xfffff

    and-int/2addr v4, v7

    int-to-long v7, v4

    .line 3
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzhk;->zzJ:Lcom/google/android/gms/internal/measurement/zzhk;

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhk;->zza()I

    move-result v4

    if-lt v5, v4, :cond_31

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzhk;->zzW:Lcom/google/android/gms/internal/measurement/zzhk;

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhk;->zza()I

    move-result v4

    if-gt v5, v4, :cond_31

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    add-int/lit8 v9, v2, 0x2

    .line 5
    aget v4, v4, v9

    :cond_31
    const/16 v4, 0x3f

    packed-switch v5, :pswitch_data_556

    goto/16 :goto_545

    .line 44
    :pswitch_38
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 45
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzix;

    .line 46
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v5

    .line 47
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzE(ILcom/google/android/gms/internal/measurement/zzix;Lcom/google/android/gms/internal/measurement/zzji;)I

    move-result v4

    goto/16 :goto_3c4

    .line 48
    :pswitch_4e
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_545

    .line 49
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v7

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v5

    add-long v9, v7, v7

    shr-long v6, v7, v4

    xor-long/2addr v6, v9

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzx(J)I

    move-result v4

    goto/16 :goto_4f6

    .line 50
    :pswitch_69
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 51
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v5

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    goto/16 :goto_4f6

    .line 52
    :pswitch_84
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_545

    shl-int/lit8 v4, v6, 0x3

    .line 53
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    goto/16 :goto_541

    .line 54
    :pswitch_92
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_545

    shl-int/lit8 v4, v6, 0x3

    .line 55
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    goto/16 :goto_531

    .line 56
    :pswitch_a0
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 57
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzv(I)I

    move-result v4

    goto/16 :goto_4f6

    .line 58
    :pswitch_b6
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 59
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    goto/16 :goto_4f6

    .line 60
    :pswitch_cc
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 61
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgs;

    shl-int/lit8 v5, v6, 0x3

    .line 62
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v5

    .line 63
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgs;->zzc()I

    move-result v4

    .line 62
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    goto/16 :goto_474

    .line 64
    :pswitch_e8
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 65
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 66
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzji;)I

    move-result v4

    goto/16 :goto_3c4

    .line 67
    :pswitch_fc
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 68
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 69
    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/zzgs;

    if-eqz v5, :cond_11c

    .line 70
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgs;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v5

    .line 71
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgs;->zzc()I

    move-result v4

    .line 70
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    goto/16 :goto_474

    .line 72
    :cond_11c
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v5

    .line 73
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzy(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_4f6

    .line 74
    :pswitch_12a
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_545

    shl-int/lit8 v4, v6, 0x3

    .line 75
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    goto/16 :goto_4c4

    .line 76
    :pswitch_138
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_545

    shl-int/lit8 v4, v6, 0x3

    .line 77
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    goto/16 :goto_531

    .line 78
    :pswitch_146
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_545

    shl-int/lit8 v4, v6, 0x3

    .line 79
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    goto/16 :goto_541

    .line 80
    :pswitch_154
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 81
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzv(I)I

    move-result v4

    goto/16 :goto_4f6

    .line 82
    :pswitch_16a
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 83
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzx(J)I

    move-result v4

    goto/16 :goto_522

    .line 84
    :pswitch_180
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 85
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzx(J)I

    move-result v4

    goto/16 :goto_522

    .line 86
    :pswitch_196
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_545

    shl-int/lit8 v4, v6, 0x3

    .line 87
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    goto/16 :goto_531

    .line 88
    :pswitch_1a4
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_545

    shl-int/lit8 v4, v6, 0x3

    .line 89
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    goto/16 :goto_541

    .line 90
    :pswitch_1b2
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzw(I)Ljava/lang/Object;

    move-result-object v5

    .line 91
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/measurement/zzis;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_545

    .line 41
    :pswitch_1bf
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 42
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v5

    .line 43
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzji;)I

    move-result v4

    goto/16 :goto_3c4

    .line 92
    :pswitch_1cf
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 93
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_545

    .line 94
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    goto/16 :goto_2fc

    .line 95
    :pswitch_1e5
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 96
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzn(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_545

    .line 97
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    goto/16 :goto_2fc

    .line 98
    :pswitch_1fb
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 99
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzr(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_545

    .line 100
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    goto/16 :goto_2fc

    .line 101
    :pswitch_211
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 102
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzp(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_545

    .line 103
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    goto/16 :goto_2fc

    .line 104
    :pswitch_227
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 105
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_545

    .line 106
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    goto/16 :goto_2fc

    .line 107
    :pswitch_23d
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 108
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzl(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_545

    .line 109
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    goto/16 :goto_2fc

    .line 110
    :pswitch_253
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 111
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzt(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_545

    .line 112
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    goto/16 :goto_2fc

    .line 113
    :pswitch_269
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 114
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzp(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_545

    .line 115
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    goto/16 :goto_2fc

    .line 116
    :pswitch_27f
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 117
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzr(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_545

    .line 118
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    goto :goto_2fc

    .line 119
    :pswitch_294
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 120
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzj(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_545

    .line 121
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    goto :goto_2fc

    .line 122
    :pswitch_2a9
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 123
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_545

    .line 124
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    goto :goto_2fc

    .line 125
    :pswitch_2be
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 126
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_545

    .line 127
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    goto :goto_2fc

    .line 128
    :pswitch_2d3
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 129
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzp(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_545

    .line 130
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    goto :goto_2fc

    .line 131
    :pswitch_2e8
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 132
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzr(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_545

    .line 133
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzu(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    :goto_2fc
    add-int/2addr v5, v6

    goto/16 :goto_4f6

    .line 39
    :pswitch_2ff
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 40
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzg(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3c4

    .line 37
    :pswitch_30b
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 38
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzo(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3c4

    .line 35
    :pswitch_317
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 36
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzs(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3c4

    .line 33
    :pswitch_323
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 34
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzq(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3c4

    .line 31
    :pswitch_32f
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 32
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzi(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3c4

    .line 29
    :pswitch_33b
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 30
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzm(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3c4

    .line 27
    :pswitch_347
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 28
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzy(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_3c4

    .line 24
    :pswitch_353
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 25
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v5

    .line 26
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzji;)I

    move-result v4

    goto :goto_3c4

    .line 22
    :pswitch_362
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 23
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzv(ILjava/util/List;)I

    move-result v4

    goto :goto_3c4

    .line 20
    :pswitch_36d
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 21
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzu(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3c4

    .line 18
    :pswitch_378
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 19
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzq(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3c4

    .line 16
    :pswitch_383
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 17
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzs(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3c4

    .line 14
    :pswitch_38e
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 15
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzk(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3c4

    .line 12
    :pswitch_399
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 13
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3c4

    .line 10
    :pswitch_3a4
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 11
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3c4

    .line 8
    :pswitch_3af
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 9
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzq(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3c4

    .line 6
    :pswitch_3ba
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 7
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzs(ILjava/util/List;Z)I

    move-result v4

    :goto_3c4
    add-int/2addr v3, v4

    goto/16 :goto_545

    .line 134
    :pswitch_3c7
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 135
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzix;

    .line 136
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v5

    .line 137
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzE(ILcom/google/android/gms/internal/measurement/zzix;Lcom/google/android/gms/internal/measurement/zzji;)I

    move-result v4

    goto :goto_3c4

    .line 138
    :pswitch_3dc
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_545

    .line 139
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v7

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v5

    add-long v9, v7, v7

    shr-long v6, v7, v4

    xor-long/2addr v6, v9

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/zzgz;->zzx(J)I

    move-result v4

    goto/16 :goto_4f6

    .line 140
    :pswitch_3f7
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 141
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v5

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    goto/16 :goto_4f6

    .line 142
    :pswitch_412
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_545

    shl-int/lit8 v4, v6, 0x3

    .line 143
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    goto/16 :goto_541

    .line 144
    :pswitch_420
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_545

    shl-int/lit8 v4, v6, 0x3

    .line 145
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    goto/16 :goto_531

    .line 146
    :pswitch_42e
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 147
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzv(I)I

    move-result v4

    goto/16 :goto_4f6

    .line 148
    :pswitch_444
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 149
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    goto/16 :goto_4f6

    .line 150
    :pswitch_45a
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 151
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgs;

    shl-int/lit8 v5, v6, 0x3

    .line 152
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v5

    .line 153
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgs;->zzc()I

    move-result v4

    .line 152
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    :goto_474
    add-int/2addr v6, v4

    add-int/2addr v5, v6

    goto/16 :goto_4f7

    .line 154
    :pswitch_478
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 155
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 156
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzji;)I

    move-result v4

    goto/16 :goto_3c4

    .line 157
    :pswitch_48c
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 158
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 159
    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/zzgs;

    if-eqz v5, :cond_4ab

    .line 160
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgs;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v5

    .line 161
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgs;->zzc()I

    move-result v4

    .line 160
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    goto :goto_474

    .line 162
    :cond_4ab
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v5

    .line 163
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzy(Ljava/lang/String;)I

    move-result v4

    goto :goto_4f6

    .line 164
    :pswitch_4b8
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_545

    shl-int/lit8 v4, v6, 0x3

    .line 165
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    :goto_4c4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3c4

    .line 166
    :pswitch_4c8
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_545

    shl-int/lit8 v4, v6, 0x3

    .line 167
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    goto :goto_531

    .line 168
    :pswitch_4d5
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_545

    shl-int/lit8 v4, v6, 0x3

    .line 169
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    goto :goto_541

    .line 170
    :pswitch_4e2
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 171
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzv(I)I

    move-result v4

    :goto_4f6
    add-int/2addr v5, v4

    :goto_4f7
    add-int/2addr v3, v5

    goto :goto_545

    .line 172
    :pswitch_4f9
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 173
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzx(J)I

    move-result v4

    goto :goto_522

    .line 174
    :pswitch_50e
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_545

    .line 175
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzgz;->zzx(J)I

    move-result v4

    :goto_522
    add-int/2addr v6, v4

    add-int/2addr v3, v6

    goto :goto_545

    .line 176
    :pswitch_525
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_545

    shl-int/lit8 v4, v6, 0x3

    .line 177
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    :goto_531
    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_3c4

    .line 178
    :pswitch_535
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_545

    shl-int/lit8 v4, v6, 0x3

    .line 179
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgz;->zzw(I)I

    move-result v4

    :goto_541
    add-int/lit8 v4, v4, 0x8

    goto/16 :goto_3c4

    :cond_545
    :goto_545
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_5

    .line 177
    :cond_549
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzn:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 180
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 181
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzh(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v3, p1

    return v3

    nop

    :pswitch_data_556
    .packed-switch 0x0
        :pswitch_535
        :pswitch_525
        :pswitch_50e
        :pswitch_4f9
        :pswitch_4e2
        :pswitch_4d5
        :pswitch_4c8
        :pswitch_4b8
        :pswitch_48c
        :pswitch_478
        :pswitch_45a
        :pswitch_444
        :pswitch_42e
        :pswitch_420
        :pswitch_412
        :pswitch_3f7
        :pswitch_3dc
        :pswitch_3c7
        :pswitch_3ba
        :pswitch_3af
        :pswitch_3a4
        :pswitch_399
        :pswitch_38e
        :pswitch_383
        :pswitch_378
        :pswitch_36d
        :pswitch_362
        :pswitch_353
        :pswitch_347
        :pswitch_33b
        :pswitch_32f
        :pswitch_323
        :pswitch_317
        :pswitch_30b
        :pswitch_2ff
        :pswitch_2e8
        :pswitch_2d3
        :pswitch_2be
        :pswitch_2a9
        :pswitch_294
        :pswitch_27f
        :pswitch_269
        :pswitch_253
        :pswitch_23d
        :pswitch_227
        :pswitch_211
        :pswitch_1fb
        :pswitch_1e5
        :pswitch_1cf
        :pswitch_1bf
        :pswitch_1b2
        :pswitch_1a4
        :pswitch_196
        :pswitch_180
        :pswitch_16a
        :pswitch_154
        :pswitch_146
        :pswitch_138
        :pswitch_12a
        :pswitch_fc
        :pswitch_e8
        :pswitch_cc
        :pswitch_b6
        :pswitch_a0
        :pswitch_92
        :pswitch_84
        :pswitch_69
        :pswitch_4e
        :pswitch_38
    .end packed-switch
.end method

.method private final zzs(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/zzge;)I
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/measurement/zzge;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzja;->zzb:Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhz;

    .line 2
    invoke-interface {v11}, Lcom/google/android/gms/internal/measurement/zzhz;->zza()Z

    move-result v12

    if-nez v12, :cond_34

    .line 3
    invoke-interface {v11}, Lcom/google/android/gms/internal/measurement/zzhz;->size()I

    move-result v12

    if-nez v12, :cond_2a

    const/16 v12, 0xa

    goto :goto_2b

    :cond_2a
    add-int/2addr v12, v12

    .line 4
    :goto_2b
    invoke-interface {v11, v12}, Lcom/google/android/gms/internal/measurement/zzhz;->zze(I)Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzja;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v12, v1, v9, v10, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_34
    const/4 v9, 0x5

    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    const/4 v14, 0x2

    packed-switch p11, :pswitch_data_454

    const/4 v1, 0x3

    if-ne v6, v1, :cond_451

    .line 6
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 7
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/measurement/zzgf;->zzj(Lcom/google/android/gms/internal/measurement/zzji;[BIIILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v4

    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Ljava/lang/Object;

    .line 8
    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/measurement/zzhz;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42f

    :pswitch_5e
    if-ne v6, v14, :cond_82

    .line 12
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzim;

    .line 13
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    add-int/2addr v2, v1

    :goto_69
    if-ge v1, v2, :cond_79

    .line 14
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzgv;->zzc(J)J

    move-result-wide v4

    .line 15
    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/zzim;->zzg(J)V

    goto :goto_69

    :cond_79
    if-ne v1, v2, :cond_7d

    goto/16 :goto_452

    .line 16
    :cond_7d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zza()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    :cond_82
    if-nez v6, :cond_451

    .line 17
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzim;

    .line 18
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/zzgv;->zzc(J)J

    move-result-wide v8

    .line 19
    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zzim;->zzg(J)V

    :goto_93
    if-ge v1, v5, :cond_ac

    .line 20
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-eq v2, v6, :cond_9e

    goto :goto_ac

    .line 21
    :cond_9e
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/zzgv;->zzc(J)J

    move-result-wide v8

    .line 22
    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zzim;->zzg(J)V

    goto :goto_93

    :cond_ac
    :goto_ac
    return v1

    :pswitch_ad
    if-ne v6, v14, :cond_d1

    .line 23
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzht;

    .line 24
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    add-int/2addr v2, v1

    :goto_b8
    if-ge v1, v2, :cond_c8

    .line 25
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgv;->zzb(I)I

    move-result v4

    .line 26
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzht;->zzh(I)V

    goto :goto_b8

    :cond_c8
    if-ne v1, v2, :cond_cc

    goto/16 :goto_452

    .line 27
    :cond_cc
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zza()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    :cond_d1
    if-nez v6, :cond_451

    .line 28
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzht;

    .line 29
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgv;->zzb(I)I

    move-result v4

    .line 30
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzht;->zzh(I)V

    :goto_e2
    if-ge v1, v5, :cond_fb

    .line 31
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-eq v2, v6, :cond_ed

    goto :goto_fb

    .line 32
    :cond_ed
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgv;->zzb(I)I

    move-result v4

    .line 33
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzht;->zzh(I)V

    goto :goto_e2

    :cond_fb
    :goto_fb
    return v1

    :pswitch_fc
    if-ne v6, v14, :cond_103

    .line 34
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zzl([BILcom/google/android/gms/internal/measurement/zzhz;Lcom/google/android/gms/internal/measurement/zzge;)I

    move-result v2

    goto :goto_114

    :cond_103
    if-nez v6, :cond_451

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p14

    .line 35
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zzk(I[BIILcom/google/android/gms/internal/measurement/zzhz;Lcom/google/android/gms/internal/measurement/zzge;)I

    move-result v2

    .line 36
    :goto_114
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhs;

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzhs;->zzc:Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjx;->zza()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v4

    if-ne v3, v4, :cond_11f

    const/4 v3, 0x0

    .line 37
    :cond_11f
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/zzja;->zzx(I)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzn:Lcom/google/android/gms/internal/measurement/zzjw;

    move/from16 v6, p6

    .line 38
    invoke-static {v6, v11, v4, v3, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzhw;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjw;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_12f

    goto/16 :goto_27d

    :cond_12f
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjx;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzhs;->zzc:Lcom/google/android/gms/internal/measurement/zzjx;

    return v2

    :pswitch_134
    if-ne v6, v14, :cond_451

    .line 39
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-ltz v4, :cond_189

    .line 41
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_184

    if-nez v4, :cond_14a

    .line 43
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzgs;->zzb:Lcom/google/android/gms/internal/measurement/zzgs;

    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/measurement/zzhz;->add(Ljava/lang/Object;)Z

    goto :goto_152

    .line 44
    :cond_14a
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzgs;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzgs;

    move-result-object v6

    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/measurement/zzhz;->add(Ljava/lang/Object;)Z

    :goto_151
    add-int/2addr v1, v4

    :goto_152
    if-ge v1, v5, :cond_183

    .line 45
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-eq v2, v6, :cond_15d

    goto :goto_183

    .line 46
    :cond_15d
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-ltz v4, :cond_17e

    .line 47
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_179

    if-nez v4, :cond_171

    .line 51
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzgs;->zzb:Lcom/google/android/gms/internal/measurement/zzgs;

    .line 48
    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/measurement/zzhz;->add(Ljava/lang/Object;)Z

    goto :goto_152

    .line 49
    :cond_171
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzgs;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzgs;

    move-result-object v6

    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/measurement/zzhz;->add(Ljava/lang/Object;)Z

    goto :goto_151

    .line 51
    :cond_179
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zza()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    .line 50
    :cond_17e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzb()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    :cond_183
    :goto_183
    return v1

    .line 42
    :cond_184
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zza()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    .line 40
    :cond_189
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzb()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    :pswitch_18e
    if-eq v6, v14, :cond_192

    goto/16 :goto_451

    .line 52
    :cond_192
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    .line 53
    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/measurement/zzgf;->zzm(Lcom/google/android/gms/internal/measurement/zzji;I[BIILcom/google/android/gms/internal/measurement/zzhz;Lcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    return v1

    :pswitch_1a9
    if-ne v6, v14, :cond_451

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    cmp-long v1, v8, v12

    const-string v6, ""

    if-nez v1, :cond_1fc

    .line 69
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-ltz v4, :cond_1f7

    if-nez v4, :cond_1c4

    .line 71
    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/measurement/zzhz;->add(Ljava/lang/Object;)Z

    goto :goto_1cf

    .line 78
    :cond_1c4
    new-instance v8, Ljava/lang/String;

    .line 72
    sget-object v9, Lcom/google/android/gms/internal/measurement/zzia;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 73
    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/measurement/zzhz;->add(Ljava/lang/Object;)Z

    :goto_1ce
    add-int/2addr v1, v4

    :goto_1cf
    if-ge v1, v5, :cond_452

    .line 74
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v4

    iget v8, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-ne v2, v8, :cond_452

    .line 75
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-ltz v4, :cond_1f2

    if-nez v4, :cond_1e7

    .line 76
    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/measurement/zzhz;->add(Ljava/lang/Object;)Z

    goto :goto_1cf

    :cond_1e7
    new-instance v8, Ljava/lang/String;

    .line 77
    sget-object v9, Lcom/google/android/gms/internal/measurement/zzia;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 78
    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/measurement/zzhz;->add(Ljava/lang/Object;)Z

    goto :goto_1ce

    .line 79
    :cond_1f2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzb()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    .line 70
    :cond_1f7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzb()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    .line 54
    :cond_1fc
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-ltz v4, :cond_257

    if-nez v4, :cond_20a

    .line 56
    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/measurement/zzhz;->add(Ljava/lang/Object;)Z

    goto :goto_21d

    :cond_20a
    add-int v8, v1, v4

    .line 57
    invoke-static {v3, v1, v8}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb([BII)Z

    move-result v9

    if-eqz v9, :cond_252

    .line 58
    new-instance v9, Ljava/lang/String;

    .line 59
    sget-object v10, Lcom/google/android/gms/internal/measurement/zzia;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v1, v4, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 60
    invoke-interface {v11, v9}, Lcom/google/android/gms/internal/measurement/zzhz;->add(Ljava/lang/Object;)Z

    :goto_21c
    move v1, v8

    :goto_21d
    if-ge v1, v5, :cond_452

    .line 61
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v4

    iget v8, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-ne v2, v8, :cond_452

    .line 62
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-ltz v4, :cond_24d

    if-nez v4, :cond_235

    .line 63
    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/measurement/zzhz;->add(Ljava/lang/Object;)Z

    goto :goto_21d

    :cond_235
    add-int v8, v1, v4

    .line 64
    invoke-static {v3, v1, v8}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb([BII)Z

    move-result v9

    if-eqz v9, :cond_248

    .line 68
    new-instance v9, Ljava/lang/String;

    .line 65
    sget-object v10, Lcom/google/android/gms/internal/measurement/zzia;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v1, v4, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 66
    invoke-interface {v11, v9}, Lcom/google/android/gms/internal/measurement/zzhz;->add(Ljava/lang/Object;)Z

    goto :goto_21c

    .line 68
    :cond_248
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzf()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    .line 67
    :cond_24d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzb()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    .line 58
    :cond_252
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzf()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    .line 55
    :cond_257
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzb()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    :pswitch_25c
    const/4 v1, 0x0

    if-ne v6, v14, :cond_285

    .line 80
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzgg;

    .line 81
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    add-int/2addr v4, v2

    :goto_268
    if-ge v2, v4, :cond_27b

    .line 82
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v2

    iget-wide v5, v7, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    cmp-long v5, v5, v12

    if-eqz v5, :cond_276

    move v5, v10

    goto :goto_277

    :cond_276
    move v5, v1

    .line 83
    :goto_277
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzgg;->zzd(Z)V

    goto :goto_268

    :cond_27b
    if-ne v2, v4, :cond_280

    :goto_27d
    move v1, v2

    goto/16 :goto_452

    .line 84
    :cond_280
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zza()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    :cond_285
    if-nez v6, :cond_451

    .line 85
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzgg;

    .line 86
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v4

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    cmp-long v6, v8, v12

    if-eqz v6, :cond_295

    move v6, v10

    goto :goto_296

    :cond_295
    move v6, v1

    .line 87
    :goto_296
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/measurement/zzgg;->zzd(Z)V

    :goto_299
    if-ge v4, v5, :cond_2b5

    .line 88
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-eq v2, v8, :cond_2a4

    goto :goto_2b5

    .line 89
    :cond_2a4
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v4

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    cmp-long v6, v8, v12

    if-eqz v6, :cond_2b0

    move v6, v10

    goto :goto_2b1

    :cond_2b0
    move v6, v1

    .line 90
    :goto_2b1
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/measurement/zzgg;->zzd(Z)V

    goto :goto_299

    :cond_2b5
    :goto_2b5
    return v4

    :pswitch_2b6
    if-ne v6, v14, :cond_2d6

    .line 91
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzht;

    .line 92
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    add-int/2addr v2, v1

    :goto_2c1
    if-ge v1, v2, :cond_2cd

    .line 93
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzgf;->zzd([BI)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzht;->zzh(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_2c1

    :cond_2cd
    if-ne v1, v2, :cond_2d1

    goto/16 :goto_452

    .line 94
    :cond_2d1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zza()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    :cond_2d6
    if-ne v6, v9, :cond_451

    .line 95
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzht;

    .line 96
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgf;->zzd([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/measurement/zzht;->zzh(I)V

    :goto_2e1
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_2f6

    .line 97
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-eq v2, v6, :cond_2ee

    goto :goto_2f6

    .line 98
    :cond_2ee
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzgf;->zzd([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/measurement/zzht;->zzh(I)V

    goto :goto_2e1

    :cond_2f6
    :goto_2f6
    return v1

    :pswitch_2f7
    if-ne v6, v14, :cond_317

    .line 99
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzim;

    .line 100
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    add-int/2addr v2, v1

    :goto_302
    if-ge v1, v2, :cond_30e

    .line 101
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzgf;->zze([BI)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/zzim;->zzg(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_302

    :cond_30e
    if-ne v1, v2, :cond_312

    goto/16 :goto_452

    .line 102
    :cond_312
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zza()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    :cond_317
    if-ne v6, v10, :cond_451

    .line 103
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzim;

    .line 104
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgf;->zze([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zzim;->zzg(J)V

    :goto_322
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_337

    .line 105
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-eq v2, v6, :cond_32f

    goto :goto_337

    .line 106
    :cond_32f
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzgf;->zze([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zzim;->zzg(J)V

    goto :goto_322

    :cond_337
    :goto_337
    return v1

    :pswitch_338
    if-ne v6, v14, :cond_340

    .line 107
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zzl([BILcom/google/android/gms/internal/measurement/zzhz;Lcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    goto/16 :goto_452

    :cond_340
    if-eqz v6, :cond_344

    goto/16 :goto_451

    :cond_344
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    .line 108
    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/measurement/zzgf;->zzk(I[BIILcom/google/android/gms/internal/measurement/zzhz;Lcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    return v1

    :pswitch_353
    if-ne v6, v14, :cond_373

    .line 109
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzim;

    .line 110
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    add-int/2addr v2, v1

    :goto_35e
    if-ge v1, v2, :cond_36a

    .line 111
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    .line 112
    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/zzim;->zzg(J)V

    goto :goto_35e

    :cond_36a
    if-ne v1, v2, :cond_36e

    goto/16 :goto_452

    .line 113
    :cond_36e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zza()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    :cond_373
    if-nez v6, :cond_451

    .line 114
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzim;

    .line 115
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    .line 116
    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zzim;->zzg(J)V

    :goto_380
    if-ge v1, v5, :cond_395

    .line 117
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-eq v2, v6, :cond_38b

    goto :goto_395

    .line 118
    :cond_38b
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    .line 119
    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zzim;->zzg(J)V

    goto :goto_380

    :cond_395
    :goto_395
    return v1

    :pswitch_396
    if-ne v6, v14, :cond_3ba

    .line 120
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhl;

    .line 121
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    add-int/2addr v2, v1

    :goto_3a1
    if-ge v1, v2, :cond_3b1

    .line 122
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzgf;->zzd([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 123
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzhl;->zzd(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_3a1

    :cond_3b1
    if-ne v1, v2, :cond_3b5

    goto/16 :goto_452

    .line 124
    :cond_3b5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zza()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    :cond_3ba
    if-ne v6, v9, :cond_451

    .line 125
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhl;

    .line 126
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgf;->zzd([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 127
    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/measurement/zzhl;->zzd(F)V

    :goto_3c9
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_3e2

    .line 128
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-eq v2, v6, :cond_3d6

    goto :goto_3e2

    .line 129
    :cond_3d6
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzgf;->zzd([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 130
    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/measurement/zzhl;->zzd(F)V

    goto :goto_3c9

    :cond_3e2
    :goto_3e2
    return v1

    :pswitch_3e3
    if-ne v6, v14, :cond_406

    .line 131
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhb;

    .line 132
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    add-int/2addr v2, v1

    :goto_3ee
    if-ge v1, v2, :cond_3fe

    .line 133
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzgf;->zze([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 134
    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/zzhb;->zzd(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_3ee

    :cond_3fe
    if-ne v1, v2, :cond_401

    goto :goto_452

    .line 135
    :cond_401
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zza()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    :cond_406
    if-ne v6, v10, :cond_451

    .line 136
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhb;

    .line 137
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgf;->zze([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 138
    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhb;->zzd(D)V

    :goto_415
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_42e

    .line 139
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-eq v2, v6, :cond_422

    goto :goto_42e

    .line 140
    :cond_422
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzgf;->zze([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 141
    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhb;->zzd(D)V

    goto :goto_415

    :cond_42e
    :goto_42e
    return v1

    :goto_42f
    if-ge v4, v5, :cond_450

    .line 9
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v8

    iget v9, v7, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-eq v2, v9, :cond_43a

    goto :goto_450

    :cond_43a
    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 10
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/measurement/zzgf;->zzj(Lcom/google/android/gms/internal/measurement/zzji;[BIIILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v4

    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Ljava/lang/Object;

    .line 11
    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/measurement/zzhz;->add(Ljava/lang/Object;)Z

    goto :goto_42f

    :cond_450
    :goto_450
    return v4

    :cond_451
    :goto_451
    move v1, v4

    :cond_452
    :goto_452
    return v1

    nop

    :pswitch_data_454
    .packed-switch 0x12
        :pswitch_3e3
        :pswitch_396
        :pswitch_353
        :pswitch_353
        :pswitch_338
        :pswitch_2f7
        :pswitch_2b6
        :pswitch_25c
        :pswitch_1a9
        :pswitch_18e
        :pswitch_134
        :pswitch_338
        :pswitch_fc
        :pswitch_2b6
        :pswitch_2f7
        :pswitch_ad
        :pswitch_5e
        :pswitch_3e3
        :pswitch_396
        :pswitch_353
        :pswitch_353
        :pswitch_338
        :pswitch_2f7
        :pswitch_2b6
        :pswitch_25c
        :pswitch_338
        :pswitch_fc
        :pswitch_2b6
        :pswitch_2f7
        :pswitch_ad
        :pswitch_5e
    .end packed-switch
.end method

.method private final zzt(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/measurement/zzge;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/measurement/zzge;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzja;->zzb:Lsun/misc/Unsafe;

    .line 1
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/measurement/zzja;->zzw(I)Ljava/lang/Object;

    move-result-object p3

    .line 2
    invoke-virtual {p2, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p4

    .line 3
    move-object p5, p4

    check-cast p5, Lcom/google/android/gms/internal/measurement/zzir;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/measurement/zzir;->zze()Z

    move-result p5

    if-eqz p5, :cond_14

    goto :goto_22

    .line 7
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzir;->zza()Lcom/google/android/gms/internal/measurement/zzir;

    move-result-object p5

    .line 4
    invoke-virtual {p5}, Lcom/google/android/gms/internal/measurement/zzir;->zzc()Lcom/google/android/gms/internal/measurement/zzir;

    move-result-object p5

    .line 5
    invoke-static {p5, p4}, Lcom/google/android/gms/internal/measurement/zzis;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p2, p1, p6, p7, p5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    :goto_22
    check-cast p3, Lcom/google/android/gms/internal/measurement/zziq;

    const/4 p1, 0x0

    throw p1
.end method

.method private final zzu(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/zzge;)I
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/measurement/zzge;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzja;->zzb:Lsun/misc/Unsafe;

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    add-int/lit8 v13, v6, 0x2

    .line 1
    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_1d8

    goto/16 :goto_1d5

    :pswitch_28
    const/4 v7, 0x3

    if-ne v5, v7, :cond_1d5

    .line 2
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v5

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v6, v2, 0x4

    move-object v2, v5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    .line 3
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zzj(Lcom/google/android/gms/internal/measurement/zzji;[BIIILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v2

    .line 4
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4b

    .line 5
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4c

    :cond_4b
    const/4 v15, 0x0

    :goto_4c
    if-nez v15, :cond_54

    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Ljava/lang/Object;

    .line 6
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5d

    .line 9
    :cond_54
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Ljava/lang/Object;

    .line 7
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/measurement/zzia;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    :goto_5d
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1d6

    :pswitch_62
    if-eqz v5, :cond_66

    goto/16 :goto_1d5

    .line 10
    :cond_66
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzgv;->zzc(J)J

    move-result-wide v3

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_7b
    if-eqz v5, :cond_7f

    goto/16 :goto_1d5

    .line 13
    :cond_7f
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzgv;->zzb(I)I

    move-result v3

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 15
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_94
    if-nez v5, :cond_1d5

    .line 16
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    .line 17
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzx(I)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v5

    if-eqz v5, :cond_b6

    .line 18
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/measurement/zzhw;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_a9

    goto :goto_b6

    .line 21
    :cond_a9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(ILjava/lang/Object;)V

    goto :goto_c0

    .line 19
    :cond_b6
    :goto_b6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 20
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_c0
    move v2, v3

    goto/16 :goto_1d6

    :pswitch_c3
    if-eq v5, v15, :cond_c7

    goto/16 :goto_1d5

    .line 22
    :cond_c7
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zzh([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v2

    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Ljava/lang/Object;

    .line 23
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 24
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_d4
    if-ne v5, v15, :cond_1d5

    .line 25
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v2

    move/from16 v5, p4

    .line 26
    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zzi(Lcom/google/android/gms/internal/measurement/zzji;[BIILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v2

    .line 27
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_eb

    .line 28
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_ec

    :cond_eb
    const/4 v15, 0x0

    :goto_ec
    if-nez v15, :cond_f4

    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Ljava/lang/Object;

    .line 29
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_fd

    .line 32
    :cond_f4
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Ljava/lang/Object;

    .line 30
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/measurement/zzia;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 32
    :goto_fd
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1d6

    :pswitch_102
    if-ne v5, v15, :cond_1d5

    .line 33
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v2

    iget v4, v11, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    if-nez v4, :cond_112

    const-string v3, ""

    .line 34
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_131

    :cond_112
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_126

    add-int v5, v2, v4

    .line 35
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb([BII)Z

    move-result v5

    if-eqz v5, :cond_121

    goto :goto_126

    .line 39
    :cond_121
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzf()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v1

    throw v1

    .line 35
    :cond_126
    :goto_126
    new-instance v5, Ljava/lang/String;

    .line 36
    sget-object v6, Lcom/google/android/gms/internal/measurement/zzia;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 37
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 38
    :goto_131
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1d6

    :pswitch_136
    if-nez v5, :cond_1d5

    .line 40
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_146

    const/4 v15, 0x1

    goto :goto_147

    :cond_146
    const/4 v15, 0x0

    .line 41
    :goto_147
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_152
    if-eq v5, v7, :cond_156

    goto/16 :goto_1d5

    .line 43
    :cond_156
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgf;->zzd([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 44
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_167
    const/4 v2, 0x1

    if-eq v5, v2, :cond_16b

    goto :goto_1d5

    .line 45
    :cond_16b
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgf;->zze([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :pswitch_17c
    if-eqz v5, :cond_17f

    goto :goto_1d5

    .line 47
    :cond_17f
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_190
    if-eqz v5, :cond_193

    goto :goto_1d5

    .line 50
    :cond_193
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    .line 51
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 52
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_1a4
    if-eq v5, v7, :cond_1a7

    goto :goto_1d5

    .line 53
    :cond_1a7
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgf;->zzd([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 54
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 55
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_1bc
    const/4 v2, 0x1

    if-eq v5, v2, :cond_1c0

    goto :goto_1d5

    .line 56
    :cond_1c0
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgf;->zze([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 58
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :cond_1d5
    :goto_1d5
    move v2, v4

    :goto_1d6
    return v2

    nop

    :pswitch_data_1d8
    .packed-switch 0x33
        :pswitch_1bc
        :pswitch_1a4
        :pswitch_190
        :pswitch_190
        :pswitch_17c
        :pswitch_167
        :pswitch_152
        :pswitch_136
        :pswitch_102
        :pswitch_d4
        :pswitch_c3
        :pswitch_17c
        :pswitch_94
        :pswitch_152
        :pswitch_167
        :pswitch_7b
        :pswitch_62
        :pswitch_28
    .end packed-switch
.end method

.method private final zzv(I)Lcom/google/android/gms/internal/measurement/zzji;
    .registers 5

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzd:[Ljava/lang/Object;

    .line 1
    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzji;

    if-eqz v0, :cond_c

    return-object v0

    .line 2
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjf;->zza()Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzd:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjf;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzd:[Ljava/lang/Object;

    .line 3
    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzw(I)Ljava/lang/Object;
    .registers 3

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    .line 1
    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzx(I)Lcom/google/android/gms/internal/measurement/zzhw;
    .registers 3

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    .line 1
    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhw;

    return-object p1
.end method

.method private final zzy(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzge;)I
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/measurement/zzge;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v9, Lcom/google/android/gms/internal/measurement/zzja;->zzb:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    const v8, 0xfffff

    move/from16 v0, p3

    move v7, v8

    move v1, v10

    move/from16 v2, v16

    move v6, v2

    :goto_19
    if-ge v0, v13, :cond_345

    add-int/lit8 v3, v0, 0x1

    .line 1
    aget-byte v0, v12, v0

    if-gez v0, :cond_2b

    .line 2
    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zzb(I[BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    iget v3, v11, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_2e

    :cond_2b
    move/from16 v17, v0

    move v4, v3

    :goto_2e
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_3b

    div-int/lit8 v2, v2, 0x3

    .line 3
    invoke-direct {v15, v5, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzP(II)I

    move-result v0

    goto :goto_3f

    .line 4
    :cond_3b
    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/measurement/zzja;->zzO(I)I

    move-result v0

    :goto_3f
    move v2, v0

    if-ne v2, v10, :cond_4d

    move v2, v4

    move/from16 v20, v5

    move-object/from16 v28, v9

    move/from16 v18, v10

    move/from16 v19, v16

    goto/16 :goto_31e

    .line 49
    :cond_4d
    iget-object v0, v15, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    add-int/lit8 v1, v2, 0x1

    .line 5
    aget v1, v0, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzC(I)I

    move-result v0

    and-int v10, v1, v8

    move-object/from16 v19, v9

    int-to-long v8, v10

    const/16 v10, 0x11

    move/from16 p3, v5

    if-gt v0, v10, :cond_21a

    iget-object v10, v15, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    add-int/lit8 v21, v2, 0x2

    .line 6
    aget v10, v10, v21

    ushr-int/lit8 v21, v10, 0x14

    const/4 v5, 0x1

    shl-int v21, v5, v21

    const v13, 0xfffff

    and-int/2addr v10, v13

    if-eq v10, v7, :cond_93

    if-eq v7, v13, :cond_80

    move/from16 v23, v1

    move/from16 v20, v2

    int-to-long v1, v7

    move-object/from16 v7, v19

    .line 7
    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_86

    :cond_80
    move/from16 v23, v1

    move/from16 v20, v2

    move-object/from16 v7, v19

    :goto_86
    if-eq v10, v13, :cond_8d

    int-to-long v1, v10

    .line 8
    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :cond_8d
    move/from16 v29, v10

    move-object v10, v7

    move/from16 v7, v29

    goto :goto_99

    :cond_93
    move/from16 v23, v1

    move/from16 v20, v2

    move-object/from16 v10, v19

    :goto_99
    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_360

    move/from16 v19, v13

    move/from16 v13, v20

    move/from16 v20, p3

    goto/16 :goto_211

    :pswitch_a5
    if-nez v3, :cond_c3

    .line 9
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v17

    iget-wide v0, v11, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgv;->zzc(J)J

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v13, v20

    move-wide v2, v8

    move/from16 v20, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v0, v17

    goto :goto_101

    :cond_c3
    move/from16 v13, v20

    move/from16 v20, p3

    goto/16 :goto_135

    :pswitch_c9
    move/from16 v13, v20

    move/from16 v20, p3

    if-nez v3, :cond_135

    .line 11
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzgv;->zzb(I)I

    move-result v1

    .line 12
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_fd

    :pswitch_dd
    move/from16 v13, v20

    move/from16 v20, p3

    if-nez v3, :cond_135

    .line 13
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    .line 14
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_fd

    :pswitch_ed
    move/from16 v13, v20

    const/4 v0, 0x2

    move/from16 v20, p3

    if-ne v3, v0, :cond_135

    .line 15
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zzh([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Ljava/lang/Object;

    .line 16
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_fd
    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    :goto_101
    move/from16 v1, v20

    const v8, 0xfffff

    goto/16 :goto_262

    :pswitch_108
    move/from16 v13, v20

    const/4 v0, 0x2

    move/from16 v20, p3

    if-ne v3, v0, :cond_133

    .line 17
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v0

    move/from16 v2, p4

    const v19, 0xfffff

    .line 18
    invoke-static {v0, v12, v4, v2, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zzi(Lcom/google/android/gms/internal/measurement/zzji;[BIILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    .line 19
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_129

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Ljava/lang/Object;

    .line 20
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_18a

    :cond_129
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Ljava/lang/Object;

    .line 21
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzia;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_18a

    :cond_133
    move/from16 v2, p4

    :cond_135
    :goto_135
    const v19, 0xfffff

    goto/16 :goto_211

    :pswitch_13a
    move/from16 v2, p4

    move/from16 v19, v13

    move/from16 v13, v20

    const/4 v0, 0x2

    move/from16 v20, p3

    if-ne v3, v0, :cond_211

    const/high16 v0, 0x20000000

    and-int v0, v23, v0

    if-nez v0, :cond_150

    .line 23
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zzf([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    goto :goto_154

    .line 24
    :cond_150
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zzg([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    .line 23
    :goto_154
    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Ljava/lang/Object;

    .line 25
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_18a

    :pswitch_15a
    move/from16 v2, p4

    move/from16 v19, v13

    move/from16 v13, v20

    move/from16 v20, p3

    if-nez v3, :cond_211

    .line 26
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    const-wide/16 v22, 0x0

    cmp-long v1, v3, v22

    if-eqz v1, :cond_171

    goto :goto_173

    :cond_171
    move/from16 v5, v16

    .line 27
    :goto_173
    invoke-static {v14, v8, v9, v5}, Lcom/google/android/gms/internal/measurement/zzkh;->zzi(Ljava/lang/Object;JZ)V

    goto :goto_18a

    :pswitch_177
    move/from16 v2, p4

    move/from16 v19, v13

    move/from16 v13, v20

    move/from16 v20, p3

    if-ne v3, v1, :cond_211

    .line 28
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/zzgf;->zzd([BI)I

    move-result v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    :goto_18a
    or-int v6, v6, v21

    move-object v9, v10

    move/from16 v8, v19

    move/from16 v1, v20

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_19

    :pswitch_199
    move/from16 v2, p4

    move/from16 v19, v13

    move/from16 v13, v20

    move/from16 v20, p3

    if-ne v3, v5, :cond_211

    .line 29
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/zzgf;->zze([BI)J

    move-result-wide v22

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto :goto_20e

    :pswitch_1b4
    move/from16 v19, v13

    move/from16 v13, v20

    move/from16 v20, p3

    if-nez v3, :cond_211

    .line 30
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    .line 31
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_20e

    :pswitch_1c6
    move/from16 v19, v13

    move/from16 v13, v20

    move/from16 v20, p3

    if-nez v3, :cond_211

    .line 32
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v17

    iget-wide v4, v11, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    .line 33
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v0, v17

    goto/16 :goto_25e

    :pswitch_1e3
    move/from16 v19, v13

    move/from16 v13, v20

    move/from16 v20, p3

    if-ne v3, v1, :cond_211

    .line 34
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/zzgf;->zzd([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 35
    invoke-static {v14, v8, v9, v0}, Lcom/google/android/gms/internal/measurement/zzkh;->zzk(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v4, 0x4

    goto :goto_20e

    :pswitch_1f9
    move/from16 v19, v13

    move/from16 v13, v20

    move/from16 v20, p3

    if-ne v3, v5, :cond_211

    .line 36
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/zzgf;->zze([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 37
    invoke-static {v14, v8, v9, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzm(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v4, 0x8

    :goto_20e
    or-int v6, v6, v21

    goto :goto_25c

    :cond_211
    :goto_211
    move v2, v4

    move-object/from16 v28, v10

    move/from16 v19, v13

    const/16 v18, -0x1

    goto/16 :goto_31e

    :cond_21a
    move/from16 v20, p3

    move/from16 v23, v1

    move v13, v2

    move-object/from16 v10, v19

    const v19, 0xfffff

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_274

    const/4 v1, 0x2

    if-ne v3, v1, :cond_267

    .line 38
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhz;

    .line 39
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzhz;->zza()Z

    move-result v1

    if-nez v1, :cond_248

    .line 40
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzhz;->size()I

    move-result v1

    if-nez v1, :cond_240

    const/16 v1, 0xa

    goto :goto_241

    :cond_240
    add-int/2addr v1, v1

    .line 41
    :goto_241
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zze(I)Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v0

    .line 42
    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_248
    move-object v5, v0

    .line 43
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move v8, v6

    move-object/from16 v6, p5

    .line 44
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzgf;->zzm(Lcom/google/android/gms/internal/measurement/zzji;I[BIILcom/google/android/gms/internal/measurement/zzhz;Lcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    move v6, v8

    :goto_25c
    move-object v9, v10

    move v2, v13

    :goto_25e
    move/from16 v8, v19

    move/from16 v1, v20

    :goto_262
    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_19

    :cond_267
    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v28, v10

    move/from16 v19, v13

    const/16 v18, -0x1

    goto/16 :goto_2fb

    :cond_274
    const/16 v1, 0x31

    if-gt v0, v1, :cond_2c7

    move/from16 v1, v23

    int-to-long v1, v1

    move v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 p3, v3

    move v3, v4

    move v15, v4

    move/from16 v4, p4

    move/from16 v23, v5

    move/from16 v5, v17

    move/from16 v24, v6

    move/from16 v6, v20

    move/from16 v25, v7

    move/from16 v7, p3

    move-wide/from16 v26, v8

    move/from16 v9, v19

    move v8, v13

    move-object/from16 v28, v10

    const/16 v18, -0x1

    move-wide/from16 v9, v21

    move/from16 v11, v23

    move/from16 v19, v13

    move-wide/from16 v12, v26

    move-object/from16 v14, p5

    .line 45
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/measurement/zzja;->zzs(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    if-eq v0, v15, :cond_2c5

    :goto_2af
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v10, v18

    move/from16 v2, v19

    move/from16 v1, v20

    move/from16 v6, v24

    move/from16 v7, v25

    goto/16 :goto_33e

    :cond_2c5
    move v2, v0

    goto :goto_2fc

    :cond_2c7
    move/from16 p3, v3

    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move/from16 v19, v13

    move/from16 v1, v23

    const/16 v18, -0x1

    move/from16 v23, v0

    const/16 v0, 0x32

    move/from16 v9, v23

    if-ne v9, v0, :cond_301

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_2fb

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v26

    move-object/from16 v8, p5

    .line 46
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/measurement/zzja;->zzt(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    if-eq v0, v15, :cond_2c5

    goto :goto_2af

    :cond_2fb
    :goto_2fb
    move v2, v15

    :goto_2fc
    move/from16 v6, v24

    move/from16 v7, v25

    goto :goto_31e

    :cond_301
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v20

    move-wide/from16 v10, v26

    move/from16 v12, v19

    move-object/from16 v13, p5

    .line 47
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/measurement/zzja;->zzu(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    if-eq v0, v15, :cond_2c5

    goto :goto_2af

    .line 48
    :goto_31e
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 49
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzgf;->zzn(I[BIILcom/google/android/gms/internal/measurement/zzjx;Lcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v10, v18

    move/from16 v2, v19

    move/from16 v1, v20

    :goto_33e
    move-object/from16 v9, v28

    const v8, 0xfffff

    goto/16 :goto_19

    :cond_345
    move/from16 v24, v6

    move v1, v8

    move-object/from16 v28, v9

    if-eq v7, v1, :cond_356

    int-to-long v1, v7

    move-object/from16 v3, p1

    move/from16 v6, v24

    move-object/from16 v4, v28

    .line 50
    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_356
    move/from16 v1, p4

    if-ne v0, v1, :cond_35b

    return v0

    .line 51
    :cond_35b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zze()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v0

    throw v0

    :pswitch_data_360
    .packed-switch 0x0
        :pswitch_1f9
        :pswitch_1e3
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1b4
        :pswitch_199
        :pswitch_177
        :pswitch_15a
        :pswitch_13a
        :pswitch_108
        :pswitch_ed
        :pswitch_1b4
        :pswitch_dd
        :pswitch_177
        :pswitch_199
        :pswitch_c9
        :pswitch_a5
    .end packed-switch
.end method

.method private static zzz(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzji;)Z
    .registers 5

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/measurement/zzji;->zzj(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzg:Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhs;

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 1
    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/gms/internal/measurement/zzhs;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_1c7

    .line 1
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzA(I)I

    move-result v3

    const v4, 0xfffff

    and-int v5, v3, v4

    int-to-long v5, v5

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzC(I)I

    move-result v3

    packed-switch v3, :pswitch_data_1ec

    goto/16 :goto_1c3

    .line 2
    :pswitch_1a
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzB(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v3, v3

    .line 3
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v7

    .line 4
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v7, v3, :cond_1c2

    .line 5
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 6
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzD(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c3

    goto/16 :goto_1c2

    .line 7
    :pswitch_3a
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzD(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_53

    .line 9
    :pswitch_47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 10
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzD(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_53
    if-nez v3, :cond_1c3

    goto/16 :goto_1c2

    .line 11
    :pswitch_57
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 12
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 13
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzD(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    goto/16 :goto_1c3

    .line 14
    :pswitch_6d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 15
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c2

    goto/16 :goto_1c3

    .line 16
    :pswitch_81
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 17
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 18
    :pswitch_93
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 19
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c2

    goto/16 :goto_1c3

    .line 20
    :pswitch_a7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 21
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 22
    :pswitch_b9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 23
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 24
    :pswitch_cb
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 25
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 26
    :pswitch_dd
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 27
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 28
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzD(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    goto/16 :goto_1c3

    .line 29
    :pswitch_f3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 30
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 31
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzD(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    goto/16 :goto_1c3

    .line 32
    :pswitch_109
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 33
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 34
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzD(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    goto/16 :goto_1c3

    .line 35
    :pswitch_11f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 36
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzh(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzh(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 37
    :pswitch_131
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 38
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 39
    :pswitch_143
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 40
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c2

    goto/16 :goto_1c3

    .line 41
    :pswitch_157
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto :goto_1c3

    .line 43
    :pswitch_168
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 44
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c2

    goto :goto_1c3

    .line 45
    :pswitch_17b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c2

    goto :goto_1c3

    .line 47
    :pswitch_18e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzj(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 49
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzj(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto :goto_1c3

    .line 50
    :pswitch_1a7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzl(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 52
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzl(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c2

    goto :goto_1c3

    :cond_1c2
    :goto_1c2
    return v1

    :cond_1c3
    :goto_1c3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_5

    :cond_1c7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzn:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 53
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzn:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 54
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1da

    return v1

    :cond_1da
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzh:Z

    if-nez v0, :cond_1e0

    const/4 p1, 0x1

    return p1

    :cond_1e0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzo:Lcom/google/android/gms/internal/measurement/zzhf;

    .line 56
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhj;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzo:Lcom/google/android/gms/internal/measurement/zzhf;

    .line 57
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhj;

    const/4 p1, 0x0

    .line 58
    throw p1

    :pswitch_data_1ec
    .packed-switch 0x0
        :pswitch_1a7
        :pswitch_18e
        :pswitch_17b
        :pswitch_168
        :pswitch_157
        :pswitch_143
        :pswitch_131
        :pswitch_11f
        :pswitch_109
        :pswitch_f3
        :pswitch_dd
        :pswitch_cb
        :pswitch_b9
        :pswitch_a7
        :pswitch_93
        :pswitch_81
        :pswitch_6d
        :pswitch_57
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_3a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public final zzc(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v1, v0, :cond_22b

    .line 1
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzA(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 2
    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzC(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_244

    goto/16 :goto_227

    .line 3
    :pswitch_1f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 4
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_226

    .line 6
    :pswitch_31
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 7
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zze(J)I

    move-result v3

    goto/16 :goto_226

    .line 8
    :pswitch_43
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 9
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    .line 10
    :pswitch_51
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 11
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zze(J)I

    move-result v3

    goto/16 :goto_226

    .line 12
    :pswitch_63
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 13
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    .line 14
    :pswitch_71
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 15
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    .line 16
    :pswitch_7f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 17
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    .line 18
    :pswitch_8d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 19
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_226

    .line 20
    :pswitch_9f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 21
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_226

    .line 23
    :pswitch_b1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 24
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_226

    .line 25
    :pswitch_c5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 26
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzH(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzia;->zzf(Z)I

    move-result v3

    goto/16 :goto_226

    .line 27
    :pswitch_d7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 28
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    .line 29
    :pswitch_e5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 30
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zze(J)I

    move-result v3

    goto/16 :goto_226

    .line 31
    :pswitch_f7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 32
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    .line 33
    :pswitch_105
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 34
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zze(J)I

    move-result v3

    goto/16 :goto_226

    .line 35
    :pswitch_117
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 36
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zze(J)I

    move-result v3

    goto/16 :goto_226

    .line 37
    :pswitch_129
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 38
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzE(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_226

    .line 39
    :pswitch_13b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 40
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzD(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zze(J)I

    move-result v3

    goto/16 :goto_226

    :pswitch_151
    mul-int/lit8 v2, v2, 0x35

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_226

    :pswitch_15d
    mul-int/lit8 v2, v2, 0x35

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_226

    .line 43
    :pswitch_169
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c2

    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1c2

    :pswitch_174
    mul-int/lit8 v2, v2, 0x35

    .line 45
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zze(J)I

    move-result v3

    goto/16 :goto_226

    :pswitch_180
    mul-int/lit8 v2, v2, 0x35

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    :pswitch_188
    mul-int/lit8 v2, v2, 0x35

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zze(J)I

    move-result v3

    goto/16 :goto_226

    :pswitch_194
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    :pswitch_19c
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    :pswitch_1a4
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    :pswitch_1ac
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_226

    .line 52
    :pswitch_1b8
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c2

    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1c2
    :goto_1c2
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_227

    :pswitch_1c6
    mul-int/lit8 v2, v2, 0x35

    .line 54
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_226

    :pswitch_1d3
    mul-int/lit8 v2, v2, 0x35

    .line 55
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzh(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzia;->zzf(Z)I

    move-result v3

    goto :goto_226

    :pswitch_1de
    mul-int/lit8 v2, v2, 0x35

    .line 56
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_226

    :pswitch_1e5
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zze(J)I

    move-result v3

    goto :goto_226

    :pswitch_1f0
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_226

    :pswitch_1f7
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zze(J)I

    move-result v3

    goto :goto_226

    :pswitch_202
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zze(J)I

    move-result v3

    goto :goto_226

    :pswitch_20d
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzj(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_226

    :pswitch_218
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzl(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 63
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zze(J)I

    move-result v3

    :goto_226
    add-int/2addr v2, v3

    :cond_227
    :goto_227
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_5

    :cond_22b
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzn:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 64
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzh:Z

    if-nez v0, :cond_23d

    return v2

    :cond_23d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzo:Lcom/google/android/gms/internal/measurement/zzhf;

    .line 65
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhj;

    const/4 p1, 0x0

    throw p1

    :pswitch_data_244
    .packed-switch 0x0
        :pswitch_218
        :pswitch_20d
        :pswitch_202
        :pswitch_1f7
        :pswitch_1f0
        :pswitch_1e5
        :pswitch_1de
        :pswitch_1d3
        :pswitch_1c6
        :pswitch_1b8
        :pswitch_1ac
        :pswitch_1a4
        :pswitch_19c
        :pswitch_194
        :pswitch_188
        :pswitch_180
        :pswitch_174
        :pswitch_169
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_151
        :pswitch_13b
        :pswitch_129
        :pswitch_117
        :pswitch_105
        :pswitch_f7
        :pswitch_e5
        :pswitch_d7
        :pswitch_c5
        :pswitch_b1
        :pswitch_9f
        :pswitch_8d
        :pswitch_7f
        :pswitch_71
        :pswitch_63
        :pswitch_51
        :pswitch_43
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_18f

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_180

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 2
    aget v4, v4, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzC(I)I

    move-result v1

    packed-switch v1, :pswitch_data_192

    goto/16 :goto_17c

    .line 3
    :pswitch_1e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzp(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 4
    :pswitch_23
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 5
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzN(Ljava/lang/Object;II)V

    goto/16 :goto_17c

    .line 7
    :pswitch_35
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzp(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 8
    :pswitch_3a
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 9
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 10
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzN(Ljava/lang/Object;II)V

    goto/16 :goto_17c

    :pswitch_4c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzq:Lcom/google/android/gms/internal/measurement/zzis;

    .line 11
    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zzI(Lcom/google/android/gms/internal/measurement/zzis;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_17c

    :pswitch_53
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzm:Lcom/google/android/gms/internal/measurement/zzil;

    .line 12
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzil;->zzb(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_17c

    .line 13
    :pswitch_5a
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzo(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 14
    :pswitch_5f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 15
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkh;->zzg(Ljava/lang/Object;JJ)V

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 17
    :pswitch_71
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 18
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zze(Ljava/lang/Object;JI)V

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 20
    :pswitch_83
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 21
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkh;->zzg(Ljava/lang/Object;JJ)V

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 23
    :pswitch_95
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 24
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zze(Ljava/lang/Object;JI)V

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 26
    :pswitch_a7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 27
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zze(Ljava/lang/Object;JI)V

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 29
    :pswitch_b9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 30
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zze(Ljava/lang/Object;JI)V

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 32
    :pswitch_cb
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 33
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 35
    :pswitch_dd
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzo(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 36
    :pswitch_e2
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 37
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 39
    :pswitch_f4
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 40
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzh(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzi(Ljava/lang/Object;JZ)V

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 42
    :pswitch_106
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 43
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zze(Ljava/lang/Object;JI)V

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    goto :goto_17c

    .line 45
    :pswitch_117
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 46
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkh;->zzg(Ljava/lang/Object;JJ)V

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    goto :goto_17c

    .line 48
    :pswitch_128
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 49
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zze(Ljava/lang/Object;JI)V

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    goto :goto_17c

    .line 51
    :pswitch_139
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 52
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkh;->zzg(Ljava/lang/Object;JJ)V

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    goto :goto_17c

    .line 54
    :pswitch_14a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 55
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkh;->zzg(Ljava/lang/Object;JJ)V

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    goto :goto_17c

    .line 57
    :pswitch_15b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 58
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzj(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzk(Ljava/lang/Object;JF)V

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    goto :goto_17c

    .line 60
    :pswitch_16c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 61
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzl(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkh;->zzm(Ljava/lang/Object;JD)V

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzL(Ljava/lang/Object;I)V

    :cond_17c
    :goto_17c
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_3

    :cond_180
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzn:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 63
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzF(Lcom/google/android/gms/internal/measurement/zzjw;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzh:Z

    if-eqz v0, :cond_18e

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzo:Lcom/google/android/gms/internal/measurement/zzhf;

    .line 64
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzE(Lcom/google/android/gms/internal/measurement/zzhf;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18e
    return-void

    :cond_18f
    const/4 p1, 0x0

    .line 65
    throw p1

    nop

    :pswitch_data_192
    .packed-switch 0x0
        :pswitch_16c
        :pswitch_15b
        :pswitch_14a
        :pswitch_139
        :pswitch_128
        :pswitch_117
        :pswitch_106
        :pswitch_f4
        :pswitch_e2
        :pswitch_dd
        :pswitch_cb
        :pswitch_b9
        :pswitch_a7
        :pswitch_95
        :pswitch_83
        :pswitch_71
        :pswitch_5f
        :pswitch_5a
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_4c
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_35
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method

.method public final zze(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzi:Z

    if-eqz v0, :cond_9

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzr(Ljava/lang/Object;)I

    move-result p1

    goto :goto_d

    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzq(Ljava/lang/Object;)I

    move-result p1

    :goto_d
    return p1
.end method

.method final zzg(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzge;)I
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/measurement/zzge;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/google/android/gms/internal/measurement/zzja;->zzb:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    move/from16 v1, v16

    move v3, v1

    move v5, v3

    const/4 v2, -0x1

    const v6, 0xfffff

    :goto_1a
    const/16 v17, 0x0

    if-ge v0, v13, :cond_40f

    add-int/lit8 v1, v0, 0x1

    .line 1
    aget-byte v0, v12, v0

    if-gez v0, :cond_2d

    .line 2
    invoke-static {v0, v12, v1, v9}, Lcom/google/android/gms/internal/measurement/zzgf;->zzb(I[BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    move v4, v1

    move v1, v0

    goto :goto_2e

    :cond_2d
    move v4, v0

    :goto_2e
    ushr-int/lit8 v0, v4, 0x3

    and-int/lit8 v7, v4, 0x7

    const/4 v8, 0x3

    if-le v0, v2, :cond_3b

    div-int/2addr v3, v8

    .line 3
    invoke-direct {v15, v0, v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzP(II)I

    move-result v2

    goto :goto_3f

    .line 4
    :cond_3b
    invoke-direct {v15, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzO(I)I

    move-result v2

    :goto_3f
    const/4 v3, -0x1

    if-ne v2, v3, :cond_53

    move/from16 p3, v0

    move v2, v1

    move/from16 v25, v3

    move v7, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v26, v10

    move v6, v11

    move/from16 v18, v16

    goto/16 :goto_39d

    .line 59
    :cond_53
    iget-object v3, v15, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    add-int/lit8 v20, v2, 0x1

    .line 5
    aget v3, v3, v20

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzC(I)I

    move-result v8

    move/from16 v20, v0

    const v18, 0xfffff

    and-int v0, v3, v18

    move/from16 v22, v3

    move/from16 v21, v4

    int-to-long v3, v0

    const/16 v0, 0x11

    if-gt v8, v0, :cond_29a

    iget-object v0, v15, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    add-int/lit8 v23, v2, 0x2

    .line 6
    aget v0, v0, v23

    ushr-int/lit8 v23, v0, 0x14

    const/4 v11, 0x1

    shl-int v23, v11, v23

    const v11, 0xfffff

    and-int/2addr v0, v11

    if-eq v0, v6, :cond_8b

    if-eq v6, v11, :cond_84

    int-to-long v11, v6

    .line 7
    invoke-virtual {v10, v14, v11, v12, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_84
    int-to-long v5, v0

    .line 8
    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v11, v0

    goto :goto_8c

    :cond_8b
    move v11, v6

    :goto_8c
    move v6, v5

    const/4 v0, 0x5

    packed-switch v8, :pswitch_data_46e

    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x3

    const/16 v19, -0x1

    move v2, v1

    if-ne v7, v0, :cond_289

    .line 9
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v0

    shl-int/lit8 v1, v20, 0x3

    or-int/lit8 v5, v1, 0x4

    move-object/from16 v1, p2

    move-wide v12, v3

    move/from16 v3, p4

    move v4, v5

    move-object/from16 v5, p6

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzgf;->zzj(Lcom/google/android/gms/internal/measurement/zzji;[BIIILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    and-int v1, v6, v23

    if-nez v1, :cond_273

    iget-object v1, v9, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Ljava/lang/Object;

    .line 11
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_280

    :pswitch_bd
    if-nez v7, :cond_e0

    move-object/from16 v12, p2

    .line 15
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v7

    iget-wide v0, v9, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgv;->zzc(J)J

    move-result-wide v24

    move/from16 v8, v20

    move-object v0, v10

    move-object/from16 v1, p1

    move v5, v2

    const/16 v19, -0x1

    move-wide v2, v3

    move/from16 p3, v11

    move/from16 v11, v21

    move v8, v5

    move-wide/from16 v4, v24

    .line 16
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_22f

    :cond_e0
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    goto/16 :goto_1f8

    :pswitch_eb
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    if-nez v7, :cond_1f8

    .line 17
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzgv;->zzb(I)I

    move-result v1

    .line 18
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_269

    :pswitch_105
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    if-nez v7, :cond_1f8

    .line 19
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    .line 20
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/measurement/zzja;->zzx(I)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v2

    if-eqz v2, :cond_138

    .line 21
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/zzhw;->zza(I)Z

    move-result v2

    if-eqz v2, :cond_123

    goto :goto_138

    .line 23
    :cond_123
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(ILjava/lang/Object;)V

    move v5, v6

    move v3, v8

    move v1, v11

    move/from16 v2, v20

    move/from16 v6, p3

    goto/16 :goto_2e9

    .line 22
    :cond_138
    :goto_138
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_269

    :pswitch_13d
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x2

    const/16 v19, -0x1

    if-ne v7, v0, :cond_1f8

    .line 24
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/zzgf;->zzh([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    iget-object v1, v9, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Ljava/lang/Object;

    .line 25
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_269

    :pswitch_154
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x2

    const/16 v19, -0x1

    if-ne v7, v0, :cond_1f8

    .line 26
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v0

    .line 27
    invoke-static {v0, v12, v1, v13, v9}, Lcom/google/android/gms/internal/measurement/zzgf;->zzi(Lcom/google/android/gms/internal/measurement/zzji;[BIILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    and-int v1, v6, v23

    if-nez v1, :cond_173

    iget-object v1, v9, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Ljava/lang/Object;

    .line 28
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_269

    .line 29
    :cond_173
    invoke-virtual {v10, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Ljava/lang/Object;

    .line 30
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzia;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 31
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_269

    :pswitch_182
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x2

    const/16 v19, -0x1

    if-ne v7, v0, :cond_1f8

    const/high16 v0, 0x20000000

    and-int v0, v22, v0

    if-nez v0, :cond_199

    .line 32
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/zzgf;->zzf([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    goto :goto_19d

    .line 33
    :cond_199
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/zzgf;->zzg([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    .line 32
    :goto_19d
    iget-object v1, v9, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Ljava/lang/Object;

    .line 34
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_269

    :pswitch_1a4
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    if-nez v7, :cond_1f8

    .line 35
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    iget-wide v1, v9, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    const-wide/16 v21, 0x0

    cmp-long v1, v1, v21

    if-eqz v1, :cond_1bd

    const/4 v1, 0x1

    goto :goto_1bf

    :cond_1bd
    move/from16 v1, v16

    .line 36
    :goto_1bf
    invoke-static {v14, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzi(Ljava/lang/Object;JZ)V

    goto/16 :goto_269

    :pswitch_1c4
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    if-ne v7, v0, :cond_1f8

    .line 37
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/measurement/zzgf;->zzd([BI)I

    move-result v0

    invoke-virtual {v10, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v1, 0x4

    goto/16 :goto_269

    :pswitch_1da
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x1

    const/16 v19, -0x1

    if-ne v7, v0, :cond_1f8

    .line 38
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/measurement/zzgf;->zze([BI)J

    move-result-wide v21

    move-object v0, v10

    move v7, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    goto/16 :goto_269

    :cond_1f8
    :goto_1f8
    move v2, v1

    goto/16 :goto_289

    :pswitch_1fb
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    move v2, v1

    if-nez v7, :cond_289

    .line 39
    invoke-static {v12, v2, v9}, Lcom/google/android/gms/internal/measurement/zzgf;->zza([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/zzge;->zza:I

    .line 40
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_269

    :pswitch_212
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    move v2, v1

    if-nez v7, :cond_289

    .line 41
    invoke-static {v12, v2, v9}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc([BILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v7

    iget-wide v1, v9, Lcom/google/android/gms/internal/measurement/zzge;->zzb:J

    move-object v0, v10

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v21

    .line 42
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_22f
    or-int v5, v6, v23

    move/from16 v6, p3

    move v0, v7

    goto :goto_26d

    :pswitch_235
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    move v2, v1

    if-ne v7, v0, :cond_289

    .line 43
    invoke-static {v12, v2}, Lcom/google/android/gms/internal/measurement/zzgf;->zzd([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 44
    invoke-static {v14, v3, v4, v0}, Lcom/google/android/gms/internal/measurement/zzkh;->zzk(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v2, 0x4

    goto :goto_269

    :pswitch_24f
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x1

    const/16 v19, -0x1

    move v2, v1

    if-ne v7, v0, :cond_289

    .line 45
    invoke-static {v12, v2}, Lcom/google/android/gms/internal/measurement/zzgf;->zze([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 46
    invoke-static {v14, v3, v4, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzm(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v2, 0x8

    :goto_269
    or-int v5, v6, v23

    move/from16 v6, p3

    :goto_26d
    move v3, v8

    move v1, v11

    move/from16 v2, v20

    goto/16 :goto_2e9

    .line 12
    :cond_273
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Ljava/lang/Object;

    .line 13
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzia;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 14
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_280
    or-int v5, v6, v23

    move-object/from16 v12, p2

    move/from16 v6, p3

    move/from16 v13, p4

    goto :goto_26d

    :cond_289
    :goto_289
    move/from16 v21, p3

    move/from16 v18, v8

    move-object/from16 v26, v10

    move v7, v11

    move/from16 v25, v19

    move/from16 p3, v20

    move/from16 v20, v6

    move/from16 v6, p5

    goto/16 :goto_39d

    :cond_29a
    move-wide v12, v3

    move v3, v8

    move/from16 v4, v20

    move/from16 v11, v21

    const/16 v19, -0x1

    move v8, v2

    move v2, v1

    const/16 v0, 0x1b

    if-ne v3, v0, :cond_2fe

    const/4 v0, 0x2

    if-ne v7, v0, :cond_2ed

    .line 47
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhz;

    .line 48
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzhz;->zza()Z

    move-result v1

    if-nez v1, :cond_2c8

    .line 49
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzhz;->size()I

    move-result v1

    if-nez v1, :cond_2c0

    const/16 v1, 0xa

    goto :goto_2c1

    :cond_2c0
    add-int/2addr v1, v1

    .line 50
    :goto_2c1
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zze(I)Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v0

    .line 51
    invoke-virtual {v10, v14, v12, v13, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_2c8
    move-object v7, v0

    .line 52
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v0

    move v1, v11

    move v3, v2

    move-object/from16 v2, p2

    move v12, v4

    move/from16 v4, p4

    move/from16 v20, v5

    move-object v5, v7

    move/from16 v21, v6

    move-object/from16 v6, p6

    .line 53
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzgf;->zzm(Lcom/google/android/gms/internal/measurement/zzji;I[BIILcom/google/android/gms/internal/measurement/zzhz;Lcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    move/from16 v13, p4

    move v3, v8

    move v2, v12

    move/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v12, p2

    :goto_2e9
    move/from16 v11, p5

    goto/16 :goto_1a

    :cond_2ed
    move/from16 v20, v5

    move/from16 v21, v6

    move v15, v2

    move/from16 p3, v4

    move/from16 v18, v8

    move-object/from16 v26, v10

    move/from16 v22, v11

    move/from16 v25, v19

    goto/16 :goto_37d

    :cond_2fe
    move/from16 v20, v5

    move/from16 v21, v6

    move v5, v2

    move v6, v4

    const/16 v0, 0x31

    if-gt v3, v0, :cond_350

    move/from16 v4, v22

    int-to-long v1, v4

    move-object/from16 v0, p0

    move-wide/from16 v22, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v24, v3

    move v3, v5

    move/from16 v4, p4

    move v15, v5

    move v5, v11

    move/from16 p3, v6

    move/from16 v18, v8

    move/from16 v25, v19

    move/from16 v19, v24

    move-object/from16 v26, v10

    move-wide/from16 v9, v22

    move/from16 v22, v11

    move/from16 v11, v19

    move-object/from16 v14, p6

    .line 54
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/measurement/zzja;->zzs(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    if-eq v0, v15, :cond_34c

    :goto_332
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v2, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v18

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v1, v22

    move-object/from16 v10, v26

    goto/16 :goto_1a

    :cond_34c
    move/from16 v6, p5

    move v2, v0

    goto :goto_380

    :cond_350
    move v15, v5

    move/from16 p3, v6

    move/from16 v18, v8

    move-object/from16 v26, v10

    move/from16 v25, v19

    move/from16 v4, v22

    move/from16 v19, v3

    move/from16 v22, v11

    const/16 v0, 0x32

    move/from16 v9, v19

    if-ne v9, v0, :cond_383

    const/4 v0, 0x2

    if-ne v7, v0, :cond_37d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v18

    move-wide v6, v12

    move-object/from16 v8, p6

    .line 55
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/measurement/zzja;->zzt(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    if-eq v0, v15, :cond_34c

    goto :goto_332

    :cond_37d
    :goto_37d
    move/from16 v6, p5

    move v2, v15

    :goto_380
    move/from16 v7, v22

    goto :goto_39d

    :cond_383
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v8, v4

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v22

    move/from16 v6, p3

    move-wide v10, v12

    move/from16 v12, v18

    move-object/from16 v13, p6

    .line 56
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/measurement/zzja;->zzu(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    if-eq v0, v15, :cond_34c

    goto :goto_332

    :goto_39d
    if-ne v7, v6, :cond_3ae

    if-eqz v6, :cond_3ae

    const v3, 0xfffff

    move-object/from16 v8, p0

    move-object/from16 v11, p1

    move/from16 v1, v20

    move/from16 v0, v21

    goto/16 :goto_421

    :cond_3ae
    move-object/from16 v8, p0

    .line 73
    iget-boolean v0, v8, Lcom/google/android/gms/internal/measurement/zzja;->zzh:Z

    if-eqz v0, :cond_3e7

    move-object/from16 v9, p6

    iget-object v0, v9, Lcom/google/android/gms/internal/measurement/zzge;->zzd:Lcom/google/android/gms/internal/measurement/zzhe;

    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhe;->zza()Lcom/google/android/gms/internal/measurement/zzhe;

    move-result-object v1

    if-eq v0, v1, :cond_3e2

    iget-object v0, v8, Lcom/google/android/gms/internal/measurement/zzja;->zzg:Lcom/google/android/gms/internal/measurement/zzix;

    iget-object v1, v9, Lcom/google/android/gms/internal/measurement/zzge;->zzd:Lcom/google/android/gms/internal/measurement/zzhe;

    move/from16 v10, p3

    .line 60
    invoke-virtual {v1, v0, v10}, Lcom/google/android/gms/internal/measurement/zzhe;->zzc(Lcom/google/android/gms/internal/measurement/zzix;I)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v0

    if-nez v0, :cond_3dc

    .line 61
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 62
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzgf;->zzn(I[BIILcom/google/android/gms/internal/measurement/zzjx;Lcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    move-object/from16 v11, p1

    goto :goto_3fc

    :cond_3dc
    move-object/from16 v11, p1

    .line 74
    move-object v0, v11

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhp;

    throw v17

    :cond_3e2
    move-object/from16 v11, p1

    move/from16 v10, p3

    goto :goto_3ed

    :cond_3e7
    move-object/from16 v11, p1

    move/from16 v10, p3

    move-object/from16 v9, p6

    .line 58
    :goto_3ed
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 59
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzgf;->zzn(I[BIILcom/google/android/gms/internal/measurement/zzjx;Lcom/google/android/gms/internal/measurement/zzge;)I

    move-result v0

    :goto_3fc
    move-object/from16 v12, p2

    move/from16 v13, p4

    move v1, v7

    move-object v15, v8

    move v2, v10

    move-object v14, v11

    move/from16 v3, v18

    move/from16 v5, v20

    move-object/from16 v10, v26

    move v11, v6

    move/from16 v6, v21

    goto/16 :goto_1a

    :cond_40f
    move/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v26, v10

    move v6, v11

    move-object v11, v14

    move-object v8, v15

    move v2, v0

    move v7, v1

    move/from16 v1, v20

    move/from16 v0, v21

    const v3, 0xfffff

    :goto_421
    if-eq v0, v3, :cond_429

    int-to-long v4, v0

    move-object/from16 v0, v26

    .line 63
    invoke-virtual {v0, v11, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_429
    iget v0, v8, Lcom/google/android/gms/internal/measurement/zzja;->zzk:I

    :goto_42b
    iget v1, v8, Lcom/google/android/gms/internal/measurement/zzja;->zzl:I

    if-ge v0, v1, :cond_456

    iget-object v1, v8, Lcom/google/android/gms/internal/measurement/zzja;->zzj:[I

    .line 64
    aget v1, v1, v0

    iget-object v4, v8, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 65
    aget v4, v4, v1

    .line 66
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzA(I)I

    move-result v4

    and-int/2addr v4, v3

    int-to-long v4, v4

    .line 67
    invoke-static {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_444

    goto :goto_44a

    .line 68
    :cond_444
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzx(I)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v5

    if-nez v5, :cond_44d

    :goto_44a
    add-int/lit8 v0, v0, 0x1

    goto :goto_42b

    .line 69
    :cond_44d
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzir;

    .line 70
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzw(I)Ljava/lang/Object;

    move-result-object v0

    .line 71
    check-cast v0, Lcom/google/android/gms/internal/measurement/zziq;

    throw v17

    :cond_456
    if-nez v6, :cond_462

    move/from16 v0, p4

    if-ne v2, v0, :cond_45d

    goto :goto_468

    .line 72
    :cond_45d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zze()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v0

    throw v0

    :cond_462
    move/from16 v0, p4

    if-gt v2, v0, :cond_469

    if-ne v7, v6, :cond_469

    :goto_468
    return v2

    .line 73
    :cond_469
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zze()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v0

    throw v0

    :pswitch_data_46e
    .packed-switch 0x0
        :pswitch_24f
        :pswitch_235
        :pswitch_212
        :pswitch_212
        :pswitch_1fb
        :pswitch_1da
        :pswitch_1c4
        :pswitch_1a4
        :pswitch_182
        :pswitch_154
        :pswitch_13d
        :pswitch_1fb
        :pswitch_105
        :pswitch_1c4
        :pswitch_1da
        :pswitch_eb
        :pswitch_bd
    .end packed-switch
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzge;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/measurement/zzge;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzi:Z

    if-eqz v0, :cond_8

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/measurement/zzja;->zzy(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzge;)I

    return-void

    :cond_8
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    .line 2
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzg(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzge;)I

    return-void
.end method

.method public final zzi(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzk:I

    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzl:I

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzj:[I

    .line 1
    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 3
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzir;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzir;->zzd()V

    .line 4
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzj:[I

    .line 5
    array-length v0, v0

    :goto_28
    if-ge v1, v0, :cond_37

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzm:Lcom/google/android/gms/internal/measurement/zzil;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzj:[I

    .line 6
    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzil;->zza(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzn:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zze(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzh:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzo:Lcom/google/android/gms/internal/measurement/zzhf;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhf;->zzc(Ljava/lang/Object;)V

    :cond_45
    return-void
.end method

.method public final zzj(Ljava/lang/Object;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    move v0, v8

    move v1, v9

    move v10, v1

    :goto_b
    iget v2, v6, Lcom/google/android/gms/internal/measurement/zzja;->zzk:I

    const/4 v11, 0x0

    const/4 v3, 0x1

    if-ge v10, v2, :cond_ec

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzja;->zzj:[I

    .line 1
    aget v12, v2, v10

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 2
    aget v13, v2, v12

    .line 3
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/zzja;->zzA(I)I

    move-result v14

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    add-int/lit8 v4, v12, 0x2

    .line 4
    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v3, v2

    if-eq v4, v0, :cond_3c

    if-eq v4, v8, :cond_37

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:Lsun/misc/Unsafe;

    int-to-long v1, v4

    .line 5
    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move/from16 v17, v0

    goto :goto_39

    :cond_37
    move/from16 v17, v1

    :goto_39
    move/from16 v16, v4

    goto :goto_40

    :cond_3c
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_40
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_57

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzja;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_57

    :cond_56
    return v9

    :cond_57
    :goto_57
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/zzja;->zzC(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_c9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_c9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_a1

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_90

    const/16 v1, 0x44

    if-eq v0, v1, :cond_90

    const/16 v1, 0x31

    if-eq v0, v1, :cond_a1

    const/16 v1, 0x32

    if-eq v0, v1, :cond_79

    goto/16 :goto_e4

    :cond_79
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 13
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzir;

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_89

    goto :goto_e4

    .line 20
    :cond_89
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/zzja;->zzw(I)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/measurement/zziq;

    throw v11

    .line 16
    :cond_90
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 17
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzz(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzji;)Z

    move-result v0

    if-nez v0, :cond_e4

    return v9

    :cond_a1
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 7
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e4

    .line 9
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v1

    move v2, v9

    .line 10
    :goto_b5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e4

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 12
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/measurement/zzji;->zzj(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c6

    return v9

    :cond_c6
    add-int/lit8 v2, v2, 0x1

    goto :goto_b5

    :cond_c9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzja;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 19
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/zzja;->zzz(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzji;)Z

    move-result v0

    if-nez v0, :cond_e4

    return v9

    :cond_e4
    :goto_e4
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_b

    :cond_ec
    iget-boolean v0, v6, Lcom/google/android/gms/internal/measurement/zzja;->zzh:Z

    if-nez v0, :cond_f1

    return v3

    :cond_f1
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzja;->zzo:Lcom/google/android/gms/internal/measurement/zzhf;

    .line 22
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhj;

    throw v11
.end method

.method public final zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzha;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzha;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzi:Z

    if-eqz v0, :cond_4dc

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzh:Z

    if-nez v0, :cond_4d5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_4cb

    .line 1
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzA(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 2
    aget v4, v4, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzja;->zzC(I)I

    move-result v5

    const/4 v6, 0x1

    const v7, 0xfffff

    packed-switch v5, :pswitch_data_4e0

    goto/16 :goto_4c7

    .line 102
    :pswitch_24
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 103
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 104
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v5

    .line 105
    invoke-virtual {p2, v4, v3, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzji;)V

    goto/16 :goto_4c7

    .line 106
    :pswitch_39
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 107
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzq(IJ)V

    goto/16 :goto_4c7

    .line 108
    :pswitch_4a
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 109
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zzp(II)V

    goto/16 :goto_4c7

    .line 110
    :pswitch_5b
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 111
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzd(IJ)V

    goto/16 :goto_4c7

    .line 112
    :pswitch_6c
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 113
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zzb(II)V

    goto/16 :goto_4c7

    .line 114
    :pswitch_7d
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 115
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zzg(II)V

    goto/16 :goto_4c7

    .line 116
    :pswitch_8e
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 117
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zzo(II)V

    goto/16 :goto_4c7

    .line 118
    :pswitch_9f
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 119
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgs;

    .line 120
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zzn(ILcom/google/android/gms/internal/measurement/zzgs;)V

    goto/16 :goto_4c7

    .line 121
    :pswitch_b2
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 122
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 123
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v5

    invoke-virtual {p2, v4, v3, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzji;)V

    goto/16 :goto_4c7

    .line 124
    :pswitch_c7
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 125
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/measurement/zzja;->zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzha;)V

    goto/16 :goto_4c7

    .line 126
    :pswitch_d8
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 127
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzH(Ljava/lang/Object;J)Z

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zzl(IZ)V

    goto/16 :goto_4c7

    .line 128
    :pswitch_e9
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 129
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zzk(II)V

    goto/16 :goto_4c7

    .line 130
    :pswitch_fa
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 131
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzj(IJ)V

    goto/16 :goto_4c7

    .line 132
    :pswitch_10b
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 133
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzF(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zzi(II)V

    goto/16 :goto_4c7

    .line 134
    :pswitch_11c
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 135
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzh(IJ)V

    goto/16 :goto_4c7

    .line 136
    :pswitch_12d
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 137
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzG(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzc(IJ)V

    goto/16 :goto_4c7

    .line 138
    :pswitch_13e
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 139
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzE(Ljava/lang/Object;J)F

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zze(IF)V

    goto/16 :goto_4c7

    .line 140
    :pswitch_14f
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 141
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzja;->zzD(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzf(ID)V

    goto/16 :goto_4c7

    :pswitch_160
    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 101
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p2, v4, v3, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzS(Lcom/google/android/gms/internal/measurement/zzha;ILjava/lang/Object;I)V

    goto/16 :goto_4c7

    .line 96
    :pswitch_16b
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 97
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 98
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 99
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v5

    .line 100
    invoke-static {v4, v3, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zzaa(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Lcom/google/android/gms/internal/measurement/zzji;)V

    goto/16 :goto_4c7

    .line 93
    :pswitch_180
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 94
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 95
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 96
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 90
    :pswitch_191
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 91
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 92
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 93
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 87
    :pswitch_1a2
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 88
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 89
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 90
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 84
    :pswitch_1b3
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 85
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 86
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 87
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 81
    :pswitch_1c4
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 82
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 83
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 84
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 78
    :pswitch_1d5
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 79
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 80
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 81
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 75
    :pswitch_1e6
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 76
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 77
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 78
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 72
    :pswitch_1f7
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 73
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 74
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 75
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 69
    :pswitch_208
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 70
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 71
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 72
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 66
    :pswitch_219
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 67
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 68
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 69
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 63
    :pswitch_22a
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 64
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 65
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 66
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 60
    :pswitch_23b
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 61
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 62
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 63
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 57
    :pswitch_24c
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 58
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 59
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 60
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 54
    :pswitch_25d
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 55
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 56
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 57
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 51
    :pswitch_26e
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 52
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 53
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 54
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 48
    :pswitch_27f
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 49
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 50
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 51
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 45
    :pswitch_290
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 46
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 48
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 42
    :pswitch_2a1
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 43
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 44
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 45
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 39
    :pswitch_2b2
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 40
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 42
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 36
    :pswitch_2c3
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 37
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 38
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 39
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 33
    :pswitch_2d4
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 34
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 35
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 36
    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzY(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;)V

    goto/16 :goto_4c7

    .line 29
    :pswitch_2e5
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 30
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 32
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v5

    .line 33
    invoke-static {v4, v3, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zzZ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Lcom/google/android/gms/internal/measurement/zzji;)V

    goto/16 :goto_4c7

    .line 26
    :pswitch_2fa
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 27
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 28
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 29
    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzX(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;)V

    goto/16 :goto_4c7

    .line 23
    :pswitch_30b
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 24
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 25
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 26
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 20
    :pswitch_31c
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 21
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 22
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 23
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 17
    :pswitch_32d
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 18
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 19
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 20
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 14
    :pswitch_33e
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 15
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 16
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 17
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 11
    :pswitch_34f
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 12
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 13
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 14
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 8
    :pswitch_360
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 9
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 10
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 11
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 5
    :pswitch_371
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 6
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 7
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 8
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 2
    :pswitch_382
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:[I

    .line 3
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 4
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 5
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzha;Z)V

    goto/16 :goto_4c7

    .line 142
    :pswitch_393
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 143
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 144
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v5

    .line 145
    invoke-virtual {p2, v4, v3, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzji;)V

    goto/16 :goto_4c7

    .line 146
    :pswitch_3a8
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 147
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 148
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzq(IJ)V

    goto/16 :goto_4c7

    .line 149
    :pswitch_3b9
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 150
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    .line 151
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zzp(II)V

    goto/16 :goto_4c7

    .line 152
    :pswitch_3ca
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 153
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 154
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzd(IJ)V

    goto/16 :goto_4c7

    .line 155
    :pswitch_3db
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 156
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    .line 157
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zzb(II)V

    goto/16 :goto_4c7

    .line 158
    :pswitch_3ec
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 159
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    .line 160
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zzg(II)V

    goto/16 :goto_4c7

    .line 161
    :pswitch_3fd
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 162
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    .line 163
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zzo(II)V

    goto/16 :goto_4c7

    .line 164
    :pswitch_40e
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 165
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgs;

    .line 166
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zzn(ILcom/google/android/gms/internal/measurement/zzgs;)V

    goto/16 :goto_4c7

    .line 167
    :pswitch_421
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 168
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 169
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzv(I)Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v5

    invoke-virtual {p2, v4, v3, v5}, Lcom/google/android/gms/internal/measurement/zzha;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzji;)V

    goto/16 :goto_4c7

    .line 170
    :pswitch_436
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 171
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/measurement/zzja;->zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzha;)V

    goto/16 :goto_4c7

    .line 172
    :pswitch_447
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 173
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzh(Ljava/lang/Object;J)Z

    move-result v3

    .line 174
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zzl(IZ)V

    goto/16 :goto_4c7

    .line 175
    :pswitch_458
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 176
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    .line 177
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zzk(II)V

    goto :goto_4c7

    .line 178
    :pswitch_468
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 179
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 180
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzj(IJ)V

    goto :goto_4c7

    .line 181
    :pswitch_478
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 182
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzd(Ljava/lang/Object;J)I

    move-result v3

    .line 183
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zzi(II)V

    goto :goto_4c7

    .line 184
    :pswitch_488
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 185
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 186
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzh(IJ)V

    goto :goto_4c7

    .line 187
    :pswitch_498
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 188
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 189
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzc(IJ)V

    goto :goto_4c7

    .line 190
    :pswitch_4a8
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 191
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzj(Ljava/lang/Object;J)F

    move-result v3

    .line 192
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzha;->zze(IF)V

    goto :goto_4c7

    .line 193
    :pswitch_4b8
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzK(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4c7

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 194
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkh;->zzl(Ljava/lang/Object;J)D

    move-result-wide v5

    .line 195
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzha;->zzf(ID)V

    :cond_4c7
    :goto_4c7
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_d

    :cond_4cb
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzn:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 196
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzha;)V

    return-void

    :cond_4d5
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzo:Lcom/google/android/gms/internal/measurement/zzhf;

    .line 197
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhj;

    const/4 p1, 0x0

    .line 198
    throw p1

    .line 199
    :cond_4dc
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzja;->zzR(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzha;)V

    return-void

    :pswitch_data_4e0
    .packed-switch 0x0
        :pswitch_4b8
        :pswitch_4a8
        :pswitch_498
        :pswitch_488
        :pswitch_478
        :pswitch_468
        :pswitch_458
        :pswitch_447
        :pswitch_436
        :pswitch_421
        :pswitch_40e
        :pswitch_3fd
        :pswitch_3ec
        :pswitch_3db
        :pswitch_3ca
        :pswitch_3b9
        :pswitch_3a8
        :pswitch_393
        :pswitch_382
        :pswitch_371
        :pswitch_360
        :pswitch_34f
        :pswitch_33e
        :pswitch_32d
        :pswitch_31c
        :pswitch_30b
        :pswitch_2fa
        :pswitch_2e5
        :pswitch_2d4
        :pswitch_2c3
        :pswitch_2b2
        :pswitch_2a1
        :pswitch_290
        :pswitch_27f
        :pswitch_26e
        :pswitch_25d
        :pswitch_24c
        :pswitch_23b
        :pswitch_22a
        :pswitch_219
        :pswitch_208
        :pswitch_1f7
        :pswitch_1e6
        :pswitch_1d5
        :pswitch_1c4
        :pswitch_1b3
        :pswitch_1a2
        :pswitch_191
        :pswitch_180
        :pswitch_16b
        :pswitch_160
        :pswitch_14f
        :pswitch_13e
        :pswitch_12d
        :pswitch_11c
        :pswitch_10b
        :pswitch_fa
        :pswitch_e9
        :pswitch_d8
        :pswitch_c7
        :pswitch_b2
        :pswitch_9f
        :pswitch_8e
        :pswitch_7d
        :pswitch_6c
        :pswitch_5b
        :pswitch_4a
        :pswitch_39
        :pswitch_24
    .end packed-switch
.end method
