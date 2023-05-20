.class public final Lcom/google/android/gms/measurement/internal/zzaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.2"


# static fields
.field public static final zza:Lcom/google/android/gms/measurement/internal/zzaf;


# instance fields
.field private final zzb:Ljava/lang/Boolean;

.field private final zzc:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaf;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/zzaf;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Ljava/lang/Boolean;

    return-void
.end method

.method public static zza(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    const-string v0, "ad_storage"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzo(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_f

    goto :goto_10

    :cond_f
    return-object v0

    :cond_10
    :goto_10
    const-string v0, "analytics_storage"

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzo(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1f

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzb(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzaf;
    .registers 4

    if-nez p0, :cond_5

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    return-object p0

    :cond_5
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaf;

    const-string v1, "ad_storage"

    .line 1
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzo(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "analytics_storage"

    .line 2
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzo(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/zzaf;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_25

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_14

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzp(C)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_15

    :cond_14
    move-object v1, v0

    .line 3
    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_26

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzp(C)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_26

    :cond_25
    move-object v1, v0

    :cond_26
    :goto_26
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzaf;

    .line 5
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzaf;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method static zzj(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 3

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_6

    return-object p0

    .line 1
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    :cond_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static zzm(II)Z
    .registers 2

    if-gt p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method static final zzn(Ljava/lang/Boolean;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x2

    return p0
.end method

.method private static zzo(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "granted"

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_f
    const-string v1, "denied"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1a
    return-object v0
.end method

.method private static zzp(C)Ljava/lang/Boolean;
    .registers 3

    const/16 v0, 0x2d

    const/4 v1, 0x0

    if-eq p0, v0, :cond_14

    const/16 v0, 0x30

    if-eq p0, v0, :cond_11

    const/16 v0, 0x31

    if-eq p0, v0, :cond_e

    return-object v1

    :cond_e
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_11
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_14
    return-object v1
.end method

.method private static final zzq(Ljava/lang/Boolean;)C
    .registers 1

    if-nez p0, :cond_5

    const/16 p0, 0x2d

    return p0

    .line 1
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_e

    const/16 p0, 0x31

    return p0

    :cond_e
    const/16 p0, 0x30

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/measurement/internal/zzaf;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzaf;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/Boolean;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzn(Ljava/lang/Boolean;)I

    move-result v0

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzn(Ljava/lang/Boolean;)I

    move-result v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Ljava/lang/Boolean;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzn(Ljava/lang/Boolean;)I

    move-result v0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzn(Ljava/lang/Boolean;)I

    move-result p1

    if-ne v0, p1, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/Boolean;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzn(Ljava/lang/Boolean;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Ljava/lang/Boolean;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzn(Ljava/lang/Boolean;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConsentSettings: "

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "adStorage="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/Boolean;

    const-string v2, "denied"

    const-string v3, "granted"

    const-string v4, "uninitialized"

    const/4 v5, 0x1

    if-nez v1, :cond_1b

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 4
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v5, v1, :cond_23

    move-object v1, v2

    goto :goto_24

    :cond_23
    move-object v1, v3

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    const-string v1, ", analyticsStorage="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Ljava/lang/Boolean;

    if-nez v1, :cond_34

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 7
    :cond_34
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v5, v1, :cond_3b

    goto :goto_3c

    :cond_3b
    move-object v2, v3

    :goto_3c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :goto_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "G1"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/Boolean;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzq(Ljava/lang/Boolean;)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Ljava/lang/Boolean;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzq(Ljava/lang/Boolean;)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzf()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public final zzg()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzh()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/measurement/internal/zzaf;)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_e

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1d

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1c

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, v0, :cond_1b

    goto :goto_1d

    :cond_1b
    return v3

    :cond_1c
    move v2, v3

    :cond_1d
    :goto_1d
    return v2
.end method

.method public final zzk(Lcom/google/android/gms/measurement/internal/zzaf;)Lcom/google/android/gms/measurement/internal/zzaf;
    .registers 5

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaf;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/Boolean;

    .line 1
    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzj(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Ljava/lang/Boolean;

    .line 2
    invoke-static {v2, p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzj(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzaf;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final zzl(Lcom/google/android/gms/measurement/internal/zzaf;)Lcom/google/android/gms/measurement/internal/zzaf;
    .registers 5

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaf;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    .line 1
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/Boolean;

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Ljava/lang/Boolean;

    if-nez v2, :cond_e

    .line 2
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Ljava/lang/Boolean;

    :cond_e
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0
.end method
