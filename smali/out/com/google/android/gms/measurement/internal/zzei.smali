.class public final Lcom/google/android/gms/measurement/internal/zzei;
.super Lcom/google/android/gms/measurement/internal/zzgf;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.2"


# instance fields
.field private zza:C

.field private zzb:J

.field private zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzeg;

.field private final zze:Lcom/google/android/gms/measurement/internal/zzeg;

.field private final zzf:Lcom/google/android/gms/measurement/internal/zzeg;

.field private final zzg:Lcom/google/android/gms/measurement/internal/zzeg;

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzeg;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzeg;

.field private final zzj:Lcom/google/android/gms/measurement/internal/zzeg;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzeg;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzeg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfl;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgf;-><init>(Lcom/google/android/gms/measurement/internal/zzfl;)V

    const/4 p1, 0x0

    iput-char p1, p0, Lcom/google/android/gms/measurement/internal/zzei;->zza:C

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzb:J

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v1, 0x6

    .line 2
    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzeg;-><init>(Lcom/google/android/gms/measurement/internal/zzei;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzd:Lcom/google/android/gms/measurement/internal/zzeg;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v2, 0x1

    .line 3
    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzeg;-><init>(Lcom/google/android/gms/measurement/internal/zzei;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zze:Lcom/google/android/gms/measurement/internal/zzeg;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeg;

    .line 4
    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzeg;-><init>(Lcom/google/android/gms/measurement/internal/zzei;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzf:Lcom/google/android/gms/measurement/internal/zzeg;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v1, 0x5

    .line 5
    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzeg;-><init>(Lcom/google/android/gms/measurement/internal/zzei;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzg:Lcom/google/android/gms/measurement/internal/zzeg;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeg;

    .line 6
    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzeg;-><init>(Lcom/google/android/gms/measurement/internal/zzei;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzh:Lcom/google/android/gms/measurement/internal/zzeg;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeg;

    .line 7
    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzeg;-><init>(Lcom/google/android/gms/measurement/internal/zzei;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzi:Lcom/google/android/gms/measurement/internal/zzeg;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v1, 0x4

    .line 8
    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzeg;-><init>(Lcom/google/android/gms/measurement/internal/zzei;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzj:Lcom/google/android/gms/measurement/internal/zzeg;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v1, 0x3

    .line 9
    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzeg;-><init>(Lcom/google/android/gms/measurement/internal/zzei;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzk:Lcom/google/android/gms/measurement/internal/zzeg;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v1, 0x2

    .line 10
    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzeg;-><init>(Lcom/google/android/gms/measurement/internal/zzei;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzl:Lcom/google/android/gms/measurement/internal/zzeg;

    return-void
.end method

.method protected static zzl(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeh;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzeh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzo(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    if-nez p1, :cond_5

    move-object p1, v0

    .line 1
    :cond_5
    invoke-static {p0, p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzp(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p0, p3}, Lcom/google/android/gms/measurement/internal/zzei;->zzp(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-static {p0, p4}, Lcom/google/android/gms/measurement/internal/zzei;->zzp(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 6
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    .line 7
    :cond_21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, ", "

    if-nez p1, :cond_30

    .line 8
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 10
    :cond_30
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3d

    .line 11
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 13
    :cond_3d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_49

    .line 14
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_49
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zzp(ZLjava/lang/Object;)Ljava/lang/String;
    .registers 10
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_5

    return-object v0

    .line 1
    :cond_5
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 3
    :cond_14
    instance-of v1, p1, Ljava/lang/Long;

    const-string v2, "-"

    const/4 v3, 0x0

    if-eqz v1, :cond_98

    if-nez p0, :cond_22

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_22
    move-object p0, p1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v1, v4, v6

    if-gez v1, :cond_38

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_38
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2d

    if-ne p1, v1, :cond_45

    move-object v0, v2

    .line 8
    :cond_45
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-double v1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double p0, p0

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    add-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2b

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_98
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_a1

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_a1
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_f6

    .line 14
    check-cast p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_b4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_b8

    :cond_b4
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_b8
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p0, Lcom/google/android/gms/measurement/internal/zzfl;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzei;->zzz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v1, p1

    :goto_ca
    if-ge v3, v1, :cond_f1

    aget-object v2, p1, v3

    .line 18
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v4

    if-eqz v4, :cond_d5

    goto :goto_ee

    .line 19
    :cond_d5
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_ee

    .line 20
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    const-string p0, ": "

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_f1

    :cond_ee
    :goto_ee
    add-int/lit8 v3, v3, 0x1

    goto :goto_ca

    .line 24
    :cond_f1
    :goto_f1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :cond_f6
    instance-of v0, p1, Lcom/google/android/gms/measurement/internal/zzeh;

    if-eqz v0, :cond_101

    .line 26
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzeh;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeh;->zza(Lcom/google/android/gms/measurement/internal/zzeh;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_101
    if-eqz p0, :cond_104

    return-object v2

    .line 27
    :cond_104
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzq(Lcom/google/android/gms/measurement/internal/zzei;)C
    .registers 1

    iget-char p0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zza:C

    return p0
.end method

.method static synthetic zzr(Lcom/google/android/gms/measurement/internal/zzei;C)C
    .registers 2

    iput-char p1, p0, Lcom/google/android/gms/measurement/internal/zzei;->zza:C

    return p1
.end method

.method static synthetic zzs(Lcom/google/android/gms/measurement/internal/zzei;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzb:J

    return-wide v0
.end method

.method static synthetic zzt(Lcom/google/android/gms/measurement/internal/zzei;J)J
    .registers 3

    const-wide/32 p1, 0x9858

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzb:J

    return-wide p1
.end method

.method private static zzz(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    const/16 v0, 0x2e

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    return-object p0

    :cond_13
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final zza()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/measurement/internal/zzeg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzd:Lcom/google/android/gms/measurement/internal/zzeg;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzeg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zze:Lcom/google/android/gms/measurement/internal/zzeg;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzeg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzf:Lcom/google/android/gms/measurement/internal/zzeg;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzeg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzg:Lcom/google/android/gms/measurement/internal/zzeg;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzeg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzh:Lcom/google/android/gms/measurement/internal/zzeg;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzeg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzi:Lcom/google/android/gms/measurement/internal/zzeg;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzeg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzj:Lcom/google/android/gms/measurement/internal/zzeg;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzeg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzk:Lcom/google/android/gms/measurement/internal/zzeg;

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/measurement/internal/zzeg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzl:Lcom/google/android/gms/measurement/internal/zzeg;

    return-object v0
.end method

.method protected final zzm(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 15

    if-nez p2, :cond_18

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzei;->zzn()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_18

    const/4 p2, 0x0

    .line 2
    invoke-static {p2, p4, p5, p6, p7}, Lcom/google/android/gms/measurement/internal/zzei;->zzo(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzei;->zzn()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_18
    if-nez p3, :cond_58

    const/4 p2, 0x5

    if-lt p1, p2, :cond_58

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzj()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object p2

    const/4 p3, 0x6

    if-nez p2, :cond_33

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzei;->zzn()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Scheduler not set. Not logging error/warn"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgf;->zzu()Z

    move-result v0

    if-nez v0, :cond_43

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzei;->zzn()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Scheduler not initialized. Not logging error/warn"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_43
    const/16 p3, 0x9

    if-lt p1, p3, :cond_49

    const/16 p1, 0x8

    :cond_49
    move v2, p1

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzef;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzef;-><init>(Lcom/google/android/gms/measurement/internal/zzei;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzfi;->zzh(Ljava/lang/Runnable;)V

    :cond_58
    return-void
.end method

.method protected final zzn()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "logTagDoNotUseDirectly"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzc:Ljava/lang/String;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzt()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzc:Ljava/lang/String;

    goto :goto_22

    .line 6
    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzae;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzc:Ljava/lang/String;

    .line 4
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzc:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzc:Ljava/lang/String;

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_2b
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2b

    throw v0
.end method
